package com.demosever.database.data;

/**
 * @Author OuYang
 * @CreateTime 2019年07月05日 02:21:13
 * @Version 1.0.0
 */


public class TvSerlesPngServer {
    private Integer Id;
    private String tvseriesPng;
    private String tvseriesDescribe;

    public String getTvseriesDescribe() {
        return tvseriesDescribe;
    }

    public void setTvseriesDescribe(String tvseriesDescribe) {
        this.tvseriesDescribe = tvseriesDescribe;
    }


    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getTvseriesPng() {
        return tvseriesPng;
    }

    public void setTvseriesPng(String tvseriesPng) {
        this.tvseriesPng = tvseriesPng;
    }
}
