package com.demosever.controllers;

import com.demosever.database.data.MoviesServer;
import com.demosever.database.data.TVSeriesServer;
import com.demosever.database.mapper.MoviesPlayVideoMapper;
import com.demosever.database.mapper.MovisMapper;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author OuYang
 * @CreateTime 2019年07月01日 09:10:41
 * @Version 1.0.0
 */

@Controller
public class MoviesPlayVideoController {
    @Resource
    private MoviesPlayVideoMapper moviesPlayVideoMapper;
    @RequestMapping("/imoviesplayvideo.html")
    @ResponseBody
    public String handlerRequest(HttpServletRequest request,String tvseriesid) throws Exception {
        String severAddress = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
        List<MoviesServer> list=moviesPlayVideoMapper.queryPlayVideo(tvseriesid);
        List<MoviesServer> lists=moviesPlayVideoMapper.queryPlayVideos(tvseriesid);
        List<MoviesServer> liserits=moviesPlayVideoMapper.queryPlayVideoes(tvseriesid);
       for (MoviesServer moviesServer :list){
           moviesServer.setMovieUrl(severAddress+"/video/"+moviesServer.getMovieUrl());
           moviesServer.setMovieImg(severAddress+"/img/"+moviesServer.getMovieImg());
           moviesServer.setTrailersImg(severAddress+"/img/"+moviesServer.getTrailersImg());
        }
        for (MoviesServer moviesServer :lists){
            moviesServer.setTrailersImg(severAddress+"/img/"+moviesServer.getTrailersImg());
            moviesServer.setTrailersUrl(severAddress+"/img/"+moviesServer.getTrailersUrl());
        }
        for (MoviesServer moviesServer :liserits){
            moviesServer.setTrailersImg(severAddress+"/img/"+moviesServer.getTrailersImg());
            moviesServer.setTrailersUrl(severAddress+"/img/"+moviesServer.getTrailersUrl());
        }


        Map<String,Object> data = new HashMap<>();
        data.put("moviesvideo",list);
        data.put("moviesvideoes",liserits);
        data.put("moviesvideos",lists);
        JSONObject jsonObject=new JSONObject(data);

       // System.out.println(jsonObject.toString());
        return jsonObject.toString();

    }
}
