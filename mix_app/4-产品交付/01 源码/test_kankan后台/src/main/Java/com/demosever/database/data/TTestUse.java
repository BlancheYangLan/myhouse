package com.demosever.database.data;

import javax.xml.crypto.Data;

/**
 * @cuthor luoxiaojiang
 * @createTime 2019年07月02日22:32:13
 * @Verson 1.0.0
 */
public class TTestUse {
    private Integer u_id;
    private String u_name;
    private String u_avatar;
    private String u_sex;
    private String u_data;
    private String u_address;
    private String u_signature;

    public String getU_avatar() {
        return u_avatar;
    }

    public void setU_avatar(String u_avatar) {
        this.u_avatar = u_avatar;
    }

    public String getU_signature() {
        return u_signature;
    }

    public void setU_signature(String u_signature) {
        this.u_signature = u_signature;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_sex() {
        return u_sex;
    }

    public void setU_sex(String u_sex) {
        this.u_sex = u_sex;
    }

    public String getU_data() {
        return u_data;
    }

    public void setU_data(String u_data) {
        this.u_data = u_data;
    }

    public String getU_address() {
        return u_address;
    }

    public void setU_address(String u_address) {
        this.u_address = u_address;
    }
}
