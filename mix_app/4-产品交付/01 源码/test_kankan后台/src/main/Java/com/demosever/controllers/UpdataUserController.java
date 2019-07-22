package com.demosever.controllers;

import com.demosever.database.data.TTestUse;
import com.demosever.database.mapper.ITTestUseMapper;
import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @cuthor luoxiaojiang
 * @createTime 2019年07月02日22:51:19
 * @Verson 1.0.0
 */
@Controller
public class UpdataUserController {
    @Resource
    private ITTestUseMapper useMapper;

    @RequestMapping("/updataUser.html")
    @ResponseBody
    public String updataUser(Integer userId,/*String imgUrl, String name,*/ String sex, String birthday, String address, String signature) {
        try {
            System.out.println("------------"+userId+","+sex+","+birthday+","+address+","+signature);
            useMapper.updatebyadd(userId, /*imgUrl, name,*/ sex, birthday, address, signature);
            return "{\"success\":true, \"error\":\"修改资料成功！\"}";
        } catch (Exception e) {
            e.printStackTrace();

        }
        return "{\"success\":false, \"error\":\"服务器处理错误！\"}";
    }
}

