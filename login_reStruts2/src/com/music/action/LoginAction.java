package com.music.action;

import com.music.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

    private User user=new User();

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String execute() throws Exception {
        System.out.println("zhixing");

        if (Info(user)){
            return SUCCESS;
        }else {
            return ERROR;
        }

    }

    public boolean Info(User user){
        boolean flag=false;

        if(user.getUsername().equals("clmmei")&&user.getPassword().equals("123456")){
            flag=true;
        }

        return flag;
    }
}
