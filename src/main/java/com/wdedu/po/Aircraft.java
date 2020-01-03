package com.wdedu.po;

public class Aircraft {
    private Integer aircraftId;

    private String aircraftName;

    private Integer airlineId;

	public Integer getAircraftId() {
		return aircraftId;
	}

	public void setAircraftId(Integer aircraftId) {
		this.aircraftId = aircraftId;
	}

	public String getAircraftName() {
		return aircraftName;
	}

	public void setAircraftName(String aircraftName) {
		this.aircraftName = aircraftName;
	}

	public Integer getAirlineId() {
		return airlineId;
	}

	public void setAirlineId(Integer airlineId) {
		this.airlineId = airlineId;
	}

	@Override
	public String toString() {
		return "Aircraft [aircraftId=" + aircraftId + ", aircraftName=" + aircraftName + ", airlineId=" + airlineId
				+ "]";
	}  
}