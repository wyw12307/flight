
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Apricot v 1.3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/bootstrap.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.js"></script>
    <style type="text/css">
    	*{
    		padding: 0px;
    		margin: 0px;
    	}
    	body{
    		background: url(${pageContext.request.contextPath }/static/img/bg.jpg);
    	}
    	header{
    		width: 100%;
    		color:white;
    		overflow: hidden;
    		padding: 30px 30px;
    	}
        header div.time{
        	text-align: center;
        	border: 1px solid rgba(0,0,0,0.2);
        	line-height: 30px;
        	width: 200px;
        	border-radius: 50px;
        	background-color: steelblue;
        	margin-left: 10rem;
        	
        }
        header span.right{
        	float: right;
        	display: inline-block;
        }
        header span.left{
        	display: inline-block;
        	font-size: 30px;
        	font-weight: bold;
        }
        header span.left,header div.time{
        	float: left;
        }
        footer{
        	width: 100%;
        	text-align: center;
        	color:white;
        	line-height: 50px;
        	
        }
        article{
        	width: 100%;
        	color: white;
        	min-height: 700px;
        	overflow: hidden;
        }
        article aside{
        	width: 20%;
        	height: auto;
        }
        article aside ul{
        	margin: 0px;
        }
        article section{
        	width: 80%;
        	height: auto;
        	background-color: white;
        }
        article aside,article section{
        	float: left;
        	
        }
        article aside ul li{
        	padding: 10px 60px;
        	list-style: none;
        }
        article aside ul.parent{
        	background-color: rgba(0,0,0,0.1);
        	border-radius: 10px;
        	margin: 10px;
        }
        article aside ul.parent>li:hover{
        	background-color: rgba(0,0,0,0.2);
        	cursor: pointer;
        }
        article aside ul.child>li{
        	padding:10px 20px;
        }
        article aside ul.child>li>a{
        	text-decoration: none;
        	color: white;
        }
        article aside ul.child{
        	display: none;
        }
        
        div.title{
			margin-top: 15px;
		}
		div.title div.form-group{
			float: right;
		}
		div.managerList{
			padding: 0px 15px;
		}
		div.managerList table{
			color:rgba(0,0,0,0.7);
		}
		header img{
			width: 42px;
			height: 42px;
			display: inline-block;
			position: relative;
			z-index: 1000;
		}
		thead{
			/*background:linear-gradient(blue,white);*/
		}
		form label{
			color:rgba(0,0,0,0.7);
		}
		form.chaxun div.form-group{
			width: 30%;
			text-align: center;
			margin: 20px auto;
		}
		div.hangbaninfo{
			height: 300px;
			border: 1px solid black;
			border-radius: 15px;
			margin: 15px;
			padding-top: 15px;
			padding-right: 15px;
		}
		
    </style>
</head>

