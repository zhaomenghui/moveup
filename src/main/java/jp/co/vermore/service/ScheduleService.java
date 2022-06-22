package jp.co.vermore.service;

import jp.co.vermore.common.Constant;
import jp.co.vermore.common.util.DateUtil;
import jp.co.vermore.common.util.StringUtil;
import jp.co.vermore.entity.Schedule;
import jp.co.vermore.entity.ScheduleDetail;
import jp.co.vermore.form.admin.ScheduleForm;
import jp.co.vermore.form.admin.ScheduleListForm;
import jp.co.vermore.mapper.ScheduleDetailMapper;
import jp.co.vermore.mapper.ScheduleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/**
 * ScheduleService
 * Created by wubin.
 * <p>
 * DateTime: 2018/03/03 11:13
 * Copyright: sLab, Corp
 */

@Service

public class ScheduleService {

    @Autowired
    private ScheduleMapper scheduleMapper;

    public Schedule getScheduleByUuid(String uuid) {
        Schedule entity = scheduleMapper.getScheduleByUuid(uuid);
        return entity;
    }

    public List<Schedule> getScheduleAll() {
        List<Schedule> scheduleList = scheduleMapper.getScheduleAll();
        return scheduleList;
    }

    public List<Schedule> getScheduleAllForTop() {
        String nowMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(0);
        String nextMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(1);
//        String now= DateUtil.dateToStringyyyy_MM_dd_HH_mm(new Date(System.currentTimeMillis()));
        List<Schedule> scheduleList = scheduleMapper.getScheduleAllForTop(nowMin,nextMin);
        return scheduleList;
    }

    public List<Schedule> getScheduleCategory(int type,int limit,int offset) {
        List<Schedule> scheduleList = scheduleMapper.getScheduleCategory(type,limit,offset);
        return scheduleList;
    }

    public List<Schedule>getSchedulePre(Date date) {
        String nowMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(0);
        String nextMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(1);
        List<Schedule> schedule = scheduleMapper.getSchedulePre(date,nowMin,nextMin);
        return schedule;
    }

    public List<Schedule> getScheduleNext(Date date) {
        String nowMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(0);
        String nextMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(1);
        List<Schedule> schedule = scheduleMapper.getScheduleNext(date,nowMin,nextMin);
        return schedule;
    }

    public List<Schedule> getScheduleAll(int type,int limit,int offset) {
        String nowMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(0);
        String nextMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(1);
        List<Schedule> scheduleList = scheduleMapper.getScheduleJsonAll(type,nowMin,nextMin,limit, offset);
        return scheduleList;
    }

    public List<Schedule> getScheduleAllByType(int type) {
        String nowMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(0);
        String nextMin= DateUtil.getTimeByMinuteYyyy_MM_ddHHmm(1);
        List<Schedule> scheduleList = scheduleMapper.getScheduleJsonAllByType(type,nowMin,nextMin);
        return scheduleList;
    }

    public Schedule getScheduleByIdAndType(long id,int type) {
        Schedule schedule = scheduleMapper.getScheduleByIdAndType(id,type);
        return schedule;
    }

    public List<Schedule> getScheduleEventAll(int type1,int type2,int limit,int offset) {
        String today = DateUtil.getYyyyMMdd();
        String tomorrow = DateUtil.getTomorrow();
        List<Schedule> scheduleList = scheduleMapper.getScheduleEventAll(type1,type2,tomorrow,today,limit, offset);
        return scheduleList;
    }

    private List<Schedule> convertTo(List<Schedule> demoList) {
        List<Schedule> resultList = new LinkedList<Schedule>();
        for (Schedule entity : demoList) {
            resultList.add(entity);
        }
        return resultList;
    }

    @Autowired
    private ScheduleMapper addScheduleMapper;

