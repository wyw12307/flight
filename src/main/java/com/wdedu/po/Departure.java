package com.wdedu.po;

public class Departure {
    private Integer departureId;

    private String departureName;

    public Integer getDepartureId() {
        return departureId;
    }

    public void setDepartureId(Integer departureId) {
        this.departureId = departureId;
    }

    public String getDepartureName() {
        return departureName;
    }

    public void setDepartureName(String departureName) {
        this.departureName = departureName == null ? null : departureName.trim();
    }
}