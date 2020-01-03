package com.wdedu.po;

import java.math.BigDecimal;
import java.util.Date;

public class FlightInfo {
    private Integer id;

    private Integer departureId;

    private Integer destinationId;

    private Integer aircraftId;

    private Date starttime;

    private Date endtime;

    private Integer ticketPrice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDepartureId() {
        return departureId;
    }

    public void setDepartureId(Integer departureId) {
        this.departureId = departureId;
    }

    public Integer getDestinationId() {
        return destinationId;
    }

    public void setDestinationId(Integer destinationId) {
        this.destinationId = destinationId;
    }

    public Integer getAircraftId() {
        return aircraftId;
    }

    public void setAircraftId(Integer aircraftId) {
        this.aircraftId = aircraftId;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Integer getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(Integer ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

	@Override
	public String toString() {
		return "FlightInfo [id=" + id + ", departureId=" + departureId + ", destinationId=" + destinationId
				+ ", aircraftId=" + aircraftId + ", starttime=" + starttime + ", endtime=" + endtime + ", ticketPrice="
				+ ticketPrice + "]";
	}
    
}