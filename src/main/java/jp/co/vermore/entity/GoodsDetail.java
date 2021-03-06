package jp.co.vermore.entity;

import jp.co.vermore.common.mvc.BaseEntity;

import java.util.Date;

public class GoodsDetail extends BaseEntity {

    private Long id;

    private Long goodsId;

    private String name;

    private String brand;

    private String title;

    private String picUrl1;

    private String picUrl2;

    private String picUrl3;

    private String picUrl4;

    private String picUrl5;

    private String picUrl6;

    private String picUrl7;

    private String picUrl8;

    private String picUrl9;

    private String picUrl10;

    private String desc1;

    private String desc2;

    private String desc3;

    private Integer price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_detail.publish_start
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    private Date publishStart;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_detail.publish_end
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    private Date publishEnd;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_detail.create_datetime
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    private Date createDatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_detail.update_datetime
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    private Date updateDatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_detail.del_flg
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    private Boolean delFlg;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column goods_detail.note
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    private String note;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.id
     *
     * @return the value of goods_detail.id
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.id
     *
     * @param id the value for goods_detail.id
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setId(Long id) {
        this.id = id;
    }



    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.name
     *
     * @return the value of goods_detail.name
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.name
     *
     * @param name the value for goods_detail.name
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.title
     *
     * @return the value of goods_detail.title
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.title
     *
     * @param title the value for goods_detail.title
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.pic_url1
     *
     * @return the value of goods_detail.pic_url1
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public String getPicUrl1() {
        return picUrl1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.pic_url1
     *
     * @param picUrl1 the value for goods_detail.pic_url1
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setPicUrl1(String picUrl1) {
        this.picUrl1 = picUrl1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.pic_url2
     *
     * @return the value of goods_detail.pic_url2
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public String getPicUrl2() {
        return picUrl2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.pic_url2
     *
     * @param picUrl2 the value for goods_detail.pic_url2
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setPicUrl2(String picUrl2) {
        this.picUrl2 = picUrl2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.pic_url3
     *
     * @return the value of goods_detail.pic_url3
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public String getPicUrl3() {
        return picUrl3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.pic_url3
     *
     * @param picUrl3 the value for goods_detail.pic_url3
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setPicUrl3(String picUrl3) {
        this.picUrl3 = picUrl3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.pic_url4
     *
     * @return the value of goods_detail.pic_url4
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public String getPicUrl4() {
        return picUrl4;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.pic_url4
     *
     * @param picUrl4 the value for goods_detail.pic_url4
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setPicUrl4(String picUrl4) {
        this.picUrl4 = picUrl4;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.pic_url5
     *
     * @return the value of goods_detail.pic_url5
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public String getPicUrl5() {
        return picUrl5;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.pic_url5
     *
     * @param picUrl5 the value for goods_detail.pic_url5
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setPicUrl5(String picUrl5) {
        this.picUrl5 = picUrl5;
    }



    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.price
     *
     * @return the value of goods_detail.price
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public Integer getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.price
     *
     * @param price the value for goods_detail.price
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setPrice(Integer price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.publish_start
     *
     * @return the value of goods_detail.publish_start
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public Date getPublishStart() {
        return publishStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.publish_start
     *
     * @param publishStart the value for goods_detail.publish_start
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setPublishStart(Date publishStart) {
        this.publishStart = publishStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.publish_end
     *
     * @return the value of goods_detail.publish_end
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public Date getPublishEnd() {
        return publishEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.publish_end
     *
     * @param publishEnd the value for goods_detail.publish_end
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setPublishEnd(Date publishEnd) {
        this.publishEnd = publishEnd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.create_datetime
     *
     * @return the value of goods_detail.create_datetime
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public Date getCreateDatetime() {
        return createDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.create_datetime
     *
     * @param createDatetime the value for goods_detail.create_datetime
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.update_datetime
     *
     * @return the value of goods_detail.update_datetime
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.update_datetime
     *
     * @param updateDatetime the value for goods_detail.update_datetime
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.del_flg
     *
     * @return the value of goods_detail.del_flg
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public Boolean getDelFlg() {
        return delFlg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.del_flg
     *
     * @param delFlg the value for goods_detail.del_flg
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setDelFlg(Boolean delFlg) {
        this.delFlg = delFlg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column goods_detail.note
     *
     * @return the value of goods_detail.note
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public String getNote() {
        return note;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column goods_detail.note
     *
     * @param note the value for goods_detail.note
     *
     * @mbggenerated Tue Mar 06 17:12:42 CST 2018
     */
    public void setNote(String note) {
        this.note = note;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getPicUrl6() {
        return picUrl6;
    }

    public void setPicUrl6(String picUrl6) {
        this.picUrl6 = picUrl6;
    }

    public String getPicUrl7() {
        return picUrl7;
    }

    public void setPicUrl7(String picUrl7) {
        this.picUrl7 = picUrl7;
    }

    public String getPicUrl8() {
        return picUrl8;
    }

    public void setPicUrl8(String picUrl8) {
        this.picUrl8 = picUrl8;
    }

    public String getPicUrl9() {
        return picUrl9;
    }

    public void setPicUrl9(String picUrl9) {
        this.picUrl9 = picUrl9;
    }

    public String getPicUrl10() {
        return picUrl10;
    }

    public void setPicUrl10(String picUrl10) {
        this.picUrl10 = picUrl10;
    }

    public String getDesc1() {
        return desc1;
    }

    public void setDesc1(String desc1) {
        this.desc1 = desc1;
    }

    public String getDesc2() {
        return desc2;
    }

    public void setDesc2(String desc2) {
        this.desc2 = desc2;
    }

    public String getDesc3() {
        return desc3;
    }

    public void setDesc3(String desc3) {
        this.desc3 = desc3;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }
}