package com.demosever.controllers;

import com.demosever.database.data.KanKanserverUser;
import com.demosever.database.mapper.IKanKanserverUserMaer;
import org.apache.commons.codec.digest.DigestUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 登录的服务接口类
 * @Author Theacher
 * @CreateTime 2019年06月26日11:40:46
 * @Version 1.0.0
 */

@Controller
public class LoginControler {

    //注入用户表访问映射接口的对象
    @Resource
    private IKanKanserverUserMaer userMapper;

    /**
     * 登录验证
     * @Author Theacher
     * @CreateTime 2019年06月26日11:40:46
     * @Version 1.0.0
     */
    @RequestMapping("/loginvalidate.html")
    @ResponseBody
    public String loginValidate(String userName,String password){
        try {
        //System.out.println(DigestUtils.md5Hex(password));  //使用MD5对密码进行加密
        //System.out.println(DigestUtils.md5Hex(password));
        password = DigestUtils.md5Hex(password);
        //System.out.println(password);
            //查询数据库，登录验证
            //System.out.println(userName+","+password);
            KanKanserverUser user = userMapper.queryBylogin(userName,password);
            System.out.println(user);
            //判断登录验证是否通过
            if(user!=null){
                Map<String, Object> data = new HashMap<>();
                data.put("user",user);
                data.put("success", true);
                JSONObject jsonObject = new JSONObject(data);
                String jsondata = jsonObject.toString();
                //System.out.println(jsondata);
                return jsondata;
            }else {
                return "{\"success\": false, \"error\":\"用户名或密码错误！\"}";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "{\"success\": false, \"error\":\"服务器出错！\"}";
    }
}
