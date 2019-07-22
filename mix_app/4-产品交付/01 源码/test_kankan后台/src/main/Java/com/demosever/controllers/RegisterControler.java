package com.demosever.controllers;

import com.demosever.database.data.KanKanserverUser;
import com.demosever.database.mapper.IKanKanserverUserMaer;
import com.demosever.database.mapper.IKanKanzhece;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Theacher
 * @CreateTime 2019年07月04日09:36:48
 * @Version 1.0.0
 */
@Controller
public class RegisterControler {

    @Resource
    private IKanKanzhece userZhecea;
    @RequestMapping("/registerss.html")
    @ResponseBody
    public String regisDate(String nameIme,String phoneIme,String passIme){
        try {

            passIme = DigestUtils.md5Hex(passIme);
            String  userIcon = "https://192.168.43.175:1443/img/moren.png";
            List<KanKanserverUser> datazhece = userZhecea.queryzece(nameIme,phoneIme);
            //System.out.println(datazhece.size());
            if(datazhece.size()!=0){
                return "{\"success\": true, \"error\":\"用户名或电话号码已存在！\"}";
            }else{

                userZhecea.queryzece1(phoneIme,nameIme,passIme,userIcon);
                return "{\"success\": false, \"error\":\"注册成功！\"}";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "{\"success\": true, \"error\":\"服务器出错！\"}";
    }

}