    public long insertSchedule(ScheduleForm scheduleForm) {
        Schedule schedule = new Schedule();
        String uuid = "";
        int flagUuid = 0;
        int cntSelect = 0;
        while (flagUuid != 1 && cntSelect < 100){
            uuid = StringUtil.getUuid();
            if (getScheduleByUuid(uuid) == null){
                flagUuid = 1;
            }
            cntSelect++;
        }

        schedule.setUuid(uuid);
        String date = scheduleForm.getDate();
        schedule.setDate(DateUtil.stringToDateyyyy_MM_dd_HH_mm(date.replace("T"," ")));
        schedule.setTitle(scheduleForm.getTitle());
        schedule.setType(scheduleForm.getType());
        schedule.setSortScore(scheduleForm.getSortScore());
        schedule.setExcerpt(scheduleForm.getExcerpt());
        if(scheduleForm.getPublishStart() == null || "".equals(scheduleForm.getPublishStart())){
            schedule.setPublishStart(DateUtil.getDefaultDate());
        }else{
            schedule.setPublishStart(DateUtil.stringToDateyyyy_MM_dd_HH_mm(scheduleForm.getPublishStart().replace("T"," ")));
        }
        if(scheduleForm.getPublishEnd() == null || "".equals(scheduleForm.getPublishEnd())){
            schedule.setPublishEnd(DateUtil.getDefaultPublishEnd());
        }else{
            schedule.setPublishEnd(DateUtil.stringToDateyyyy_MM_dd_HH_mm(scheduleForm.getPublishEnd().replace("T"," ")));
        }
        schedule.setCreateDatetime(new Date(System.currentTimeMillis()));
        schedule.setDelFlg(Boolean.FALSE);
        schedule.setNote(Constant.EMPTY_STRING);
        addScheduleMapper.insertSchedule(schedule);
        return schedule.getId();
    }

    public long insertStudioSchedule(ScheduleForm scheduleForm) {
        Schedule schedule = new Schedule();
        String uuid = "";
        int flagUuid = 0;
        int cntSelect = 0;
        while (flagUuid != 1 && cntSelect < 100){
            uuid = StringUtil.getUuid();
            if (getScheduleByUuid(uuid) == null){
                flagUuid = 1;
            }
            cntSelect++;
        }

        schedule.setUuid(uuid);
        String date = scheduleForm.getDate();
        schedule.setDate(DateUtil.stringToDateyyyy_MM_dd(date));
        schedule.setTitle(scheduleForm.getTitle());
        schedule.setType(scheduleForm.getType());
        schedule.setSortScore(scheduleForm.getSortScore());
        schedule.setExcerpt(scheduleForm.getExcerpt());
        if(scheduleForm.getPublishStart() == null || "".equals(scheduleForm.getPublishStart())){
            schedule.setPublishStart(DateUtil.getDefaultDate());
        }else{
            schedule.setPublishStart(DateUtil.stringToDateyyyy_MM_dd(scheduleForm.getPublishStart()));
        }
        if(scheduleForm.getPublishEnd() == null || "".equals(scheduleForm.getPublishEnd())){
            schedule.setPublishEnd(DateUtil.getDefaultPublishEnd());
        }else{
            schedule.setPublishEnd(DateUtil.stringToDateyyyy_MM_dd(scheduleForm.getPublishEnd()));
        }
        schedule.setCreateDatetime(new Date(System.currentTimeMillis()));
        schedule.setDelFlg(Boolean.FALSE);
        schedule.setNote(Constant.EMPTY_STRING);
        addScheduleMapper.insertSchedule(schedule);
        return schedule.getId();
    }

    @Autowired
    private ScheduleDetailMapper scheduleDetailMapper;

    public long insertDetailSchedule(ScheduleForm scheduleForm,long scheduleId) {
        ScheduleDetail scheduleDetail = new ScheduleDetail();
        scheduleDetail.setScheduleId(scheduleId);
        String date = scheduleForm.getDate();
        scheduleDetail.setDate(DateUtil.stringToDateyyyy_MM_dd_HH_mm(date.replace("T"," ")));
        scheduleDetail.setTitle(scheduleForm.getTitle());
        scheduleDetail.setType(scheduleForm.getType());
        scheduleDetail.setDetail(scheduleForm.getDetail());
        scheduleDetail.setCreateDatetime(new Date(System.currentTimeMillis()));
        scheduleDetail.setDelFlg(Boolean.FALSE);
        scheduleDetail.setNote(Constant.EMPTY_STRING);
        scheduleDetailMapper.insertDetailSchedule(scheduleDetail);
        return scheduleDetail.getId();
    }

