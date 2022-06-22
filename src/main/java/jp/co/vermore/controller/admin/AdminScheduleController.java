package jp.co.vermore.controller.admin;

import jp.co.vermore.common.Constant;
import jp.co.vermore.common.DatatablesJsonObject;
import jp.co.vermore.common.mvc.BaseController;
import jp.co.vermore.common.util.DateUtil;
import jp.co.vermore.entity.EntryMail;
import jp.co.vermore.entity.Schedule;
import jp.co.vermore.entity.Pic;
import jp.co.vermore.form.admin.ScheduleForm;
import jp.co.vermore.form.admin.ScheduleListForm;
import jp.co.vermore.service.AWSService;
import jp.co.vermore.service.EntryService;
import jp.co.vermore.service.ScheduleService;
import jp.co.vermore.service.PicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * ScheduleAdminController
 * Created by wubin.
 * <p>
 * DateTime: 2018/03/03 11:13
 * Copyright: sLab, Corp
 */
@Controller
public class AdminScheduleController extends BaseController {

    @Autowired
    private ScheduleService scheduleService;

    @Autowired
    private EntryService entryService;

    @Autowired
    private AWSService awsService;

    @Autowired
    private PicService picService;

    @Autowired
    PlatformTransactionManager txManager;

    @RequestMapping(value = "/admin/schedule/list/", method = RequestMethod.GET)
    public String scheduleAll(Model model,HttpServletRequest request) {

        int errorCode = 0;
        if(!request.getSession().isNew()){
            if(request.getSession().getAttribute("error") != null && request.getSession().getAttribute("error") != ""){
                errorCode = (int)request.getSession().getAttribute("error");
                request.getSession().setAttribute("error",0);
            }
        }
        model.addAttribute("errorCode", errorCode);

        List<Schedule> schedule = scheduleService.getScheduleAll();
        ScheduleForm form = new ScheduleForm();
        model.addAttribute("scheduleDeleteForm", form);
        model.addAttribute("schedule_all", schedule);
        return "admin/scheduleList";
    }

    @RequestMapping(value = "/admin/schedule/list/", method = RequestMethod.POST)
    @ResponseBody
    public DatatablesJsonObject scheduleList(@RequestBody ScheduleListForm form){
        logger.debug("----1----");
        // set order statement
        if(form.getOrder().size() > 0
                && form.getColumns().get(form.getOrder().get(0).getColumn()).getName() != null
                && form.getColumns().get(form.getOrder().get(0).getColumn()).getName().length() > 0){
            form.setOrderStatement(form.getColumns().get(form.getOrder().get(0).getColumn()).getName() + " " + form.getOrder().get(0).getDir());
            logger.debug("----2----order statement="+form.getOrderStatement());
        }else{
            form.setOrderStatement("id");
            logger.debug("----2----order statement="+form.getOrderStatement());
        }
        logger.debug("----3----");

        // query data
        List<Schedule> dataList = scheduleService.getScheduleAllByCondition(form);

        for(Schedule schedule:dataList){
            int type =0;
            //it's my faults
            if(schedule.getType() == Constant.SCHEDULE_TYPE.WORK){
                type =  Constant.SCHEDULE_TYPE.FAMILY;
            }else if(schedule.getType() == Constant.SCHEDULE_TYPE.FAMILY){
                type = Constant.SCHEDULE_TYPE.WORK;
            }
            EntryMail entity = entryService.getEntryMailByEntryIdAndType( schedule.getId(),type);
            if(entity != null){
                schedule.setEntryType(1);
            }else{
                schedule.setEntryType(0);
            }
        }

        int totalCountFiltered = scheduleService.getScheduleCountByCondition(form);
        int totalCount = scheduleService.getScheduleCount();
        logger.debug("----4----data count="+dataList.size());
        logger.debug("----5----total filtered="+totalCountFiltered);
        logger.debug("----6----total count="+totalCount);
        logger.debug("----7----page="+form.getDraw());

        // return json data
        DatatablesJsonObject jsonparse = new DatatablesJsonObject();
        jsonparse.setDraw(form.getDraw());
        jsonparse.setRecordsFiltered(totalCountFiltered);
        jsonparse.setRecordsTotal(totalCount);
        jsonparse.setData(dataList);
        logger.debug("----8----");
        return jsonparse;
    }

