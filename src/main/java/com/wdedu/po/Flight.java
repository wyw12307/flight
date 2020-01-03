package com.wdedu.po;

import java.util.List;

public class Flight {
	
	// 当前页码
	private Integer currentPageNum;
	// 总页码
	private Integer totalPageSize;
	// 每页记录数
	private Integer pageSize;
	// 总记录数
	private Integer totalPageCount;
	
	private List<Aircraft> aircrafts;
	private List<Airline> airlines; 
	private List<Departure> departures;
	private List<Destintion> destintions;
	private List<FlightInfo> flightInfos;
	
	public Integer getCurrentPageNum() {
		return currentPageNum;
	}

	public void setCurrentPageNum(Integer currentPageNum) {
		if (currentPageNum > 0) {
			this.currentPageNum = currentPageNum;
		} else {
			currentPageNum = 1;
		}
	}

	public Integer getTotalPageSize() {
		return (totalPageCount % pageSize == 0) ? (totalPageCount / pageSize) : (totalPageCount / pageSize + 1);
	}

	public void setTotalPageSize(Integer totalPageSize) {
		this.totalPageSize = totalPageSize;
	}

	public Integer getPageSize() {
		if (pageSize!=null) {
			return pageSize;
		}
		return 3;
	}

	public void setPageSize(Integer pageSize) {
		// 每页记录数大于0
		if (pageSize!=null) {
			this.pageSize = pageSize;
		} else {
			this.pageSize = 3;
		}
	}

	public Integer getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(Integer totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	
	
	public List<Aircraft> getAircrafts() {
		return aircrafts;
	}
	public void setAircrafts(List<Aircraft> aircrafts) {
		this.aircrafts = aircrafts;
	}
	public List<Airline> getAirlines() {
		return airlines;
	}
	public void setAirlines(List<Airline> airlines) {
		this.airlines = airlines;
	}
	public List<Departure> getDepartures() {
		return departures;
	}
	public void setDepartures(List<Departure> departures) {
		this.departures = departures;
	}
	public List<Destintion> getDestintions() {
		return destintions;
	}
	public void setDestintions(List<Destintion> destintions) {
		this.destintions = destintions;
	}
	public List<FlightInfo> getFlightInfos() {
		return flightInfos;
	}
	public void setFlightInfos(List<FlightInfo> flightInfos) {
		this.flightInfos = flightInfos;
	}

	@Override
	public String toString() {
		return "Flight [currentPageNum=" + currentPageNum + ", totalPageSize=" + totalPageSize + ", pageSize="
				+ pageSize + ", totalPageCount=" + totalPageCount + ", aircrafts=" + aircrafts + ", airlines="
				+ airlines + ", departures=" + departures + ", destintions=" + destintions + ", flightInfos="
				+ flightInfos + "]";
	}
	
	
	

}