    public long insertDetailStudioSchedule(ScheduleForm scheduleForm,long scheduleId) {
        ScheduleDetail scheduleDetail = new ScheduleDetail();
        scheduleDetail.setScheduleId(scheduleId);
        String date = scheduleForm.getDate();
        scheduleDetail.setDate(DateUtil.stringToDateyyyy_MM_dd(date));
        scheduleDetail.setTitle(scheduleForm.getTitle());
        scheduleDetail.setType(scheduleForm.getType());
        scheduleDetail.setDetail(scheduleForm.getDetail());
        scheduleDetail.setCreateDatetime(new Date(System.currentTimeMillis()));
        scheduleDetail.setDelFlg(Boolean.FALSE);
        scheduleDetail.setNote(Constant.EMPTY_STRING);
        scheduleDetailMapper.insertDetailSchedule(scheduleDetail);
        return scheduleDetail.getId();
    }

    public int deleteSchedule(ScheduleForm scheduleForm) {
        Schedule schedule = new Schedule();
        schedule.setId(scheduleForm.getId());
        schedule.setDelFlg(Boolean.TRUE);
        int count = scheduleMapper.deleteSchedule(schedule);
        System.out.println(count);
        return count;
    }

    public int deleteDetailSchedule(ScheduleForm scheduleForm) {
        ScheduleDetail scheduleDetail = new ScheduleDetail();
        scheduleDetail.setScheduleId(scheduleForm.getId());
        scheduleDetail.setDelFlg(Boolean.TRUE);
        int count = scheduleDetailMapper.deleteDetailSchedule(scheduleDetail);
        return count;
    }

    public int updateSchedule(ScheduleForm scheduleForm) {
        Schedule schedule = new Schedule();
        schedule.setId(scheduleForm.getId());
        String date = scheduleForm.getDate();
        schedule.setDate(DateUtil.stringToDateyyyy_MM_dd_HH_mm(date.replace("T"," ")));
        schedule.setTitle(scheduleForm.getTitle());
        schedule.setType(scheduleForm.getType());
        schedule.setSortScore(scheduleForm.getSortScore());
        schedule.setExcerpt(scheduleForm.getExcerpt());
        if(scheduleForm.getPublishStart() == null || "".equals(scheduleForm.getPublishStart())){
            schedule.setPublishStart(DateUtil.getDefaultDate());
        }else{
            schedule.setPublishStart(DateUtil.stringToDateyyyy_MM_dd_HH_mm(scheduleForm.getPublishStart().replace("T"," ")));
        }
        if(scheduleForm.getPublishEnd() == null || "".equals(scheduleForm.getPublishEnd())){
            schedule.setPublishEnd(DateUtil.getDefaultPublishEnd());
        }else{
            schedule.setPublishEnd(DateUtil.stringToDateyyyy_MM_dd_HH_mm(scheduleForm.getPublishEnd().replace("T"," ")));
        }
        schedule.setUpdateDatetime(new Date(System.currentTimeMillis()));
        schedule.setDelFlg(Boolean.FALSE);
        schedule.setNote(Constant.EMPTY_STRING);
        int count = scheduleMapper.updateSchedule(schedule);
        return count;
    }

