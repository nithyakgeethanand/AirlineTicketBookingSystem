package com.cdac;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FlightInfo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	String f_no, f_name, f_source, f_destination, date, f_time, airportname, amount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getF_no() {
		return f_no;
	}

	public void setF_no(String f_no) {
		this.f_no = f_no;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getF_source() {
		return f_source;
	}

	public void setF_source(String f_source) {
		this.f_source = f_source;
	}

	public String getF_destination() {
		return f_destination;
	}

	public void setF_destination(String f_destination) {
		this.f_destination = f_destination;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getF_time() {
		return f_time;
	}

	public void setF_time(String f_time) {
		this.f_time = f_time;
	}

	public String getAirportname() {
		return airportname;
	}

	public void setAirportname(String airportname) {
		this.airportname = airportname;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

}
