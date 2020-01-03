package com.wdedu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wdedu.po.Flight;
import com.wdedu.service.FlightService;

@Controller
public class AircraftController {

	@Autowired
	private FlightService flightService;

	@RequestMapping("aircraftList")
	public ModelAndView queryUsersList(HttpServletRequest request) throws Exception {

		String departureId = request.getParameter("departureId");
		String destintionId = request.getParameter("destintionId");
		String currentPageNum = request.getParameter("yeshu");

		Flight flight = new Flight();

		List<Flight> depList = flightService.selectDeparture();
		List<Flight> desList = flightService.selectDestintion();
		// 总记录数
		flight.setTotalPageCount(flightService.getTotalCount(departureId, destintionId));
		// 每页记录数
		flight.setPageSize(3);
		// 总页码
		flight.setTotalPageSize(flight.getTotalPageSize());
		
		if (currentPageNum == null || currentPageNum.equals("0") || currentPageNum.equals("")) {
			currentPageNum = "1";
		}
		if (Integer.valueOf(currentPageNum)>flight.getTotalPageSize()) {
			currentPageNum = String.valueOf(flight.getTotalPageSize());
		}
		
		// 当前页码
		flight.setCurrentPageNum(Integer.valueOf(currentPageNum));
		
		List<Flight> list = flightService.selectAll(departureId, destintionId,Integer.valueOf(currentPageNum), flight.getPageSize());

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("aircraftList", list);
		modelAndView.addObject("depList", depList);
		modelAndView.addObject("desList", desList);
		modelAndView.addObject("page", flight);

		modelAndView.setViewName("aircraft/aircraftList");

		return modelAndView;

	}

}
