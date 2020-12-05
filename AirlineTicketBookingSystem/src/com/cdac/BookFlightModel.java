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

}
