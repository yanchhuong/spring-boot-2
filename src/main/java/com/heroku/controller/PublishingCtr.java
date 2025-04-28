package com.heroku.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
@Controller
@RequestMapping(value = "/publishing")
public class PublishingCtr {
    private static Logger LOGGER =  LoggerFactory.getLogger(PublishingCtr.class);


    @RequestMapping(method = RequestMethod.GET)
    public String admin(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing",request);
        return "publishing/admin_post_view";
    }
    /*Post Management*/
    @RequestMapping(value = "/post",method = RequestMethod.GET)
    public String adminPost(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/post",request);
        return "publishing/admin_post_view";
    }

    @RequestMapping(value = "/post/new_popup",method = RequestMethod.GET)
    public String adminPostNew(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/post/new_popup",request);
        return "admin_post_view";
    }
    @RequestMapping(value = "/post/detail_popup",method = RequestMethod.GET)
    public String adminPostDetail(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/post/detail_popup",request);
        return "admin_post_view";
    }

    /*Categories*/

    @RequestMapping(value = "/menu",method = RequestMethod.GET)
    public String adminMenu(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/post",request);
        return "publishing/admin_post_view";
    }

    @RequestMapping(value = "/menu/new_popup",method = RequestMethod.GET)
    public String adminMenuNew(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/menu/new_popup",request);
        return "admin_categories_new_popup_view";
    }
    @RequestMapping(value = "/menu/detail_popup",method = RequestMethod.GET)
    public String adminMenuDetail(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/menu/detail_popup",request);
        return "publishing/admin_post_view";
    }

    @RequestMapping(value = "/users",method = RequestMethod.GET)
    public String adminUserManagement(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/users",request);
        return "publishing/admin_users_view";
    }

    @RequestMapping(value = "/users/new_popup",method = RequestMethod.GET)
    public String adminUserManagementNew(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/users/new_popup",request);
        return "publishing/admin_users_view";
    }
    @RequestMapping(value = "/users/detail_popup",method = RequestMethod.GET)
    public String adminUserManagementDetail(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/users/detail_popup",request);
        return "publishing/admin_users_view";
    }

    @RequestMapping(value = "/categories",method = RequestMethod.GET)
    public String adminCategoris(ModelMap model, HttpServletRequest request) {
        LOGGER.info("/publishing/categories",request);
        return "publishing/admin_categories_view";
    }


}
