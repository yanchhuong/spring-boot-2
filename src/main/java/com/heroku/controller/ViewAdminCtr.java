package com.heroku.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/admin")
public class ViewAdminCtr {
    private static Logger LOGGER =  LoggerFactory.getLogger(ViewAdminCtr.class);
    @RequestMapping(value = "/post",method = RequestMethod.GET)
    public String adminPost(ModelMap model, HttpServletRequest request) {
        LOGGER.info("Data check:",request);
        return "admin_post_view";
    }

}
