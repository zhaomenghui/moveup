package jp.co.vermore.controller;

import jp.co.vermore.common.Constant;
import jp.co.vermore.common.JsonObject;
import jp.co.vermore.common.JsonStatus;
import jp.co.vermore.common.mvc.BaseController;
import jp.co.vermore.common.util.DateUtil;
import jp.co.vermore.entity.EntryMail;
import jp.co.vermore.entity.Schedule;
import jp.co.vermore.entity.ScheduleDetail;
import jp.co.vermore.entity.Pic;
import jp.co.vermore.jsonparse.ScheduleDetailJsonParse;
import jp.co.vermore.jsonparse.ScheduleJsonParse;
import jp.co.vermore.service.EntryService;
import jp.co.vermore.service.ScheduleService;
import jp.co.vermore.service.PicService;
import jp.co.vermore.service.WidgetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * ScheduleController
 * Created by wubin.
 * <p>
 * DateTime: 2018/03/03 11:13
 * Copyright: sLab, Corp
 */
@Controller
public class ScheduleController extends BaseController {

    @Autowired
    private ScheduleService scheduleService;

    @Autowired
    private EntryService entryService;

    @Autowired
    private PicService picService;

    @Autowired
    private WidgetService widgetService;

    @Value(value = "${hosturl}")
    private String hosturl;

    //eg: http://localhost:8081/moveup_war/api/Schedule/list/0/1/0/
    @RequestMapping(value = "/api/schedule/list/{type}/{limit}/{offset}/", method = RequestMethod.GET)
    @ResponseBody
    public JsonObject getScheduleList(@PathVariable int type,@PathVariable int limit, @PathVariable int offset) {
        List<Schedule> list = scheduleService.getScheduleAll(type,limit, offset);
        List<Schedule> countlist = scheduleService.getScheduleAllByType(type);
        List<ScheduleJsonParse> ejpList = new ArrayList<>();
        ejpList = list(ejpList, list);
        Map<String,Object> map = new HashMap<>();
        map.put("scheduleList",ejpList);
        map.put("count",countlist.size());
        jsonObject.setResultList(map);
        return jsonObject;
    }

    //eg:http://localhost:8081/moveup_war/api/Schedule/list/0/1/1/0/
    @RequestMapping(value = "/api/schedule/list/{type1}/{type2}/{limit}/{offset}/", method = RequestMethod.GET)
    @ResponseBody
    public JsonObject getScheduleEventList(@PathVariable int type1,@PathVariable int type2,@PathVariable int limit, @PathVariable int offset) {
        List<Schedule> list = scheduleService.getScheduleEventAll(type1,type2,limit, offset);
        List<ScheduleJsonParse> ejpList = new ArrayList<>();
        ejpList = list(ejpList, list);
        Map<String,Object> map = new HashMap<>();
        map.put("scheduleList",ejpList);
        map.put("count",ejpList.size());
        jsonObject.setResultList(map);
        return jsonObject;
    }

    //eg:http://localhost:8081/moveup_war/api/Schedule/detail/4hIZRgPJFu/
    @RequestMapping(value = "/api/schedule/detail/{uuid}/", method = RequestMethod.GET)
    @ResponseBody
    public JsonObject getScheduleDetailList(@PathVariable String uuid) {
        Schedule schedule = scheduleService.getScheduleByUuid(uuid);
        List<ScheduleDetailJsonParse> ejpList = new ArrayList<>();
        List<ScheduleDetail> list = scheduleService.getScheduleDetailAll(schedule.getId());
        ScheduleDetailJsonParse ejp = new ScheduleDetailJsonParse();
        if(list.size()>0){
            for (ScheduleDetail ed: list) {
                ejp.setScheduleId(ed.getScheduleId());
                ejp.setTitle(ed.getTitle());
                ejp.setDate(DateUtil.dateToStringyyyy_MM_dd(ed.getDate()));
                ejp.setTypeStr(widgetService.getScheduleType(ed.getType()));
                ejp.setType(ed.getType());
                ejp.setColor(widgetService.getScheduleColor(ed.getType()));
                ejp.setDetail(ed.getDetail());

                Pic topPic = new Pic();
                List<Pic> topPicList = picService.getPic(ed.getScheduleId(), Constant.EVENT_PIC_TYPE.SCHEDULE_TOP);
                List<String> topList = new ArrayList<String>();
                for(Pic pic:topPicList){
                    topList.add(pic.getPicUrl());
                }
                ejp.setTopPic(topList);

                List<Pic> footPicList = picService.getPic(ed.getScheduleId(),Constant.EVENT_PIC_TYPE.SCHEDULE_FOOT);
                List<String> footList = new ArrayList<String>();
                for(Pic pic:footPicList){
                    footList.add(pic.getPicUrl());
                }
                ejp.setFootPic(footList);
                List<Schedule> listPre = scheduleService.getSchedulePre(ed.getDate());
                List<Schedule> listNext = scheduleService.getScheduleNext(ed.getDate());
                List<ScheduleJsonParse> ejpListPre = new ArrayList<>();
                List<ScheduleJsonParse> ejpListNext = new ArrayList<>();
                ejpListPre = list(ejpListPre, listPre);
                ejpListNext = list(ejpListNext, listNext);
                if(listPre.size()>0){
                    ejpListPre.get(0).setColor(widgetService.getScheduleDetailColor(listPre.get(0).getType()));
                }
                if(listNext.size()>0){
                    ejpListNext.get(0).setColor(widgetService.getScheduleDetailColor(listNext.get(0).getType()));
                }
                ejp.setSchedulePre(ejpListPre);
                ejp.setScheduleNext(ejpListNext);
                ejpList.add(ejp);
            }

            int type =0;
            if(schedule.getType() == Constant.SCHEDULE_TYPE.WORK){
                type =  Constant.SCHEDULE_TYPE.FAMILY;
            }else if(schedule.getType() == Constant.SCHEDULE_TYPE.FAMILY){
                type = Constant.SCHEDULE_TYPE.WORK;
            }

            EntryMail entryMail = entryService.getEntryMailByEntryIdAndType(schedule.getId(),type);
            if(entryMail != null){
                Date startTime = entryMail.getPublishStart();
                Date endTime = entryMail.getPublishEnd();
                Date nowTime = new Date(System.currentTimeMillis());
                if(nowTime.getTime() >= startTime.getTime() && nowTime.getTime() <= endTime.getTime()){
                    ejp.setEntry("1");//応募可能
                }else{
                    ejp.setEntry(null);
                }
            }else {
                ejp.setEntry(null);
            }
            jsonObject.setResultList(ejpList);
        }else{
            jsonObject.setResultList(null);
        }
        return jsonObject;
    }