<body>

	<header>
		<span class="left"><img src="${pageContext.request.contextPath }/static/img/people-q-c-350-250-7.jpg" alt="" />后台管理</span>
		<div class="time">
			2011-11-11 11:11:11
		</div>
		<span class="right">HI,某某先生</span>
	</header>
	<article>
		<aside>
			<ul class="parent">
				<li><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;用户管理
					<ul class="child">
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
					</ul>
				</li>
				<li><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;第一级
					<ul class="child">
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
					</ul>
				</li>
				<li><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;第一级
					<ul class="child">
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
					</ul>
				</li>
				<li><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;第一级
					<ul class="child">
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
					</ul>
				</li>
				<li><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;第一级
					<ul class="child">
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
						<li><a href="">用户列表</a></li>
					</ul>
				</li>
			</ul>
		</aside>
		<section>
		<div class="managerList">
	<%
		//获取所有出发地
		DepartureDao departureDao=new DepartureDao();
		List<Departure> departures = departureDao.findAll(Departure.class);
		//获取所有目的地
		DestintionDao destintionDao=new DestintionDao();
		List<Destintion> destintions = destintionDao.findAll(Destintion.class);
	 %>
	<form action="go.jsp" id="tjform" class="form-inline chaxun">
		<div class="form-group">
	    	<label for="chufadi" >出发地:</label>
	    	<select name="departure_id" class="form-control" id="chufadi">
	    		<option value="-1">请选择</option>
	    		<%
	    		for(Departure departure : departures){
	    		%>
	    		<option value="<%=departure.getDeparture_id()%>"><%=departure.getDeparture_name() %></option>
	    		<%
	    		}
	    		 %>
	    	</select>
  		</div>
  		<div class="form-group">
	    	<label for="mudidi" >目的地:</label>
	    	<select name="destintion_id" class="form-control" id="mudidi">
	    		<option value="-1">请选择</option>
	    		<%
	    		for(Destintion destintion : destintions){
	    		%>
	    		<option value="<%=destintion.getDestintion_id()%>"><%=destintion.getDestintion_name() %></option>
	    		<%
	    		}
	    		 %>
	    	</select>
  		</div>
  		<div class="form-group">
  			<button type="submit" class="btn btn-primary">查询</button>
  		</div>
  		
	</form>		
	<script type="text/javascript">
		$(function(){
			$("#tjform").submit(function(){
				var flag=true;
				if(checkChuFaDi()==false)flag=false;
				if(checkMuDiDi()==false)flag=false;
				return flag;
			});
		});
		function checkChuFaDi(){
			var departure_id = $("[name=departure_id]").val();
			if((departure_id-0)<1){
				alert("请选择出发地");
				return false;
			}
			return true;
		}
		function checkMuDiDi(){
			var destintion_id = $("[name=destintion_id]").val();
			if((destintion_id-0)<1){
				alert("请选择目的地");
				return false;
			}
			return true;
		}
	</script>
	
	<table class="table table-responsive table-striped table-bordered table-hover table-condensed">
        <thead>
        <tr>
            <th>航班号</th>
            <th>航空公司</th>
            <th>出发时间</th>
            <th>到达时间</th>
            <th>票价</th>
        </tr>
        </thead>
        <tbody>
       <c:forEach items="${page.list }" var="flight">
        <tr>
            <td>${flight.aircraft_name }</td>
            <td>${flight.airline_name }</td>
            <td>${flight.starttime }</td>
            <td>${flight.endtime }</td>
            <td>${flight.ticket_price }</td>
            <td style="display: none">${flight.departure_name }</td>
            <td style="display: none">${flight.destintion_name }</td>
        </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="5">
                <ul class="pager">
                    <li><a href="go.jsp?yeshu=1">首页</a></li>
                    <li><a href="go.jsp?yeshu=${page.yeshu-1 }">&laquo;上一页</a></li>
                    <li><a href="go.jsp?yeshu=${page.yeshu+1 }">下一页&raquo;</a></li>
                    <li><a href="go.jsp?yeshu=${page.zongye }">末页</a></li>
                    <li><span>${page.yeshu }/${page.zongye }</span></li>
                </ul>

            </td>
        </tr>
        </tfoot>
    </table>
    <script type="text/javascript">
    	$(function(){
    		$("table tbody tr").click(function(){
    			
		        var aircraft_name= $(this).children("td").eq(0).html();
		        var airline_name= $(this).children("td").eq(1).html();
		        var starttime= $(this).children("td").eq(2).html();
		        var endtime= $(this).children("td").eq(3).html();
		        var ticket_price= $(this).children("td").eq(4).html();
		        var departure_name= $(this).children("td").eq(5).html();
		        var destintion_name= $(this).children("td").eq(6).html();
		       
		        $("[name=hbh]").val(aircraft_name);
		        $("[name=hkgs]").val(airline_name);
		        $("[name=cfd]").val(departure_name);
		        $("[name=mdd]").val(destintion_name);
		        $("[name=cfsj]").val(starttime);
		        $("[name=ddsj]").val(endtime);
		        $("[name=pj]").val(ticket_price);
		        $("#yuding").removeAttr("disabled");
    		});
    		
    		$("#form").submit(function(){
    			var flag = true;
    			if(checkNum()==false)flag=false;
    			if(checkTime()==false)flag=false;
    			//调用生成订单号的方法
    			alert("预订成功!订单号为:"+getOrderId());
    			return false;
    		});
    		
    		
    	
    	});
    	
    	function getOrderId(){
    		var now=new Date();
    		var year=now.getFullYear().toString();
    		var month=(now.getMonth()+1).toString();
    		var day=now.getDate().toString();
    		var hour=now.getHours().toString();
    		var min=now.getMinutes().toString();
    		var s=now.getSeconds().toString();
    		var suiji = (Math.round(Math.random() * 89 + 100)).toString();
    		return year+month+day+hour+min+s+suiji;
    	}
    	
    	function checkNum(){
    		var num = $("[name=ydsl]").val();
    		if((num-0)<1){
    			alert("预订数量必须>0个");
    			return false;
    		}
    		return true;
    	}
    	function checkTime(){
    		 var curTime=new Date();//获取系统当前时间
    		 var time = $("[name=ydsj]").val();
    		 var yuDingTime = new Date(Date.parse(time));
    		 if(yuDingTime<=curTime){
    		 	alert("出发日期必须大于当前日期");
    		 	return false;
    		 } 
    		 return true;
    	}
    </script>
    <div class="hangbaninfo">
    	<form action="" id="form" class="form-horizontal yuding" method="post">
    		<div class="form-group">
    			<label for="" class="col-sm-2 text-right">航班号:</label>
    			<div class="col-sm-4">
    				<input type="text" name="hbh" class="form-control" readonly />
    			</div>
    			<label for="" class="col-sm-2 text-right">航空公司:</label>
    			<div class="col-sm-4">
    				<input type="text" name="hkgs" class="form-control" readonly/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label for="" class="col-sm-2 text-right">出发地:</label>
    			<div class="col-sm-4">
    				<input type="text" name="cfd" class="form-control" readonly/>
    			</div>
    			<label for="" class="col-sm-2 text-right">目的地:</label>
    			<div class="col-sm-4">
    				<input type="text" name="mdd" class="form-control" readonly/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label for="" class="col-sm-2 text-right">出发时间:</label>
    			<div class="col-sm-4">
    				<input type="text" name="cfsj" class="form-control" readonly/>
    			</div>
    			<label for="" class="col-sm-2 text-right">到达时间:</label>
    			<div class="col-sm-4">
    				<input type="text" name="ddsj" class="form-control" readonly/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label for="" class="col-sm-2 text-right">票价:</label>
    			<div class="col-sm-4">
    				<input type="text" name="pj" class="form-control" readonly/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label for="" class="col-sm-2 text-right">预订数量:</label>
    			<div class="col-sm-4">
    				<input type="number" required name="ydsl"  class="form-control" />
    			</div>
    			<label for="" class="col-sm-2 text-right">出发时间:</label>
    			<div class="col-sm-4">
    				<input type="date" required name="ydsj" class="form-control" />
    			</div>
    		</div>
    		<div class="form-group">
			    <div class="col-sm-offset-10 col-sm-11">
			      <input type="submit" disabled class="btn btn-default" id="yuding" value="预订" />
			    </div>
			</div>
    	</form>
    </div>
   </div>
		</section>
	</article>
    <footer>
    	© 2017. All RIGHT RESERVED. ORACLE 版权所有
    </footer>
    
    
    <script>
    	$(function(){
    		var articleHeight = $("article").height();
    		$("article aside").height(articleHeight);
    		$("article section").height(articleHeight);
        	setInterval("getDateTime()",1000);
        	$("article aside ul.parent>li").click(function(){
        		var display = $(this).children("ul.child").css("display");
        		$(this).siblings().children("span").attr("class","glyphicon glyphicon-plus");
        		$(this).siblings().children("ul.child").hide(1000);
        		if(display=="none"){
        			$(this).children("span").attr("class","glyphicon glyphicon-minus");
        			$(this).children("ul.child").show(1000);
        		}
        		else{
        			$(this).children("span").attr("class","glyphicon glyphicon-plus");
        			$(this).children("ul.child").hide(1000);
        		}
        	});
    	});
	    function getDateTime(){
	        var date=new Date();
	        var year = date.getFullYear();
	        var month = date.getMonth()+1;
	        var day=date.getDate();
	        var h=date.getHours();
	        var m=date.getMinutes();
	        var s=date.getSeconds();
	        if(month<10)
	            month="0"+month;
	        if(day<10)
	            day="0"+day;
	        if(h<10)
	            h="0"+h;
	        if(m<10)
	            m="0"+m;
	        if(s<10)
	            s="0"+s;
	        var str=year+"-"+month+"-"+day+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+h+":"+m+":"+s;
	        $("header div.time").html(str);
	    }
    </script>
</body>

</html>
