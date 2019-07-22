package com.demosever.controllers;

import com.demosever.database.data.Indexserver;
import com.demosever.database.data.TVSeriesServer;
import com.demosever.database.mapper.IntexseverMapper;
import com.demosever.database.mapper.TVSeriesMapper;
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
 * @CreateTime 2019年07月03日 18:50:05
 * @Version 1.0.0
 */

@Controller
public class TVSeriesController {
    @Resource
    private TVSeriesMapper tvSeriesMapper;
    @RequestMapping("/tvseries.html")
    @ResponseBody
    public String handlerRequest(HttpServletRequest request,String tvseriesid) throws Exception {
        String severAddress = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
        List<TVSeriesServer> list=tvSeriesMapper.queryByLogin(tvseriesid);
        List<TVSeriesServer> lists=tvSeriesMapper.queryByLogins(tvseriesid);
        List<TVSeriesServer> blues=tvSeriesMapper.queryBlues(tvseriesid);
        List<TVSeriesServer> all=tvSeriesMapper.queryByall(tvseriesid);

        for (TVSeriesServer tvSeriesServer :lists){
            tvSeriesServer.setTrailersImg(severAddress+"/img/"+tvSeriesServer.getTrailersImg());
            tvSeriesServer.setTrailersUrl(severAddress+"/img/"+tvSeriesServer.getTrailersUrl());
        }
        for (TVSeriesServer tvSeriesServer :all){
            tvSeriesServer.setTrailersImg(severAddress+"/img/"+tvSeriesServer.getTrailersImg());
            tvSeriesServer.setTrailersUrl(severAddress+"/img/"+tvSeriesServer.getTrailersUrl());
        }

        for (TVSeriesServer tvSeriesServer :blues){
            tvSeriesServer.setBluesUrl(severAddress+"/video/"+tvSeriesServer.getBluesUrl());
        }
        Map<String,Object> data = new HashMap<>();
        data.put("series",list);
        data.put("trailers",lists);
        data.put("blues",blues);
        data.put("all",all);
        JSONObject jsonObject=new JSONObject(data);
        //System.out.println(jsonObject.toString());
        return jsonObject.toString();

    }
}
