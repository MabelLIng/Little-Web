package com.music.action;

import com.music.model.MapData;
import com.music.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

    private User user=new User();
    private String errorMsg="";

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String execute() throws Exception {
        MapData mapData=new MapData();
        mapData.addMapDate(user);
        if (mapData.errorMsg==""&&mapData.errorEmail==""){
            return SUCCESS;
        }else {
            this.errorMsg=mapData.errorMsg+","+mapData.errorEmail;
            return ERROR;
        }

    }
}