    public int updateStudioSchedule(ScheduleForm scheduleForm) {
        Schedule schedule = new Schedule();
        schedule.setId(scheduleForm.getId());
        String date = scheduleForm.getDate();
        schedule.setDate(DateUtil.stringToDateyyyy_MM_dd(date));
        schedule.setTitle(scheduleForm.getTitle());
        schedule.setType(scheduleForm.getType());
        schedule.setSortScore(scheduleForm.getSortScore());
        schedule.setExcerpt(scheduleForm.getExcerpt());
        if(scheduleForm.getPublishStart() == null || "".equals(scheduleForm.getPublishStart())){
            schedule.setPublishStart(DateUtil.getDefaultDate());
        }else{
            schedule.setPublishStart(DateUtil.stringToDateyyyy_MM_dd(scheduleForm.getPublishStart()));
        }
        if(scheduleForm.getPublishEnd() == null || "".equals(scheduleForm.getPublishEnd())){
            schedule.setPublishEnd(DateUtil.getDefaultPublishEnd());
        }else{
            schedule.setPublishEnd(DateUtil.stringToDateyyyy_MM_dd(scheduleForm.getPublishEnd()));
        }
        schedule.setUpdateDatetime(new Date(System.currentTimeMillis()));
        schedule.setDelFlg(Boolean.FALSE);
        schedule.setNote(Constant.EMPTY_STRING);
        int count = scheduleMapper.updateSchedule(schedule);
        return count;
    }

    public int updateDetailSchedule(ScheduleForm scheduleForm) {
        ScheduleDetail scheduleDetail = new ScheduleDetail();
        scheduleDetail.setScheduleId(scheduleForm.getId());
        String date = scheduleForm.getDate();
        scheduleDetail.setDate(DateUtil.stringToDateyyyy_MM_dd_HH_mm(date.replace("T"," ")));
        scheduleDetail.setTitle(scheduleForm.getTitle());
        scheduleDetail.setType(scheduleForm.getType());
        scheduleDetail.setDetail(scheduleForm.getDetail());
        scheduleDetail.setUpdateDatetime(new Date(System.currentTimeMillis()));
        scheduleDetail.setDelFlg(Boolean.FALSE);
        scheduleDetail.setNote(Constant.EMPTY_STRING);
        int count = scheduleDetailMapper.updateDetailSchedule(scheduleDetail);
        return count;
    }

    public int updateDetailStudioSchedule(ScheduleForm scheduleForm) {
        ScheduleDetail scheduleDetail = new ScheduleDetail();
        scheduleDetail.setScheduleId(scheduleForm.getId());
        String date = scheduleForm.getDate();
        scheduleDetail.setDate(DateUtil.stringToDateyyyy_MM_dd(date));
        scheduleDetail.setTitle(scheduleForm.getTitle());
        scheduleDetail.setType(scheduleForm.getType());
        scheduleDetail.setDetail(scheduleForm.getDetail());
        scheduleDetail.setUpdateDatetime(new Date(System.currentTimeMillis()));
        scheduleDetail.setDelFlg(Boolean.FALSE);
        scheduleDetail.setNote(Constant.EMPTY_STRING);
        int count = scheduleDetailMapper.updateDetailSchedule(scheduleDetail);
        return count;
    }

    public List<Schedule> getScheduleList(long id) {
        List<Schedule> scheduleList = scheduleMapper.getScheduleList(id);
        return scheduleList;
    }

    public String getScheduleDetail(long id) {
        String detail = scheduleDetailMapper.getScheduleDetail(id);
        return detail;
    }

    public List<ScheduleDetail> getScheduleDetailAll(Long id) {
        List<ScheduleDetail> scheduleDetail = scheduleDetailMapper.getScheduleDetailAll(id);
        List<ScheduleDetail> resultList = convertToDetail(scheduleDetail);
        return resultList;
    }

    private List<ScheduleDetail> convertToDetail(List<ScheduleDetail> demoList) {
        List<ScheduleDetail> resultList = new LinkedList<ScheduleDetail>();
        for (ScheduleDetail entity : demoList) {
            resultList.add(entity);
        }
        return resultList;
    }

    public List<Schedule> getScheduleAllByCondition(ScheduleListForm form) {
        List<Schedule> schedule = scheduleMapper.getScheduleAllByCondition(form);
        return schedule;
    }

    public int getScheduleCountByCondition(ScheduleListForm form) {
        return scheduleMapper.getScheduleCountByCondition(form);
    }

    public int getScheduleCount() {
        return scheduleMapper.getScheduleCount();
    }

    public List<Schedule> getStudioScheduleALL(int type) {
        List<Schedule> schedule = scheduleMapper.getStudioScheduleALL(type);
        return schedule;
    }
}