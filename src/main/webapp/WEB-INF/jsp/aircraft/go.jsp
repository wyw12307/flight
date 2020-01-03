<%@page import="com.bdqn.entity.Page"%>
<%@page import="com.bdqn.entity.Vw_flight_info_temp"%>
<%@page import="com.bdqn.dao.FlightDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
  </head>
  
  <body>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	String yeshu = request.getParameter("yeshu");
    	String departure_id = request.getParameter("departure_id");
    	String destintion_id = request.getParameter("destintion_id");
    	String sql="select id,aircraft_id,aircraft_name,departure_id,departure_name,destintion_id,destintion_name,airline_name,ticket_price,starttime,endtime from vw_flight_info_temp ";
		String countSql="select count(1) from vw_flight_info_temp ";
				//"where departure_id=? and destintion_id=? limit ?,?";
    	if(yeshu==null){
    		yeshu="1";
    	}
    	if(departure_id==null){
    		departure_id="-1";
    	}
    	if(destintion_id==null){
    		destintion_id="-1";
    	}
    	Integer departureId = Integer.valueOf(departure_id);
    	Integer destintionId = Integer.valueOf(destintion_id);
    	Object[] objs=null;
    	if(departureId>0 && destintionId>0){
    		objs=new Object[]{departureId,destintionId};
    		sql+=" where departure_id=? and destintion_id=? ";
    		countSql+=" where departure_id=? and destintion_id=? ";
    	}
    	sql+=" limit ?,? ";
    	FlightDao flightDao=new FlightDao();
    	Integer zonghang = flightDao.count(countSql, objs);
    	Page<Vw_flight_info_temp> p=new Page<Vw_flight_info_temp>();
    	p.setHangshu(5);
    	p.setZonghang(zonghang);
    	p.setYeshu(Integer.valueOf(yeshu));
    	List<Vw_flight_info_temp> flights =
    	flightDao.getAllByTj(sql, Vw_flight_info_temp.class, objs, p.getYeshu(), p.getHangshu());
    	p.setList(flights);
    	request.setAttribute("page", p);
    	request.getRequestDispatcher("hangban.jsp").forward(request, response);
     %>
    
    
  </body>
</html>
