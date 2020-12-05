package com.cdac;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class LoginModel {
	public boolean login(Login obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(Login.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		Query<Login> q=session.createQuery("from Login where username=:username and password=:password");
		q.setParameter("username", obj.username);
		q.setParameter("password",obj.password);
	
		List<Login> l=q.getResultList();
		if(l.size()>0)
			return true;
		else
			return false;
	}
	
	public void registerValues(Login obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(Login.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		session.save(obj);
		t.commit();
	}
	
	public List<Login> selectedUserInfo(Login obj) {
		SessionFactory factory=new Configuration()
	               .configure("hibernate.cfg.xml")
	               .addAnnotatedClass(Login.class)
	               .buildSessionFactory();
		Session session=factory.getCurrentSession();
		Transaction t=session.beginTransaction();
		Query q = session.createQuery("From Login where username=:username");
		q.setParameter("username", obj.username);       
        List<Login> resultList = q.list();
        return resultList;
	}


}
