package ru.javastudy.SpringStudy.mvc.bean;

import javax.xml.bind.annotation.XmlElement;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter @Setter
public class DBLog implements Serializable {
    private static final long serialVersionUID = 1L;
    private int IDLOG;
    private String LOGSTRING;

    public DBLog() {
    }

    public DBLog (int idLog, String logString) {
        this.IDLOG = idLog;
        this.LOGSTRING = logString;
    }

    public int getIDLOG() {
        return IDLOG;
    }

    @XmlElement
    public void setIDLOG(int iDLOG) {
        IDLOG = iDLOG;
    }

    public String getLOGSTRING() {
        return LOGSTRING;
    }

    @XmlElement
    public void setLOGSTRING(String lOGSTRING) {
        LOGSTRING = lOGSTRING;
    }
}
