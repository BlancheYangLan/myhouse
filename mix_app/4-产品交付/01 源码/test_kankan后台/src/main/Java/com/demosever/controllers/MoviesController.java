package com.demosever.controllers;

import com.demosever.database.data.Indexserver;
import com.demosever.database.data.MoviesServer;
import com.demosever.database.mapper.IntexseverMapper;
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
public class MoviesController {
    @Resource
    private MovisMapper movisMapper;
    @RequestMapping("/index_movies.html")
    @ResponseBody
    public String handlerRequest(HttpServletRequest request) throws Exception {
        String severAddress = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
        List<MoviesServer> list=movisMapper.queryMovie();
        List<MoviesServer> lists=movisMapper.recommended();
       for (MoviesServer moviesServer :list){
           moviesServer.setMovieImg(severAddress+"/img/"+moviesServer.getMovieImg());
           moviesServer.setMovieUrl(severAddress+"/video/"+moviesServer.getMovieUrl());
           moviesServer.setVipJpg(severAddress+"/img/"+moviesServer.getVipJpg());
        }
       for (MoviesServer moviesServer :lists){
            moviesServer.setMovieImg(severAddress+"/img/"+moviesServer.getMovieImg());
            moviesServer.setMovieUrl(severAddress+"/video/"+moviesServer.getMovieUrl());
            moviesServer.setVipJpg(severAddress+"/img/"+moviesServer.getVipJpg());
        }

        Map<String,Object> data = new HashMap<>();
        data.put("movies",list);
        data.put("moviesHader",lists);
        JSONObject jsonObject=new JSONObject(data);
        return jsonObject.toString();

    }
}
