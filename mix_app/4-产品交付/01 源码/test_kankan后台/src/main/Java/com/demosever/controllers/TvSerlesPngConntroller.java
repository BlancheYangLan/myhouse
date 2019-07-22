package com.demosever.controllers;

import com.demosever.database.data.TvSerlesPngServer;
import com.demosever.database.mapper.TvSerlesPngMapper;
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
public class TvSerlesPngConntroller {
    @Resource
    private TvSerlesPngMapper tvSerlesPngMapper;
    @RequestMapping("/tv_series_png.html")
    @ResponseBody
    public String handlerRequest(HttpServletRequest request) throws Exception {
        String severAddress = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
        List<TvSerlesPngServer> list=tvSerlesPngMapper.queryByPng();
       for (TvSerlesPngServer tvSerlesPngServer :list){
           tvSerlesPngServer.setTvseriesPng(severAddress+"/img/"+tvSerlesPngServer.getTvseriesPng());
        }

        Map<String,Object> data = new HashMap<>();
        data.put("tvPng",list);
        JSONObject jsonObject=new JSONObject(data);
        return jsonObject.toString();

    }
}
