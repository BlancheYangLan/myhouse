package com.demosever.controllers;

import com.demosever.database.data.TViodhot;
import com.demosever.database.mapper.ITVoidMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Wujinyang
 * @CreateTime 2019年06月26日11:41:18
 * @Varsion 1.0.0
 */
@Controller
public class HotselectController {
    //依赖注入用户访问表映射接口的对象
    //查找用户注入资源
    @Resource
    private ITVoidMapper itVoidMapper;

    @RequestMapping("/hot_main.html")
    @ResponseBody
    public String loginValidate(Integer interrupted,Integer endpoint) throws  Exception {
        if (interrupted==null){
            interrupted=0;
        }
        if(endpoint==null){
            endpoint=3;
        }
        List<TViodhot> tViodhots =  itVoidMapper.queryvoid(interrupted,endpoint);
        JSONArray jsonArray = new JSONArray(tViodhots);
        return jsonArray.toString();
}
}
