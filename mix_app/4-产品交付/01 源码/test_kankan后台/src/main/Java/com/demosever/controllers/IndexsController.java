package com.demosever.controllers;

import com.demosever.database.data.Indexserver;
import com.demosever.database.mapper.IntexseverMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author OuYang
 * @CreateTime 2019年07月01日 09:10:41
 * @Version 1.0.0
 */

@Controller
public class IndexsController {
    @Resource
    private IntexseverMapper intexseverMapper;
    @RequestMapping("/indexs.html")
    @ResponseBody
    public String handlerRequest(HttpServletRequest request) throws Exception {
        String severAddress = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
        List<Indexserver> list=intexseverMapper.queryByLogin();
        List<Indexserver> lists=intexseverMapper.queryChasing();
        List<Indexserver> rec=intexseverMapper.recommended();
       for (Indexserver indexserver :list){
            indexserver.setTvseriesImg(severAddress+"/img/"+indexserver.getTvseriesImg());
            indexserver.setVipJpg(severAddress+"/img/"+indexserver.getVipJpg());
            indexserver.setBluesUrl(severAddress+"/img/"+indexserver.getBluesUrl());
        }
        for (Indexserver indexserver :lists){
            indexserver.setTvseriesImg(severAddress+"/img/"+indexserver.getTvseriesImg());
            indexserver.setVipJpg(severAddress+"/img/"+indexserver.getVipJpg());
            indexserver.setBluesUrl(severAddress+"/img/"+indexserver.getBluesUrl());
        }
        for (Indexserver indexserver :rec){
            indexserver.setTvseriesImg(severAddress+"/img/"+indexserver.getTvseriesImg());
            indexserver.setVipJpg(severAddress+"/img/"+indexserver.getVipJpg());
    }
        Map<String,Object> data = new HashMap<>();
        data.put("hotingMovies",list);
        data.put("chasing",lists);
        data.put("recommended",rec);
        JSONObject jsonObject=new JSONObject(data);
        //System.out.println(jsonObject.toString());
        return jsonObject.toString();

    }
}