    private List<ScheduleJsonParse> list(List<ScheduleJsonParse> jpList, List<Schedule> list) {

        for (Schedule nd: list) {
            ScheduleJsonParse sjp = new ScheduleJsonParse();
            sjp.setUuid(nd.getUuid());
            sjp.setTitle(nd.getTitle());
            sjp.setDate(DateUtil.dateToStringyyyy_MM_dd(nd.getDate()));
            sjp.setType(widgetService.getScheduleType(nd.getType()));
            sjp.setColor(widgetService.getScheduleColor(nd.getType()));
            sjp.setExcerpt(nd.getExcerpt());
            jpList.add(sjp);
        }
        return jpList;
    }

    // Schedule detail for sns
    //eg:http://localhost:8081/moveup_war/sns/ScheduleDetail/4hIZRgPJFu/
    @RequestMapping(value = "/sns/ScheduleDetail/{uuid}/", method = RequestMethod.GET)
    public Object getScheduleSNSDetail(@PathVariable String uuid, Model model, HttpServletRequest hsr) {

        Schedule schedule = scheduleService.getScheduleByUuid(uuid);
        List<ScheduleDetail> scheduleDetailList = scheduleService.getScheduleDetailAll(schedule.getId());
        if(scheduleDetailList.size()>0){
            ScheduleDetail scheduleDetail = scheduleDetailList.get(0);

            model.addAttribute("title", scheduleDetail.getTitle());
            model.addAttribute("url", "https://www.japanmoveupwest.com" + "/scheduleDetail/" + schedule.getUuid() + "/");
            model.addAttribute("desc", schedule.getExcerpt());
            model.addAttribute("image",  "");
        }

        String userAgent = hsr.getHeader("User-Agent");
        logger.debug("-------user-agent=" + userAgent);

        String regex = "facebookexternalhit|Facebot|Twitterbot|Pinterest|Google.*snippet";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(userAgent);
        if (m.find()) {
            logger.debug("-------tosns");
            return "sns";
        } else {
            logger.debug("-------tourl");
            return "redirect:"+ hosturl + "/scheduleDetail/" + uuid + "/";
        }
    }

    // Schedule detail for sns
    //eg:http://localhost:8081/moveup_war/api/sns/ScheduleDetail/app/4hIZRgPJFu/
    @RequestMapping(value = "/api/sns/scheduleDetail/app/{uuid}/", method = RequestMethod.GET)
    @ResponseBody
    public JsonObject getScheduleDetailSNSForApp(@PathVariable String uuid) {

        Map<String, Object> urlMap = new HashMap<String, Object>();
        urlMap.put("twitter","https://twitter.com/share?url="+hosturl+"/scheduleDetail/"+uuid+"/");
        urlMap.put("facebook","https://www.facebook.com/sharer/sharer.php?u="+hosturl+"/scheduleDetail/"+uuid+"/");

        jsonObject.setResultList(urlMap);
        jsonObject.setStatus(JsonStatus.SUCCESS);
        return jsonObject;
    }
}