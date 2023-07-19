package com.bmw.seed.controller;

import com.bmw.seed.service.UserInfoService;
import com.bmw.seed.util.bean.BaseResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user/info")
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping("/transfer")
    public BaseResponse<Boolean> transfer(){
        return BaseResponse.ok(userInfoService.transfer());
    }
}
