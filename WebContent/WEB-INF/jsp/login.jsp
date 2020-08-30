<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎登陆</title>
     <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/css/bootstrap.min.css"
    />
     <script src="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/js/bootstrap.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/bootstrap-4.5.0-dist/js/bootstrap.bundle.min.js"></script>
    <style>
    body{          
            background: url(${pageContext.request.contextPath}/image/bg.jpg) no-repeat;
            background-size: 100% auto;
            background-attachment: fixed;
        }
        </style>
           <link rel="stylesheet" href="./css/iconfont.css">
    <link rel="stylesheet" href="./css/iconfont.eot">
  </head>
  <body>
  <!-- action="${pageContext.request.contextPath}/login.html" -->
    <form >
      <div class="content" style="text-align: center; margin-top: 70px;">
        <h1>Boot管理系统</h1>
      </div>
      <div class="form-group col-sm-4 m-auto pt-5">
        <label for="exampleFormControlInput1">用户名: <div class="msg" style="color:red"></div></label>
        <input
          type="text"
          name="user_code"
          class="form-control input-group-mi"
          id="username"
          placeholder="请输入用户名"
        />
      </div>
      <div class="form-group col-sm-4 m-auto">
        <label for="exampleFormControlInput1">密&nbsp;&nbsp;&nbsp;码:</label>
        <input
          type="password"
          name="user_password"
          class="form-control input-group-mi"
          id="password"
          placeholder="请输入密码"
        />
      </div>
      <div class="col-sm-2 m-auto pt-2">
        <input
          type="button"
          id="submitBtn"
          class="btn btn-success"
          style="width: 50%;"
          value="登录"
        />
      </div>
    </form>
  </body>
  <script> 
  $("#submitBtn").click(function(){
	  var name=$("#username").val();
	  var pwd=$("#password").val();
	  $.ajax({
	        type:"post",
	        url:"check.html",
	        dataType:"text",
	        data:{"user_code":name,
	        	   "user_password":pwd	       	        	
	        },
	        success:function(data){
	        	console.log(data);
	        	if(data=="success"){
	        		window.location.href="login.html";        		
	        	}else if(data=="fail"){
	        		alert("帐户或密码错误,请重新输入");
	        	}
	        },
	        error:function(data){
	        	console.log();
	        }	     	     	     
	     })
  })
    
     
	  
  </script>
</html>

 <!--  <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{          
            background: url(${pageContext.request.contextPath}/image/back5.jpg) no-repeat;
            background-size: 100% auto;
            background-attachment: fixed;
        }
        .title{
            text-align: center;
            margin-top: 50px;
        }
        .contain{
            margin-top: 70px;
            margin-left: 45%;
            padding-top: 50px;
            padding-left: 50px;
            width: 300px;
            height: 200px;
            background-color: aliceblue;

        }
        .button{
            width: 80px;
            height: 40px;
            margin: 10px 30%;
        }
    </style>
</head>
<body>
  <div class="title"><h1>欢迎使用Boot客户管理系统</h1></div>
<form action="login.html" method="post">
      <div class="contain">
            用户名： <input type="text" name="user_code" placeholder="请输入用户名"><br><br><br>
            密&nbsp;&nbsp;&nbsp; 码：<input type="password" name="user_password" placeholder="请输入密码"><br><br>
            <input type="submit" class="button" value="登陆">
            
    </div>
</form>
</body>
</html> -->