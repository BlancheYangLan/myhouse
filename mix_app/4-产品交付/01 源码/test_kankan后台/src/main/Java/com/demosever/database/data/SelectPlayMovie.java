package com.demosever.database.data;

/**
 * @cuthor luoxiaojiang
 * @createTime 2019年07月04日09:00:20
 * @Verson 1.0.0
 */
public class SelectPlayMovie {
    private Integer movieid; //电影id
    private String moviename;//电影名称
    private String movietype;//电影类型
    private Integer movieyear;//电影年份
    private String movieintroduction;//电影简介
    private String moviedirector;//导演

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }

    public String getMovietype() {
        return movietype;
    }

    public void setMovietype(String movietype) {
        this.movietype = movietype;
    }

    public Integer getMovieyear() {
        return movieyear;
    }

    public void setMovieyear(Integer movieyear) {
        this.movieyear = movieyear;
    }

    public String getMovieintroduction() {
        return movieintroduction;
    }

    public void setMovieintroduction(String movieintroduction) {
        this.movieintroduction = movieintroduction;
    }

    public String getMoviedirector() {
        return moviedirector;
    }

    public void setMoviedirector(String moviedirector) {
        this.moviedirector = moviedirector;
    }
}
