package com.demosever.database.data;

/**
 * @Author OuYang
 * @CreateTime 2019年07月04日 19:05:16
 * @Version 1.0.0
 */


public class MoviesServer {
    private Integer Id;
    private String movieImg;
    private String movieName;
    private String movieIntroduction;
    private Integer moviePlays;
    private String movieUrl;
    private Integer vipId;
    private String vipJpg;
    private String bluesUrl;
    private Integer trailersId;
    private String trailersImg;
    private String trailersDescribe;
    private String trailersUrl;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getMovieImg() {
        return movieImg;
    }

    public void setMovieImg(String movieImg) {
        this.movieImg = movieImg;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieIntroduction() {
        return movieIntroduction;
    }

    public void setMovieIntroduction(String movieIntroduction) {
        this.movieIntroduction = movieIntroduction;
    }

    public Integer getMoviePlays() {
        return moviePlays;
    }

    public void setMoviePlays(Integer moviePlays) {
        this.moviePlays = moviePlays;
    }

    public String getMovieUrl() {
        return movieUrl;
    }

    public void setMovieUrl(String movieUrl) {
        this.movieUrl = movieUrl;
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

    public Integer getTrailersId() {
        return trailersId;
    }

    public void setTrailersId(Integer trailersId) {
        this.trailersId = trailersId;
    }

    public String getTrailersImg() {
        return trailersImg;
    }

    public void setTrailersImg(String trailersImg) {
        this.trailersImg = trailersImg;
    }

    public String getTrailersDescribe() {
        return trailersDescribe;
    }

    public void setTrailersDescribe(String trailersDescribe) {
        this.trailersDescribe = trailersDescribe;
    }

    public String getTrailersUrl() {
        return trailersUrl;
    }

    public void setTrailersUrl(String trailersUrl) {
        this.trailersUrl = trailersUrl;
    }
}
