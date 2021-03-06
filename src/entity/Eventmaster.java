package entity;

// Generated Mar 11, 2016 5:28:01 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Eventmaster generated by hbm2java
 */
@Entity
@Table(name = "eventmaster", schema = "public")
public class Eventmaster implements java.io.Serializable {

	private long recordid;
	private String eventname;
	private Date eventdate;
	private String eventdesc;
	private String eventtime;

	public Eventmaster() {
	}

	public Eventmaster(long recordid) {
		this.recordid = recordid;
	}

	public Eventmaster(long recordid, String eventname, Date eventdate,
			String eventdesc, String eventtime) {
		this.recordid = recordid;
		this.eventname = eventname;
		this.eventdate = eventdate;
		this.eventdesc = eventdesc;
		this.eventtime = eventtime;
	}

	@Id
	@Column(name = "recordid", unique = true, nullable = false)
	public long getRecordid() {
		return this.recordid;
	}

	public void setRecordid(long recordid) {
		this.recordid = recordid;
	}

	@Column(name = "eventname", length = 30)
	public String getEventname() {
		return this.eventname;
	}

	public void setEventname(String eventname) {
		this.eventname = eventname;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "eventdate", length = 4)
	public Date getEventdate() {
		return this.eventdate;
	}

	public void setEventdate(Date eventdate) {
		this.eventdate = eventdate;
	}

	@Column(name = "eventdesc", length = 100)
	public String getEventdesc() {
		return this.eventdesc;
	}

	public void setEventdesc(String eventdesc) {
		this.eventdesc = eventdesc;
	}

	@Column(name = "eventtime", length = 30)
	public String getEventtime() {
		return this.eventtime;
	}

	public void setEventtime(String eventtime) {
		this.eventtime = eventtime;
	}

}
