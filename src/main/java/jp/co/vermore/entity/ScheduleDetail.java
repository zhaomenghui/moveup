package jp.co.vermore.entity;

import jp.co.vermore.common.mvc.BaseEntity;

import java.util.Date;

public class ScheduleDetail extends BaseEntity {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.id
     *
     * @mbggenerated
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.schedule_id
     *
     * @mbggenerated
     */
    private Long scheduleId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.date
     *
     * @mbggenerated
     */
    private Date date;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.type
     *
     * @mbggenerated
     */
    private Byte type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.title
     *
     * @mbggenerated
     */
    private String title;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.publish_start
     *
     * @mbggenerated
     */
    private Date publishStart;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.publish_end
     *
     * @mbggenerated
     */
    private Date publishEnd;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.create_datetime
     *
     * @mbggenerated
     */
    private Date createDatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.update_datetime
     *
     * @mbggenerated
     */
    private Date updateDatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.del_flg
     *
     * @mbggenerated
     */
    private Boolean delFlg;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.note
     *
     * @mbggenerated
     */
    private String note;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule_detail.detail
     *
     * @mbggenerated
     */
    private String detail;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.id
     *
     * @return the value of schedule_detail.id
     *
     * @mbggenerated
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.id
     *
     * @param id the value for schedule_detail.id
     *
     * @mbggenerated
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.schedule_id
     *
     * @return the value of schedule_detail.schedule_id
     *
     * @mbggenerated
     */
    public Long getScheduleId() {
        return scheduleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.schedule_id
     *
     * @param scheduleId the value for schedule_detail.schedule_id
     *
     * @mbggenerated
     */
    public void setScheduleId(Long scheduleId) {
        this.scheduleId = scheduleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.date
     *
     * @return the value of schedule_detail.date
     *
     * @mbggenerated
     */
    public Date getDate() {
        return date;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.date
     *
     * @param date the value for schedule_detail.date
     *
     * @mbggenerated
     */
    public void setDate(Date date) {
        this.date = date;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.type
     *
     * @return the value of schedule_detail.type
     *
     * @mbggenerated
     */
    public Byte getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.type
     *
     * @param type the value for schedule_detail.type
     *
     * @mbggenerated
     */
    public void setType(Byte type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.title
     *
     * @return the value of schedule_detail.title
     *
     * @mbggenerated
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.title
     *
     * @param title the value for schedule_detail.title
     *
     * @mbggenerated
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.publish_start
     *
     * @return the value of schedule_detail.publish_start
     *
     * @mbggenerated
     */
    public Date getPublishStart() {
        return publishStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.publish_start
     *
     * @param publishStart the value for schedule_detail.publish_start
     *
     * @mbggenerated
     */
    public void setPublishStart(Date publishStart) {
        this.publishStart = publishStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.publish_end
     *
     * @return the value of schedule_detail.publish_end
     *
     * @mbggenerated
     */
    public Date getPublishEnd() {
        return publishEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.publish_end
     *
     * @param publishEnd the value for schedule_detail.publish_end
     *
     * @mbggenerated
     */
    public void setPublishEnd(Date publishEnd) {
        this.publishEnd = publishEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.create_datetime
     *
     * @return the value of schedule_detail.create_datetime
     *
     * @mbggenerated
     */
    public Date getCreateDatetime() {
        return createDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.create_datetime
     *
     * @param createDatetime the value for schedule_detail.create_datetime
     *
     * @mbggenerated
     */
    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.update_datetime
     *
     * @return the value of schedule_detail.update_datetime
     *
     * @mbggenerated
     */
    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.update_datetime
     *
     * @param updateDatetime the value for schedule_detail.update_datetime
     *
     * @mbggenerated
     */
    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.del_flg
     *
     * @return the value of schedule_detail.del_flg
     *
     * @mbggenerated
     */
    public Boolean getDelFlg() {
        return delFlg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.del_flg
     *
     * @param delFlg the value for schedule_detail.del_flg
     *
     * @mbggenerated
     */
    public void setDelFlg(Boolean delFlg) {
        this.delFlg = delFlg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.note
     *
     * @return the value of schedule_detail.note
     *
     * @mbggenerated
     */
    public String getNote() {
        return note;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.note
     *
     * @param note the value for schedule_detail.note
     *
     * @mbggenerated
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule_detail.detail
     *
     * @return the value of schedule_detail.detail
     *
     * @mbggenerated
     */
    public String getDetail() {
        return detail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule_detail.detail
     *
     * @param detail the value for schedule_detail.detail
     *
     * @mbggenerated
     */
    public void setDetail(String detail) {
        this.detail = detail;
    }
}