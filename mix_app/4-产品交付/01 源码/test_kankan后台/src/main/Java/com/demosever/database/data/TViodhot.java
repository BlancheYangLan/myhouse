package com.demosever.database.data;
import java.sql.Timestamp;

/**
 * @Author likepeng*
 * CreateTime 2019年06月27日  17:03:13
 * @Version 1.0.0
 **/
//用户表的持久化类(数据封装类)
public class TViodhot {
    private Integer videoId;  //作品的ID
    private Integer makerId;  //发布作品的用户ID
    private String makeName; //发布作品的用户名
    private String videoPath;  //视频路径
    private String videoType; //视频类型
    private String videoMask; //视频遮罩
    private String videoDiscribe;  //视频描述
    private Integer videoCollectNumber;  //视频收藏数量
    private Integer videoPreviewQuantity;  //视频预览数量

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }

    public Integer getMakerId() {
        return makerId;
    }

    public void setMakerId(Integer makerId) {
        this.makerId = makerId;
    }

    public String getMakeName() {
        return makeName;
    }

    public void setMakeName(String makeName) {
        this.makeName = makeName;
    }

    public String getVideoPath() {
        return videoPath;
    }

    public void setVideoPath(String videoPath) {
        this.videoPath = videoPath;
    }

    public String getVideoType() {
        return videoType;
    }

    public void setVideoType(String videoType) {
        this.videoType = videoType;
    }

    public String getVideoMask() {
        return videoMask;
    }

    public void setVideoMask(String videoMask) {
        this.videoMask = videoMask;
    }

    public String getVideoDiscribe() {
        return videoDiscribe;
    }

    public void setVideoDiscribe(String videoDiscribe) {
        this.videoDiscribe = videoDiscribe;
    }

    public Integer getVideoCollectNumber() {
        return videoCollectNumber;
    }

    public void setVideoCollectNumber(Integer videoCollectNumber) {
        this.videoCollectNumber = videoCollectNumber;
    }

    public Integer getVideoPreviewQuantity() {
        return videoPreviewQuantity;
    }

    public void setVideoPreviewQuantity(Integer videoPreviewQuantity) {
        this.videoPreviewQuantity = videoPreviewQuantity;
    }
}