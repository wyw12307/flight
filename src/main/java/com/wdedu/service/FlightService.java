package com.wdedu.service;

import com.wdedu.po.Flight;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface FlightService {

	public List<Flight> selectAll(@Param("departureId")String departureId,@Param("destintionId")String destintionId,@Param("currentPageNum")Integer currentPageNum,@Param("pageSize")Integer pageSize);

	public List<Flight> selectDeparture();

	public List<Flight> selectDestintion();
	
	public int getTotalCount(@Param("departureId")String departureId,@Param("destintionId")String destintionId);

}