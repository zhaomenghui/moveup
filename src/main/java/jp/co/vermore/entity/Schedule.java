package jp.co.vermore.entity;

import jp.co.vermore.common.mvc.BaseEntity;

import java.util.Date;

public class Schedule extends BaseEntity {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.id
     *
     * @mbggenerated
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.uuid
     *
     * @mbggenerated
     */
    private String uuid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.date
     *
     * @mbggenerated
     */
    private Date date;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.type
     *
     * @mbggenerated
     */
    private Byte type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.title
     *
     * @mbggenerated
     */
    private String title;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.sort_score
     *
     * @mbggenerated
     */
    private Long sortScore;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.excerpt
     *
     * @mbggenerated
     */
    private String excerpt;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.publish_start
     *
     * @mbggenerated
     */
    private Date publishStart;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.publish_end
     *
     * @mbggenerated
     */
    private Date publishEnd;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.create_datetime
     *
     * @mbggenerated
     */
    private Date createDatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.update_datetime
     *
     * @mbggenerated
     */
    private Date updateDatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.del_flg
     *
     * @mbggenerated
     */
    private Boolean delFlg;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column schedule.note
     *
     * @mbggenerated
     */
    private String note;


    private Integer entryType;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.id
     *
     * @return the value of schedule.id
     *
     * @mbggenerated
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.id
     *
     * @param id the value for schedule.id
     *
     * @mbggenerated
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.uuid
     *
     * @return the value of schedule.uuid
     *
     * @mbggenerated
     */
    public String getUuid() {
        return uuid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.uuid
     *
     * @param uuid the value for schedule.uuid
     *
     * @mbggenerated
     */
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.date
     *
     * @return the value of schedule.date
     *
     * @mbggenerated
     */
    public Date getDate() {
        return date;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.date
     *
     * @param date the value for schedule.date
     *
     * @mbggenerated
     */
    public void setDate(Date date) {
        this.date = date;
    }
    public Integer getEntryType() {
        return entryType;
    }

    public void setEntryType(Integer entryType) {
        this.entryType = entryType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.type
     *
     * @return the value of schedule.type
     *
     * @mbggenerated
     */
    public Byte getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.type
     *
     * @param type the value for schedule.type
     *
     * @mbggenerated
     */
    public void setType(Byte type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.title
     *
     * @return the value of schedule.title
     *
     * @mbggenerated
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.title
     *
     * @param title the value for schedule.title
     *
     * @mbggenerated
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.sort_score
     *
     * @return the value of schedule.sort_score
     *
     * @mbggenerated
     */
    public Long getSortScore() {
        return sortScore;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.sort_score
     *
     * @param sortScore the value for schedule.sort_score
     *
     * @mbggenerated
     */
    public void setSortScore(Long sortScore) {
        this.sortScore = sortScore;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.excerpt
     *
     * @return the value of schedule.excerpt
     *
     * @mbggenerated
     */
    public String getExcerpt() {
        return excerpt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.excerpt
     *
     * @param excerpt the value for schedule.excerpt
     *
     * @mbggenerated
     */
    public void setExcerpt(String excerpt) {
        this.excerpt = excerpt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.publish_start
     *
     * @return the value of schedule.publish_start
     *
     * @mbggenerated
     */
    public Date getPublishStart() {
        return publishStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.publish_start
     *
     * @param publishStart the value for schedule.publish_start
     *
     * @mbggenerated
     */
    public void setPublishStart(Date publishStart) {
        this.publishStart = publishStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.publish_end
     *
     * @return the value of schedule.publish_end
     *
     * @mbggenerated
     */
    public Date getPublishEnd() {
        return publishEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.publish_end
     *
     * @param publishEnd the value for schedule.publish_end
     *
     * @mbggenerated
     */
    public void setPublishEnd(Date publishEnd) {
        this.publishEnd = publishEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.create_datetime
     *
     * @return the value of schedule.create_datetime
     *
     * @mbggenerated
     */
    public Date getCreateDatetime() {
        return createDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.create_datetime
     *
     * @param createDatetime the value for schedule.create_datetime
     *
     * @mbggenerated
     */
    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.update_datetime
     *
     * @return the value of schedule.update_datetime
     *
     * @mbggenerated
     */
    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.update_datetime
     *
     * @param updateDatetime the value for schedule.update_datetime
     *
     * @mbggenerated
     */
    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.del_flg
     *
     * @return the value of schedule.del_flg
     *
     * @mbggenerated
     */
    public Boolean getDelFlg() {
        return delFlg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.del_flg
     *
     * @param delFlg the value for schedule.del_flg
     *
     * @mbggenerated
     */
    public void setDelFlg(Boolean delFlg) {
        this.delFlg = delFlg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column schedule.note
     *
     * @return the value of schedule.note
     *
     * @mbggenerated
     */
    public String getNote() {
        return note;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column schedule.note
     *
     * @param note the value for schedule.note
     *
     * @mbggenerated
     */
    public void setNote(String note) {
        this.note = note;
    }
}