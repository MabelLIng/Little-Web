package com.music.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class MapData {
    private  Map<String, User> map=new HashMap<>();
    public String errorMsg="",errorEmail="";
     {
        map.put("1",new User("clmmei","123456","1234567890@qq.com",new Date()));
        map.put("2",new User("crmmei","123456","1234567890@qq.com",new Date()));
        map.put("3",new User("clnni","123456","1234567890@qq.com",new Date()));
    }


    public void addMapDate(User user){
         if (!isExitsUser(user)){
             String i=String.valueOf( Math.random()*10+1);
             map.put(i,user);
         }else {
             errorMsg="该用户已经存在!";
         }

    }

    public boolean isExitsUser(User user){
         boolean flag=false;
         User u=new User();
         for (String key:map.keySet()){
             u=map.get(key);
             if(u.getUsername().equals(user.getUsername())){
                 flag=true;
             }
             if (u.getEmail().equals(user.getEmail())){
                 errorEmail="该邮箱已经注册过！";
             }

         }
         return flag;
    }

}