    @RequestMapping(value = "/admin/schedule/regist/", method = RequestMethod.GET)
    public String scheduleInsert(Model model) {
        ScheduleForm form = new ScheduleForm();
        model.addAttribute("scheduleForm", form);
        return "admin/scheduleRegist";
    }

    @RequestMapping(value = "/admin/schedule/regist/", method = RequestMethod.POST)
    public String scheduleInsert(@ModelAttribute ScheduleForm form ,HttpServletRequest request) {
        HttpSession session = request.getSession();
        // トランザクション管理の開始
        DefaultTransactionDefinition txDefinition = new DefaultTransactionDefinition();
        txDefinition.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
        TransactionStatus txStatus = txManager.getTransaction(txDefinition);

        try {
            long scheduleId = scheduleService.insertSchedule(form);
            scheduleService.insertDetailSchedule(form,scheduleId);
            MultipartFile[] top = form.getPicFile1();
            MultipartFile[] foot = form.getPicFile2();

            if(!form.getPicFile1()[0].isEmpty()) {
                Pic topPic = new Pic();
                if (top.length>0) {
                    for(int i = 0 ; i < top.length; i++){
                        topPic.setPicUrl(awsService.postFile(top[i]));
                        topPic.setItemId(scheduleId);
                        topPic.setItemType(Constant.EVENT_PIC_TYPE.SCHEDULE_TOP);
                        picService.insertPic(topPic);
                    }
                }
            }

            if(!form.getPicFile2()[0].isEmpty()) {
                Pic footPic = new Pic();
                if (foot.length>0) {
                    for(int i = 0 ; i < foot.length; i++){
                        footPic.setPicUrl(awsService.postFile(foot[i]));
                        footPic.setItemId(scheduleId);
                        footPic.setItemType(Constant.EVENT_PIC_TYPE.SCHEDULE_FOOT);
                        picService.insertPic(footPic);
                    }
                }
            }

            txManager.commit(txStatus);
            session.setAttribute("error",0);
        } catch (Exception e) {
            txManager.rollback(txStatus);
            session.setAttribute("error",1);
            logger.error("insert schedule failed!, error=" + e.getMessage());
            logger.error("insert schedule failed!, error=" + e.toString());
            e.printStackTrace();
        }
        return "redirect:/admin/schedule/list/";
    }

    @RequestMapping(value = "/admin/schedule/delete/", method = RequestMethod.POST)
    public String scheduleDetailDelete(@ModelAttribute ScheduleForm form,HttpServletRequest request) {
        HttpSession session = request.getSession();
        // トランザクション管理の開始
        DefaultTransactionDefinition txDefinition = new DefaultTransactionDefinition();
        txDefinition.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
        TransactionStatus txStatus = txManager.getTransaction(txDefinition);

        try {
            scheduleService.deleteSchedule(form);
            scheduleService.deleteDetailSchedule(form);
            picService.deleteSchedulePicUrl(form.getId(),Constant.EVENT_PIC_TYPE.SCHEDULE_TOP);
            picService.deleteSchedulePicUrl(form.getId(),Constant.EVENT_PIC_TYPE.SCHEDULE_FOOT);
            txManager.commit(txStatus);
            session.setAttribute("error",0);
        } catch (Exception e) {
            txManager.rollback(txStatus);
            session.setAttribute("error",1);
            logger.error("delete schedule failed!, error=" + e.getMessage());
            logger.error("delete schedule failed!, error=" + e.toString());
            e.printStackTrace();
        }
        return "redirect:/admin/schedule/list/";
    }

