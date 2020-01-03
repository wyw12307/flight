package com.wdedu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdedu.mapper.FlightMapper;
import com.wdedu.po.Flight;
import com.wdedu.service.FlightService;
@Service
public class FlightServiceImpl implements FlightService{

	@Autowired
	private FlightMapper flightMapper;

	@Override
	public List<Flight> selectAll(String departureId, String destintionId, Integer currentPageNum, Integer pageSize) {
		// TODO Auto-generated method stub
		return flightMapper.selectAll(departureId, destintionId, currentPageNum, pageSize);
	}

	@Override
	public List<Flight> selectDeparture() {
		// TODO Auto-generated method stub
		return flightMapper.selectDeparture();
	}

	@Override
	public List<Flight> selectDestintion() {
		// TODO Auto-generated method stub
		return flightMapper.selectDestintion();
	}

	@Override
	public int getTotalCount(String departureId, String destintionId) {
		// TODO Auto-generated method stub
		return flightMapper.getTotalCount(departureId, destintionId);
	}

	

	

}
