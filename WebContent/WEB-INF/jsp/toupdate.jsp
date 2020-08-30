<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
  <link
    rel="stylesheet"
    href="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/css/bootstrap.min.css"
  />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/contact.css">
  <script src="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
  
  <script src="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="./css/iconfont.css">
    <link rel="stylesheet" href="./css/iconfont.eot">
  <body>
  <div class="contetn">
  <div class="box"><i class="iconfont"> &#xe607;</i>&nbsp;&nbsp;
    Boot管理系统<i class="iconfont">&nbsp;&nbsp;&#xe60e; </i>
  </div>
  <div class="d-flex flex-row-reverse bd-highlight pr-5">
    <div class="p-2 bd-highlight">
      <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
      <li class="nav-item" role="presentation">
        <a class="nav-link" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">主页</a>
      </li>
      <li class="nav-item" role="presentation">
        <a class="nav-link  active" id="pills-settings-tab" data-toggle="pill" href="#pills-settings" role="tab" aria-controls="pills-settings" aria-selected="false">内容</a>
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
      <h3 class="display-5">更新用户</h3>
      <p class="lead"></p>
      <hr class="my-4">   
      <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade " id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">这是Boot管理系统,请选择您要的功能</div>
               
       
       <div class="tab-pane fade show active" id="pills-settings" role="tabpanel" aria-labelledby="pills-settings-tab">    
       <form action="${pageContext.request.contextPath }/update.html?cust_id=${customer.cust_id}"  method="post" >       
          <div class="input-group mb-3 col-sm-8">
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1">订单编号</span>
              </div>
              <input type="text" class="form-control" name="cust_id" value="${customer.cust_id }" >
            </div>
          </div>
          <div class="input-group mb-3 col-sm-8">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1">客户姓名</span>
            </div>
            <input type="text" class="form-control" name="cust_name" value="${customer.cust_name }" >
          </div>
          <div class="input-group mb-3 col-sm-8">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1">客户来源</span>
            </div>
            <input type="text" class="form-control" name="cust_source" value="${customer.cust_source }" >
          </div>
          <div class="input-group mb-3 col-sm-8">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1">客户行业</span>
            </div>
            <input type="text" class="form-control" name="cust_industry" value="${customer.cust_industry }" >
          </div>
          <div class="input-group mb-3 col-sm-8">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1">客户等级</span>
            </div>
            <input type="text" class="form-control" name="cust_level" value="${customer.cust_level }" >
          </div>
          <div class="input-group mb-3 col-sm-8">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1">担保人</span>
            </div>
            <input type="text" class="form-control" name="cist_linkman" value="${customer.cist_linkman }">
          </div> 
          <div class="row justify-content-end">
          <div class="col-md-8 offset-md-3">
                 <input class="btn btn-primary" type="submit" value="提交">   
         </div>
   
        </div>
          
        </form>
        
        </div>
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
                <img src="${pageContext.request.contextPath}/image/微信.png" alt="" class="wechat">
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
  </body>
  <script src="${pageContext.request.contextPath}/js/contract.js"> </script>
  <script src="${pageContext.request.contextPath}/js/contract2.js"> </script>

</html>
<!-- </head>
<body>
<h2>更新界面</h2>
<form action="${pageContext.request.contextPath }/update.html?cust_id=${customer.cust_id}" method="post">
<input type="text" name="id" value="${customer.cust_id }"/>
订单客户:<input type="text" name="cust_name" value="${customer.cust_name }">
订单来源:<input type="text" name="cust_source" value="${customer.cust_source }">
<input type="submit" value="提交"/>
</form>
</body>
</html>-->