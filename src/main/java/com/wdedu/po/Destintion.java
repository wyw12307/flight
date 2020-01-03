package com.wdedu.po;

public class Destintion {
    private Integer destintionId;

    private String destintionName;

    public Integer getDestintionId() {
        return destintionId;
    }

    public void setDestintionId(Integer destintionId) {
        this.destintionId = destintionId;
    }

    public String getDestintionName() {
        return destintionName;
    }

    public void setDestintionName(String destintionName) {
        this.destintionName = destintionName == null ? null : destintionName.trim();
    }
}