package com.demosever.database.data;

/**
 *电影表的持久化类（数据封装类）
 * @cuthor luoxiaojiang
 * @createTime 2019年06月30日17:47:08
 * @Verson 1.0.0
 */
public class TTestMovie {

    private Integer movieid;//电影id
    private String moviename;//电影名字
    private String moviepicture;//电影图片存放的位置
    private String movieurl;//电影路径

    public String getMovieurl() {
        return movieurl;
    }

    public void setMovieurl(String movieurl) {
        this.movieurl = movieurl;
    }

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

    public String getMoviepicture() {
        return moviepicture;
    }

    public void setMoviepicture(String moviepicture) {
        this.moviepicture = moviepicture;
    }
};
