package com.cdac;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class AdminModel {
	public List<FlightInfo> getFlights() {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(FlightInfo.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		Query q = session.createQuery("From FlightInfo");
		List<FlightInfo> resultList = q.list();
        return resultList;
	}
	
	public void saveValues(FlightInfo obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(FlightInfo.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		session.save(obj);
		t.commit();
	}
	
	
	  public void deleteValues(FlightInfo obj) {
		  SessionFactory factory=new Configuration() 
		  							.configure("hibernate.cfg.xml")
		  							.addAnnotatedClass(FlightInfo.class) 
		  							.buildSessionFactory();
		  System.out.println("deleted values" +obj.f_no +obj.date); 
		  Session session=factory.openSession(); 
		  Transaction t=session.beginTransaction();
		  Query<FlightInfo> q=session.createQuery("delete from FlightInfo where f_no=:f_no and date=:date");
		  q.setParameter("f_no", obj.getF_no());
		  q.setParameter("date",obj.getDate());
		  q.executeUpdate();
		  t.commit(); 
		  session.close();
	  }
	  
	  public void updateValue(FlightInfo obj) {
		  SessionFactory factory=new Configuration() 
		  							.configure("hibernate.cfg.xml")
		  							.addAnnotatedClass(FlightInfo.class) 
		  							.buildSessionFactory();
		  Session session=factory.openSession(); 
		  Transaction t=session.beginTransaction();
		  Query<FlightInfo> q=session.createQuery("update FlightInfo set f_time=:f_time, date=:date, amount=:amount where f_no=:f_no");
		  q.setParameter("f_time", obj.getF_time());
		  q.setParameter("date",obj.getDate());
		  q.setParameter("amount",obj.getAmount());
		  q.setParameter("f_no",obj.getF_no());
		  q.executeUpdate();
		  t.commit(); 
		  session.close();
	  }
	 
}
