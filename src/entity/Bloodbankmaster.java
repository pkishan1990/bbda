package entity;
// Generated 27-Feb-2017 10:30:00 PM by Hibernate Tools 5.2.1.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Bloodbankmaster generated by hbm2java
 */
@Entity
@Table(name = "bloodbankmaster", schema = "public")
public class Bloodbankmaster implements java.io.Serializable {

	private long recordid;
	private String bloodbankname;
	private String code;
	private String sdesc;
	private String bankaddress;
	private String bankphone1;
	private String bankphone2;
	private String postalcode;
	private String city;
	private String province;
	private String country;
	private String ldesc;

	public Bloodbankmaster() {
	}

	public Bloodbankmaster(long recordid) {
		this.recordid = recordid;
	}

	public Bloodbankmaster(long recordid, String bloodbankname, String code, String sdesc, String bankaddress,
			String bankphone1, String bankphone2, String postalcode, String city, String province, String country,
			String ldesc) {
		this.recordid = recordid;
		this.bloodbankname = bloodbankname;
		this.code = code;
		this.sdesc = sdesc;
		this.bankaddress = bankaddress;
		this.bankphone1 = bankphone1;
		this.bankphone2 = bankphone2;
		this.postalcode = postalcode;
		this.city = city;
		this.province = province;
		this.country = country;
		this.ldesc = ldesc;
	}

	@Id

	@Column(name = "recordid", unique = true, nullable = false)
	public long getRecordid() {
		return this.recordid;
	}

	public void setRecordid(long recordid) {
		this.recordid = recordid;
	}

	@Column(name = "bloodbankname", length = 30)
	public String getBloodbankname() {
		return this.bloodbankname;
	}

	public void setBloodbankname(String bloodbankname) {
		this.bloodbankname = bloodbankname;
	}

	@Column(name = "code", length = 3)
	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Column(name = "sdesc", length = 60)
	public String getSdesc() {
		return this.sdesc;
	}

	public void setSdesc(String sdesc) {
		this.sdesc = sdesc;
	}

	@Column(name = "bankaddress", length = 100)
	public String getBankaddress() {
		return this.bankaddress;
	}

	public void setBankaddress(String bankaddress) {
		this.bankaddress = bankaddress;
	}

	@Column(name = "bankphone1", length = 10)
	public String getBankphone1() {
		return this.bankphone1;
	}

	public void setBankphone1(String bankphone1) {
		this.bankphone1 = bankphone1;
	}

	@Column(name = "bankphone2", length = 10)
	public String getBankphone2() {
		return this.bankphone2;
	}

	public void setBankphone2(String bankphone2) {
		this.bankphone2 = bankphone2;
	}

	@Column(name = "postalcode", length = 10)
	public String getPostalcode() {
		return this.postalcode;
	}

	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}

	@Column(name = "city", length = 20)
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "province", length = 20)
	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	@Column(name = "country", length = 20)
	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "ldesc", length = 60)
	public String getLdesc() {
		return this.ldesc;
	}

	public void setLdesc(String ldesc) {
		this.ldesc = ldesc;
	}

}
