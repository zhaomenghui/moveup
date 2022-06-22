package jp.co.vermore.entity;

import jp.co.vermore.common.mvc.BaseEntity;

import java.util.Date;

public class AdminUserRole extends BaseEntity {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin_user_role.id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin_user_role.user_id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    private Long userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin_user_role.role_id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    private Long roleId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin_user_role.create_datetime
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    private Date createDatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin_user_role.update_datetime
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    private Date updateDatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin_user_role.del_flg
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    private Boolean delFlg;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column admin_user_role.note
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    private String note;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin_user_role.id
     *
     * @return the value of admin_user_role.id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin_user_role.id
     *
     * @param id the value for admin_user_role.id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin_user_role.user_id
     *
     * @return the value of admin_user_role.user_id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin_user_role.user_id
     *
     * @param userId the value for admin_user_role.user_id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin_user_role.role_id
     *
     * @return the value of admin_user_role.role_id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public Long getRoleId() {
        return roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin_user_role.role_id
     *
     * @param roleId the value for admin_user_role.role_id
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin_user_role.create_datetime
     *
     * @return the value of admin_user_role.create_datetime
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public Date getCreateDatetime() {
        return createDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin_user_role.create_datetime
     *
     * @param createDatetime the value for admin_user_role.create_datetime
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin_user_role.update_datetime
     *
     * @return the value of admin_user_role.update_datetime
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin_user_role.update_datetime
     *
     * @param updateDatetime the value for admin_user_role.update_datetime
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin_user_role.del_flg
     *
     * @return the value of admin_user_role.del_flg
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public Boolean getDelFlg() {
        return delFlg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin_user_role.del_flg
     *
     * @param delFlg the value for admin_user_role.del_flg
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public void setDelFlg(Boolean delFlg) {
        this.delFlg = delFlg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column admin_user_role.note
     *
     * @return the value of admin_user_role.note
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public String getNote() {
        return note;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column admin_user_role.note
     *
     * @param note the value for admin_user_role.note
     *
     * @mbggenerated Mon Mar 26 13:14:11 CST 2018
     */
    public void setNote(String note) {
        this.note = note;
    }
}