package com.heroku.controller;

import com.heroku.dao.UsersInfmDao;
import com.heroku.model.UserInfmBean;
import com.heroku.model.response.ResponseData;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "/sample/")
public class SampleCtr {


    private final UsersInfmDao repository;

    public SampleCtr(UsersInfmDao repository) {
        this.repository = repository;
    }

    @RequestMapping(value = "/sign_up",method = RequestMethod.POST)
    @ResponseBody
    public String AddUser(ModelMap model,HttpServletRequest request){

        System.out.println(request.getParameter("email") +request.getParameter("password") );

		/*UserDetailBean record = new UserDetailBean();
		record.setFirst(request.getParameter("firstname"));
		record.setLast(request.getParameter("lastname"));
		record.setUsername(request.getParameter("email"));
		record.setPassword(request.getParameter("password"));
        record.setEmail(request.getParameter("email"));
        record.setRegisterDate(nowDateTime());
        record.setEnable(true);
        record.setUserCd(nowDateTime());
        userService.AddUser(record); */
        return "Welcome !";
    }

    @PostMapping("/submitValue")
    @ResponseBody
    public ResponseEntity<ResponseData> handleValue(@RequestBody UserInfmBean clss) {
        // Process the value (business logic)
        System.out.println("Received value: " + clss.getUserId());

        // Create a response
        ResponseData response = new ResponseData("success", "Received: " +  clss.getUserId(),"C001");

        // Return as JSON with 200 OK
        return ResponseEntity.ok(response);
    }


    @PostMapping("/submitOject")
    @ResponseBody
    public List<UserInfmBean> handleOject(@RequestBody UserInfmBean clss) {
        // Process the value (business logic)
        List<UserInfmBean> rec =  new ArrayList<>();
        rec.add(clss);
        return repository.findAll();
    }

    @RequestMapping(value = "/all_users",method = RequestMethod.GET)
    public List<UserInfmBean> listAlluser(){
        List<UserInfmBean> rec = new ArrayList<>();

        for( int i=1 ; i < 10 ; i++) {
            UserInfmBean userInfmBean = new UserInfmBean();
            userInfmBean.setUserId("000" + i);
            rec.add(userInfmBean);
        }
        return rec;
    }

    @RequestMapping(value = "/all",method = RequestMethod.GET)
    public List<UserInfmBean> listAlluserDatabase(){
        return repository.findAll();
    }

}
