package com.demosever.database.mapper;

import com.demosever.database.data.video;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface indexjx {
    @Results(
            id = "indexjx", value = {
            @Result(property = "videoid", column = "video_id",id = true),
            @Result(property = "videoname", column = "video_name"),
            @Result(property = "videopx", column = "video_px"),
            @Result(property = "videodq", column = "video_dq"),
            @Result(property = "videolx", column = "video_lx"),
            @Result(property = "videolj", column = "video_lj"),
            @Result(property = "videosp", column = "video_sp"),
            @Result(property = "videojj", column = "video_jj"),


    })
    @Select("select * from t_kankan_vipvideo order by rand() limit 4;")
    List<video> indexjxall() throws Exception;
}