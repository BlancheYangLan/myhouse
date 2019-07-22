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
 * @createTime 2019年07月04日20:24:44
 * @Verson 1.0.0
 */
@Controller
public class SelectUserMessage {
    @Resource
    private ITTestUseMapper useMapper;
    @RequestMapping("/selectUser.html")
    @ResponseBody
    public String selectUser(Integer userId) {
        try {
            List<TTestUse> selectuser = useMapper.selectbyuse(userId);
            JSONArray jsonArray = new JSONArray(selectuser);
            String users = jsonArray.toString();
            return users;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "{\"success\":false, \"error\":\"服务器处理错误！\"}";
    }
}
