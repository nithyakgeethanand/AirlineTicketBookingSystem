package com.cdac;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class BookFlightModel {
	public List<BookFlight> getBookingDetails(BookFlight obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(BookFlight.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		Query<BookFlight> q=session.createQuery("from BookFlight where fnumber=:fnumber and date=:date and username=:username");
		q.setParameter("fnumber", obj.fnumber);
		q.setParameter("date",obj.date);
		q.setParameter("username", obj.username);
		/* q.setParameter("seatnumber", obj.seatnumber); */
		
		List<BookFlight> resultList = q.list();
        return resultList;
	}
	
	public void bookingValues(BookFlight obj) {
		System.out.println(obj.fnumber +obj.date +obj.username );
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(BookFlight.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		session.save(obj);
		t.commit();
	}
	
	public void updateAdditionalPassengers(BookFlight obj) {
		  SessionFactory factory=new Configuration() 
		  							.configure("hibernate.cfg.xml")
		  							.addAnnotatedClass(BookFlight.class) 
		  							.buildSessionFactory();
		  Session session=factory.openSession(); 
		  Transaction t=session.beginTransaction();
		  Query<BookFlight> q=session.createQuery("update BookFlight set noofpassenger=:noofpassenger, additional1=:additional1, additional2=:additional2, additional3=:additional3, additional4=:additional4, totalamount=:totalamount where username=:username");
		  System.out.println("update queryyyy"+obj.noofpassenger +obj.additional1 +obj.totalamount +obj.username );
		  q.setParameter("noofpassenger", obj.getNoofpassenger());
		  q.setParameter("additional1",obj.getAdditional1());
		  q.setParameter("additional2",obj.getAdditional2());
		  q.setParameter("additional3",obj.getAdditional3());
		  q.setParameter("additional4",obj.getAdditional4());
		  q.setParameter("totalamount",obj.getTotalamount());
		  q.setParameter("username",obj.getUsername());
		  q.executeUpdate();
		  t.commit(); 
		  session.close();
	  }

}
