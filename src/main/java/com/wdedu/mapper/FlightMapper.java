package com.wdedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wdedu.po.Flight;

public interface FlightMapper {

	public List<Flight> selectAll(@Param("departureId")String departureId,@Param("destintionId")String destintionId,@Param("currentPageNum")Integer currentPageNum,@Param("pageSize")Integer pageSize);
	
	public List<Flight> selectDeparture();
	
	public List<Flight> selectDestintion();
	
	public int getTotalCount(@Param("departureId")String departureId,@Param("destintionId")String destintionId);
	
}
