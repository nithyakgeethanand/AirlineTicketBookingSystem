package com.cdac;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class FlightInfoModel {
	public List<FlightInfo> getFlights(FlightInfo obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(FlightInfo.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		Query q = session.createQuery("From FlightInfo where f_source=:f_source and f_destination=:f_destination and date=:date");
		q.setParameter("f_source", obj.f_source);
		q.setParameter("f_destination",obj.f_destination); 
		q.setParameter("date",obj.date);        
        List<FlightInfo> resultList = q.list();
        return resultList;
	}
	
	public List<FlightInfo> selectedFlightInfo(FlightInfo obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(FlightInfo.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		Query q = session.createQuery("From FlightInfo where f_no=:f_no and date=:date ");
		q.setParameter("f_no", obj.f_no);
		q.setParameter("date",obj.date);        
        List<FlightInfo> resultList = q.list();
        return resultList;
	}
	
	
}
