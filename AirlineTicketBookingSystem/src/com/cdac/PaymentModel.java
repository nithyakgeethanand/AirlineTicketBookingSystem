package com.cdac;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class PaymentModel {
	public List<Payment> getPayment(Payment obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(Payment.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		Query q = session.createQuery("From Payment");
        return null;
	}
	
	public void saveValues(Payment obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(Payment.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		session.save(obj);
		t.commit();
	}
}
