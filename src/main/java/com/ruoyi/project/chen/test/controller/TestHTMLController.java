package com.ruoyi.project.chen.test.controller;

import com.ruoyi.framework.web.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author chen0
 * @version 1.0
 * @description: TODO
 * @date 2023/2/24 18:33
 */
@Controller
public class TestHTMLController extends BaseController {

    @GetMapping("/test")
    public String testHTML(){
        return "system/menu/menu";
    }

    @GetMapping("/testStu")
    public String testStu(){
        return "student123/student/edit";
    }

    @GetMapping("/sql")
    public String testSQL(){
        return "ruoyi";
    }

    @GetMapping("/")
    public String testEdit(){
        return "nonghu/edit";
    }
}
