window.onload=function () {
    var myUser=GetQueryString("User.username");
    if (myUser!=""&&myUser!=null){
        document.getElementById("username").value=myUser
    }
}


function GetQueryString(name)
{
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);//从问号 (?) 开始的 URL（查询部分）
    if(r!=null)return  unescape(r[2]);
    return null;
}

function btnTitle(id,thisBox,otherId,otherBox) {
    var this_id=document.getElementById(id);
    var thisB=document.getElementById(thisBox);
    var otherId=document.getElementById(otherId);
    var otherB=document.getElementById(otherBox);

    thisB.classList.remove("hide");
    this_id.classList.add("current");
    otherId.classList.remove('current');
    otherB.classList.add("hide");
}
