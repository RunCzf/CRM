package com.briup.crm.common.bean;

import java.math.BigDecimal;
import java.util.Date;

public class CstLog {
    private BigDecimal logId;

    private String logOp;

    private String logEvent;

    private Date logDate;

    public BigDecimal getLogId() {
        return logId;
    }

    public void setLogId(BigDecimal logId) {
        this.logId = logId;
    }

    public String getLogOp() {
        return logOp;
    }

    public void setLogOp(String logOp) {
        this.logOp = logOp == null ? null : logOp.trim();
    }

    public String getLogEvent() {
        return logEvent;
    }

    public void setLogEvent(String logEvent) {
        this.logEvent = logEvent == null ? null : logEvent.trim();
    }

    public Date getLogDate() {
        return logDate;
    }

    public void setLogDate(Date logDate) {
        this.logDate = logDate;
    }
}