package com.demosever.database.data;

/**
 * @Author OuYang
 * @CreateTime 2019年06月28日 16:48:09
 * @Version 1.0.0
 */


public class Indexserver {
    private Integer Id;
    private String tvseriesImg;
    private String tvseriesName;
    private String tvseriesIntroduction;
    private String tvseriesBlues;
    private Integer vipId;
    private String vipJpg;
    private String bluesUrl;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getTvseriesImg() {
        return tvseriesImg;
    }

    public void setTvseriesImg(String tvseriesImg) {
        this.tvseriesImg = tvseriesImg;
    }

    public String getTvseriesName() {
        return tvseriesName;
    }

    public void setTvseriesName(String tvseriesName) {
        this.tvseriesName = tvseriesName;
    }

    public String getTvseriesIntroduction() {
        return tvseriesIntroduction;
    }

    public void setTvseriesIntroduction(String tvseriesIntroduction) {
        this.tvseriesIntroduction = tvseriesIntroduction;
    }

    public String getTvseriesBlues() {
        return tvseriesBlues;
    }

    public void setTvseriesBlues(String tvseriesBlues) {
        this.tvseriesBlues = tvseriesBlues;
    }

    public Integer getVipId() {
        return vipId;
    }

    public void setVipId(Integer vipId) {
        this.vipId = vipId;
    }

    public String getVipJpg() {
        return vipJpg;
    }

    public void setVipJpg(String vipJpg) {
        this.vipJpg = vipJpg;
    }

    public String getBluesUrl() {
        return bluesUrl;
    }

    public void setBluesUrl(String bluesUrl) {
        this.bluesUrl = bluesUrl;
    }
}
