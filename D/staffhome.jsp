<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%@ page import = "com.service.Provider" %>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <%@page import="com.dao.ConnectionProvider"%>
 
 
 
 <%


int count1 =0;
HttpSession sessions=request.getSession();  

String stuid = (String)sessions.getAttribute("stuid");
String regno = (String)sessions.getAttribute("regno");
String dob = (String)sessions.getAttribute("dob");
String emails = (String)sessions.getAttribute("emails");
String passwords = (String)sessions.getAttribute("passwords");
String course = (String)sessions.getAttribute("course");
String category = (String)sessions.getAttribute("category");
String jyear = (String)sessions.getAttribute("jyear");
String eyear = (String)sessions.getAttribute("eyear");
String gender = (String)sessions.getAttribute("gender");

String staffid = (String)sessions.getAttribute("staffid");
String email = (String)sessions.getAttribute("emails");
String stuname = (String)sessions.getAttribute("name");

  System.out.println(staffid+"-----"+"-------"+email);
  
  
  ArrayList<Integer> noti = new ArrayList<Integer>();
  ArrayList<Integer> uniq = new ArrayList<Integer>();
  
  
  int s1 = 0;
  int uniq_no = 0;
  try{
		Connection conssss= ConnectionProvider.getCon();  
		Statement statement=conssss.createStatement();
		String sql ="select * from lofrequest where email ='"+email+"'";
		ResultSet resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
			
			
			s1 = resultSet.getInt(4);
			uniq_no = resultSet.getInt(15);
			 HttpSession session1=request.getSession();  
		    noti.add(s1);
		     session.setAttribute("email",email);
			uniq.add(uniq_no);
			
			%>

	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
    
	//SELECT SUM(total_cost)             
	//FROM purchase;
	System.out.println("noti----s1-----"+s1);
	System.out.println("noti----arrayli-----"+noti);
	
	int sum = 0;
	for(Integer bc : noti)
		{
	   sum += bc;
		}
	
	System.out.println("uniq no ----"+uniq);
	System.out.println("sum-------------"+sum);
	int bc = s1;
	
System.out.println("bc---------"+bc);



















		
	%>
	
	<%
//lof
	
	%>
  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="scss/main.css">
    <link rel="stylesheet" href="scss/skin.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
    <script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "bor.jsp";
        
        
        
        document.getElementById("myButton1").onclick = function () {
        location.href = "viewreqlistlor.jsp";
    };
</script>


<style>

.mybutton
{
  background-color: #4CAF50; 

}



</style>
</head>

<body id="wrapper">

    <section id="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 top-header-links">
                    <ul class="contact_links">
                        
                    </ul>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <ul class="social_links">
                        
                    </ul>
                </div>
            </div>
        </div>
        </div>

    </section>

<%

String l = "1";
%>
    <header>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  			    <input  name="image" type="image" src="img/seal.png" width="100" height="100">
                    <a class="navbar-brand" href="#">
                      
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                     
                        <li ><a href="viewreqlistlor.jsp" style="background-color:white; color:red;" >Notification[<%=sum%>] </a></li>
                         <li><a href="index.html">Log Out</a></li>
                  
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <!--/.nav-ends -->
    </header>

    <section id="top_banner">
        <div class="banner">
            <div class="inner text-center">
                <h2>STAFF HOME</h2>
            </div>
        </div>
    </section>

<div align = "center" style="font-family:verdana"">
 
  <%
  String o = (String)request.getAttribute("success");
  if(o != null)
  {
  	
  	out.println("<font color=#159eee  size =4px>"+o+"</font>");
  	
  }

  
  %>

 <br/>
  
  
										<label style="color: red; font-size: 15px;">
										 <button onclick="location.href = 'viewreqlistlor.jsp';" style= "background-color:#159eee; color:white;     height: 100px; width:280px;  " id="myButton1"  >INBOX[<%=sum%>]</button>
											
										</label>
									</td>
     
</div>
<br/>
<br/>
<br/>
<br/>
<br/>

<br/>
  


   
        <a class="open" href="#"><span><i class="fa fa-gear fa-spin"></i></span></a>
    </div>

</body>

</html>