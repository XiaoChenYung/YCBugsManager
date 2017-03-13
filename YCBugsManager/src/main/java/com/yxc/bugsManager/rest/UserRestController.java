package com.yxc.bugsManager.rest;

import com.yxc.bugsManager.entity.Result;
import com.yxc.bugsManager.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springside.modules.web.MediaTypes;

import java.util.List;

/**
 * Created by tm on 2017/3/9.
 */
@RestController
@RequestMapping(value = "/api/v1/user")
public class UserRestController {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET, produces = MediaTypes.JSON_UTF_8)
    public Result getAllResult () {
        Result result = new Result();
        List list = userService.getAllUser();
        result.setTasks(list);
        return result;
    }

    @RequestMapping(method = RequestMethod.POST, produces = MediaTypes.JSON_UTF_8)
    public Result registerResult () {
        Result result = new Result();
        List list = userService.getAllUser();
        result.setTasks(list);
        return result;
    }

}
