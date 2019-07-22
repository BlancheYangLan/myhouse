package com.demosever.database.mapper;


import com.demosever.database.data.video;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface videomapper {
    @Results(
            id = "videomapper", value = {
            @Result(property = "videoid", column = "video_id",id = true),
            @Result(property = "videoname", column = "video_name"),
            @Result(property = "videopx", column = "video_px"),
            @Result(property = "videodq", column = "video_dq"),
            @Result(property = "videolx", column = "video_lx"),
            @Result(property = "videolj", column = "video_lj"),
            @Result(property = "videosp", column = "video_sp"),
            @Result(property = "videojj", column = "video_jj"),


    })
    @Select("select * from t_kankan_vipvideo where video_px like concat(concat('%',#{videopx}),'%') and video_dq like concat(concat('%',#{videodq}),'%') and video_lx like concat(concat('%',#{videolx}),'%')")
     List<video> queryByviode(@Param("videopx") String videopx,
                              @Param("videodq") String videodq,
                              @Param("videolx") String videolx) ;

}
