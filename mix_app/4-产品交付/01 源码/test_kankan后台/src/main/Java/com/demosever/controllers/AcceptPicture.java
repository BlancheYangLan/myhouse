package com.demosever.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * @cuthor luoxiaojiang
 * @createTime 2019年07月03日20:21:00
 * @Verson 1.0.0
 */
@Controller
public class AcceptPicture {

    @Value("${file.address}")
    private String address;
    @Value("${file.path}")
    private String path;

    @RequestMapping("/acceptPicture.html")
    @ResponseBody
    public String acceptPicture(MultipartFile imgcongregation, HttpServletRequest request) {
        String serverAddress = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
        try {
            if (!imgcongregation.isEmpty()) {
                String imgName = imgcongregation.getOriginalFilename();
                File dest = new File(address + imgName);
                imgcongregation.transferTo(dest);
                return "{\"success\":true,\"error\":\"上传文件成功！\", \"url\":\""+serverAddress+"/"+path.replace("*","")+imgName+"\"}";
            } else {
                return "{\"success\":false, \"error\":\"上传文件失败！\"}";
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "{\"success\":false, \"error\":\"服务器处理错误！\"}";
    }

}

