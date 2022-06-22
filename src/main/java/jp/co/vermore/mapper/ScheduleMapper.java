package jp.co.vermore.mapper;

import jp.co.vermore.entity.Schedule;
import jp.co.vermore.form.admin.ScheduleListForm;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface ScheduleMapper {

    int insertSchedule(Schedule schedule);

    int deleteSchedule(Schedule schedule);

    int updateSchedule(Schedule schedule);

    Schedule getScheduleByUuid(String uuid);

    List<Schedule> getScheduleAll();

    List<Schedule> getScheduleAllForTop( String nowMin,String nextMin);

    List<Schedule> getScheduleJsonAll(int type,String nowMin,String nextMin,int limit, int offset);

    List<Schedule> getScheduleJsonAllByType(int type,String nowMin,String nextMin);

    Schedule getScheduleByIdAndType(long id,int type);

    List<Schedule> getScheduleEventAll(int type1,int type2,String tomorrow,String today,int limit, int offset);

    List<Schedule> getScheduleList(long id);

    List<Schedule> getSchedulePre(Date date, String nowMin, String nextMin);

    List<Schedule> getScheduleNext(Date date,String nowMin,String nextMin);

    List<Schedule> getScheduleCategory(int type,int limit,int offset);

    List<Schedule> getScheduleAllByCondition(ScheduleListForm form);

    int getScheduleCountByCondition(ScheduleListForm form);

    int getScheduleCount();

    List<Schedule> getStudioScheduleList(int type, int sortScore, String tomorrow,String today);

    List<Schedule> getStudioScheduleListAll(Byte type, int limit, int offset);

    List<Schedule> getStudioScheduleALL(int type);

    List<Schedule> getStudioAllByCondition(ScheduleListForm form);

    int getStudioCountByCondition(ScheduleListForm form);

    int getStudioCount();

    Schedule getScheduleById(@Param("id") Long id);

}