    @RequestMapping(value = "/admin/schedule/edit/{id}/", method = RequestMethod.GET)
    public String scheduleUpdate(Model model , @PathVariable long id) {
        ScheduleForm scheduleForm = new ScheduleForm();
        List<Schedule> list = scheduleService.getScheduleList(id);
        String detail = scheduleService.getScheduleDetail(id);

        List<Pic> topPicList = picService.getPic(id,Constant.EVENT_PIC_TYPE.SCHEDULE_TOP);
        List<String> topList = new ArrayList<String>();
        for(Pic pic:topPicList){
            topList.add(pic.getPicUrl());
        }

        List<Pic> footPicList = picService.getPic(id,Constant.EVENT_PIC_TYPE.SCHEDULE_FOOT);
        List<String> footList = new ArrayList<String>();
        for(Pic pic:footPicList){
            footList.add(pic.getPicUrl());
        }

        scheduleForm.setPicUrl1(topList);
        scheduleForm.setPicUrl2(footList);

        if(list != null && list.size() > 0){
            scheduleForm.setId(list.get(0).getId());
            scheduleForm.setDetail(detail);
            scheduleForm.setTitle(list.get(0).getTitle());
            scheduleForm.setType(list.get(0).getType());
            scheduleForm.setExcerpt(list.get(0).getExcerpt());
            scheduleForm.setPublishStart(DateUtil.dateToStringyyyy_MM_dd_HH_mm(list.get(0).getPublishStart()));
            scheduleForm.setPublishEnd(DateUtil.dateToStringyyyy_MM_dd_HH_mm(list.get(0).getPublishEnd()));
            String date = DateUtil.dateToStringyyyy_MM_dd_HH_mm(list.get(0).getDate());
//            scheduleForm.setDate(date.replace(" ", "T"));
            scheduleForm.setDate(date);
            scheduleForm.setSortScore(list.get(0).getSortScore());

            model.addAttribute("scheduleForm", scheduleForm);
            return "admin/scheduleEdit";
        }else {
            return "redirect:/admin/schedule/list/";
        }
    }

    @RequestMapping(value = "/admin/schedule/update/", method = RequestMethod.POST)
    public String scheduleUpdate1(@ModelAttribute ScheduleForm form,HttpServletRequest request) {
        HttpSession session = request.getSession();
        // トランザクション管理の開始
        DefaultTransactionDefinition txDefinition = new DefaultTransactionDefinition();
        txDefinition.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
        TransactionStatus txStatus = txManager.getTransaction(txDefinition);

        try {
            List<String> picUrl1 = form.getPicUrl1();
            scheduleService.updateSchedule(form);
            scheduleService.updateDetailSchedule(form);

            if(form.getPicUrl1().size()==0 && form.getPicFile1()[0].isEmpty()){
                picService.deleteSchedulePicUrl(form.getId(),Constant.EVENT_PIC_TYPE.SCHEDULE_TOP);
            }

            if(form.getPicUrl2().size()==0 && form.getPicFile2()[0].isEmpty()){
                picService.deleteSchedulePicUrl(form.getId(),Constant.EVENT_PIC_TYPE.SCHEDULE_FOOT);
            }

            if(!form.getPicFile1()[0].isEmpty()) {
                picService.deleteSchedulePicUrl(form.getId(),Constant.EVENT_PIC_TYPE.SCHEDULE_TOP);
                MultipartFile[] top = form.getPicFile1();
                Pic topPic = new Pic();
                if (top.length>0) {
                    for(int i = 0 ; i < top.length; i++){
                        topPic.setPicUrl(awsService.postFile(top[i]));
                        topPic.setItemId(form.getId());
                        topPic.setItemType(Constant.EVENT_PIC_TYPE.SCHEDULE_TOP);
                        picService.insertPic(topPic);
                    }
                }
            }

            if(!form.getPicFile2()[0].isEmpty()){
                picService.deleteSchedulePicUrl(form.getId(),Constant.EVENT_PIC_TYPE.SCHEDULE_FOOT);
                MultipartFile[] foot = form.getPicFile2();
                Pic footPic = new Pic();
                if (foot.length>0) {
                    for(int i = 0 ; i < foot.length; i++){
                        footPic.setPicUrl(awsService.postFile(foot[i]));
                        footPic.setItemId(form.getId());
                        footPic.setItemType(Constant.EVENT_PIC_TYPE.SCHEDULE_FOOT);
                        picService.insertPic(footPic);
                    }
                }
            }

            txManager.commit(txStatus);
            session.setAttribute("error",0);
        } catch (Exception e) {
            txManager.rollback(txStatus);
            session.setAttribute("error",1);
            logger.error("update schedule failed!, error=" + e.getMessage());
            logger.error("update schedule failed!, error=" + e.toString());
            e.printStackTrace();
        }
        return "redirect:/admin/schedule/list/";
    }
}
