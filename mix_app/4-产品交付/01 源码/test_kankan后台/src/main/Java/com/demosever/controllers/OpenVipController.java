package com.demosever.controllers;

import com.demosever.database.data.UserVip;
import com.demosever.database.data.VipInfo;
import com.demosever.database.mapper.UserVipMapper;
import com.demosever.database.mapper.VipInfoMapper;
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
 * @CreateTime 2019年07月01日16:13:29
 * @Varsion 1.0.0
 */
@Controller
public class OpenVipController {
    //注入vip套餐表访问映射接口对象
    @Resource
    private VipInfoMapper vipMapper;

    @RequestMapping("getvip.html")
    @ResponseBody
    public String getVip(){

        List<VipInfo> vipList  = vipMapper.queryByVip();
        JSONArray jsonArray = new JSONArray(vipList);
        System.out.println(jsonArray);
        /*Map<String,Object> map = new HashMap<>();
        map.put("vipType",jsonArray);
        JSONObject jsonObject = new JSONObject(map);*/
        return jsonArray.toString();
    }


    //注入VIP用户表
    @Resource
    private UserVipMapper vipDateMapper;

    @RequestMapping("getVipDate.html")
    @ResponseBody
    public String getVipDate(String userNumber){
       System.out.println(userNumber);
        try {
            UserVip userVipDate = vipDateMapper.queryByVipDate(userNumber);
            if (userVipDate != null){
                JSONObject jsonObject = new JSONObject(userVipDate);
                System.out.println(jsonObject);
                return jsonObject.toString();
            }else{
                return "{\"success\": false}";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "{\"success\": false, \"error\":\"服务器处理错误\"}";
    }


    //注入VIP用户表
    public String pay(){
        return "";
    }


}
