package jp.co.vermore.mapper;

import jp.co.vermore.entity.ScheduleDetail;
import jp.co.vermore.entity.ScheduleDetail;

import java.util.List;

public interface ScheduleDetailMapper {
    int insertDetailSchedule(ScheduleDetail scheduleDetail);

    int deleteDetailSchedule(ScheduleDetail scheduleDetail);

    int updateDetailSchedule(ScheduleDetail scheduleDetail);

    String getScheduleDetail(long id);

    List<ScheduleDetail> getScheduleDetailAll(Long id);

    ScheduleDetail getStudioScheduleDetail(Long id);
}