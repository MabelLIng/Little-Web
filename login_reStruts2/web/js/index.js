window.onload=function () {
    var myUser=GetQueryString("User.username");
    if (myUser!=""&&myUser!=null){
        var a=document.getElementById("userId");
        a.innerHTML=myUser;
        a.href="#";
    }
}

function GetQueryString(name)
{
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);//从问号 (?) 开始的 URL（查询部分）
    if(r!=null)return  unescape(r[2]);return null;
}