<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎登录</title>
     <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/css/bootstrap.min.css"
    />
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contact.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/js/bootstrap.bundle.min.js"></script>
    <style></style>
    <link rel="stylesheet" href="./css/iconfont.css">
    <link rel="stylesheet" href="./css/iconfont.eot">
<body>
 <div class="contetn">
  <div class="box">
    <i class="iconfont"> &#xe607;</i>&nbsp;&nbsp;Boot管理系统<i class="iconfont">&nbsp;&nbsp;&#xe60e; </i>
  </div>
  <div class="d-flex flex-row-reverse bd-highlight pr-5">
    <div class="p-2 bd-highlight">
      <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
      <li class="nav-item" role="presentation">
        <a class="nav-link  active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">主页</a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link" id="pills-settings-tab" data-toggle="pill" href="#pills-settings" role="tab" aria-controls="pills-settings" aria-selected="false">内容</a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">问题反馈</a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">联系方式</a>
      </li>
       </ul>
    </div>
  </div>
  <nav class="nav flex-column col-sm-5 pt-1 pl-3  font-weight-bold ">
   <a class="nav-link active" href="${pageContext.request.contextPath}/findAll.html">客户信息查询</a>
    <a class="nav-link" href="${pageContext.request.contextPath}/add.html">添加客户</a>
    <a class="nav-link" href="${pageContext.request.contextPath}/select.html">订单查询</a>
    <a class="nav-link " href="${pageContext.request.contextPath}/exit.html" >退出登录</a>
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">关于版本</a>
  </nav>
  <div class="msgbox">
      <h3 class="display-5">Hello,<% 
      out.print(request.getSession().getAttribute("loginname"));  
      %></h3>
      <p class="lead"></p>
      <hr class="my-4">
      
      <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">这是Boot管理系统,请选择您要的功能</div>
        <div class="tab-pane fade" id="pills-settings" role="tabpanel" aria-labelledby="pills-settings-tab">里纳西</div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab"> 
           <div class="form-group">
           <label for="exampleFormControlTextarea1">请在下面写出您的反馈,我们会及时处理</label>
           <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
           <button type="button" class="btn btn-primary mt-2">提交</button>
           </div>
           </div>
           <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
            <div class="contractmsg">
              <p class="me">我的联系方式</p>
              <span>你可以联系<a href="https://weibo.com/u/5863197795" target="_blank">我的微博</a>或者...</span>
              <div class="other">
                <img src="${pageContext.request.contextPath}/image/QQ.png" alt="" class="QQ">
                <img src="${pageContext.request.contextPath}/image/weixin.png" alt="" class="wechat">
              </div>
              <div class="mycontract">
                <div class="sanjiao"></div>
                <img src="${pageContext.request.contextPath}/image/myQQ.jpg" alt="">          
              </div>
              <div class="mywechat">
                <div class="sanjiao"></div>
                <img src="${pageContext.request.contextPath}/image/mywechat.jpg" alt="">
              </div>
            </div>
           </div>    
       </div>
      </div>
  </div>
  </body>
    <script src="${pageContext.request.contextPath}/js/contract.js"> </script>
  <script src="${pageContext.request.contextPath}/js/contract2.js"> </script>
</html>
<!--   <h1>欢迎${msg }</h1>
 <div class="row">
  <div class="col-3">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active" id="v-pills-home-tab" data-toggle="tab" href="${pageContext.request.contextPath}/findAll.html" role="tab" aria-controls="v-pills-home" aria-selected="false">查询所有用户</a>
      <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="${pageContext.request.contextPath}/add.html" role="tab" aria-controls="v-pills-profile" aria-selected="false">添加用户</a>
      <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Messages</a>
      <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Settings</a>
    </div>
  </div>
 </div>
<a href="${pageContext.request.contextPath}/findAll.html">查询所有用户</a>
<a href="${pageContext.request.contextPath}/add.html">添加用户</a>
</body>
<script>
</script>
</html>-->