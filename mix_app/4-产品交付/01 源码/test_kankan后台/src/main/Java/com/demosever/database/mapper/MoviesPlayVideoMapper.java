package com.demosever.database.mapper;

import com.demosever.database.data.MoviesServer;
import com.demosever.database.data.TVSeriesServer;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface MoviesPlayVideoMapper {
    @Results(id = "movieResult",value = {
            @Result(property = "Id",column = "id",id=true),
            @Result(property = "movieImg",column = "movie_img"),
            @Result(property = "movieName",column = "movie_name"),
            @Result(property = "movieIntroduction",column = "movie_introduction"),
            @Result(property = "moviePlays",column = "movie_plays"),
            @Result(property = "movieUrl",column = "movie_url"),
            @Result(property = "vipId",column = "vip_id"),
            @Result(property = "vipJpg",column = "vip_jpg"),
            @Result(property = "trailersId",column = "trailers_id"),
            @Result(property = "trailersImg",column = "trailers_img"),
            @Result(property = "trailersDescribe",column = "trailers_describe"),
            @Result(property = "trailersUrl",column = "trailers_url"),
    })
    @Select("select * from t_kankan_movie where t_kankan_movie.id=#{tvseriesid}")
    public List<MoviesServer> queryPlayVideo(@Param("tvseriesid") String tvseriesid) throws Exception;

    @ResultMap(value = "movieResult")
    @Select("select t_kankan_trailers.trailers_id,t_kankan_trailers.trailers_img,t_kankan_trailers.trailers_describe,t_kankan_trailers.trailers_url from t_kankan_movie,t_kankan_trailers where t_kankan_movie.id=#{tvseriesid} and t_kankan_trailers.trailers_id=#{tvseriesid} limit 4")
    public List<MoviesServer> queryPlayVideos(@Param("tvseriesid") String tvseriesid) throws Exception;

    @ResultMap(value = "movieResult")
    @Select("select t_kankan_trailers.trailers_id,t_kankan_trailers.trailers_img,t_kankan_trailers.trailers_describe,t_kankan_trailers.trailers_url from t_kankan_movie,t_kankan_trailers where t_kankan_movie.id=#{tvseriesid} and t_kankan_trailers.trailers_id=#{tvseriesid}")
    public List<MoviesServer> queryPlayVideoes(@Param("tvseriesid") String tvseriesid) throws Exception;

}
