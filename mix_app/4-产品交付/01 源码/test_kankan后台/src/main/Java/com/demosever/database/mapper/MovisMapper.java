package com.demosever.database.mapper;

import com.demosever.database.data.Indexserver;
import com.demosever.database.data.MoviesServer;
import com.demosever.database.data.TVSeriesServer;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface MovisMapper {
    @Results(id = "movieResult",value = {
            @Result(property = "Id",column = "id",id=true),
            @Result(property = "movieImg",column = "movie_img"),
            @Result(property = "movieName",column = "movie_name"),
            @Result(property = "movieIntroduction",column = "movie_introduction"),
            @Result(property = "moviePlays",column = "movie_plays"),
            @Result(property = "movieUrl",column = "movie_url"),
            @Result(property = "vipId",column = "vip_id"),
            @Result(property = "vipJpg",column = "vip_jpg"),
            @Result(property = "bluesUrl",column = "bluesUrl"),
    })
    @Select("select * from t_kankan_movie,t_kankan_vip_icon where t_kankan_movie.movie_vip_id=t_kankan_vip_icon.vip_id  order by rand() limit 6 ")
    public List<MoviesServer> queryMovie() throws Exception;
    @ResultMap(value = "movieResult")
    @Select("select * from t_kankan_movie,t_kankan_vip_icon where t_kankan_movie.movie_vip_id=t_kankan_vip_icon.vip_id  order by rand() limit 1" )
    public List<MoviesServer> recommended() throws Exception;
}
