package com.DAO;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Bulletine;
import com.model.WhatNew;

@Repository
public class WhatNewDAOImpl implements WhatNewDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public List<WhatNew> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<WhatNew> newList = session.createQuery("from WhatNew").list();
		session.close();
		return newList;
	}

	@Transactional
	public void addWhatNew(WhatNew wnew) {
		Session session = sessionFactory.openSession();
		wnew.setId(wnew.getId());
		wnew.setTitle(wnew.getTitle());
		wnew.setDesc(wnew.getDesc());
		wnew.setCreationDate(new Date());
		wnew.setValidDate(wnew.getValidDate());

		session.saveOrUpdate(wnew);

		session.flush();
		session.close();
	}

	@Transactional
	public void editWhatNew(WhatNew wnew) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(wnew);

		session.flush();
		session.close();
	}

	@Transactional
	public void deleteWhatNew(int whatnewid) {
		sessionFactory.openSession().createQuery("DELETE FROM WhatNew WHERE whatnewid = " + whatnewid).executeUpdate();
	}

	@Transactional
	public WhatNew getWhatNewbyId(int whatnewid) {
		Session session = sessionFactory.openSession();
		WhatNew wnew = (WhatNew) session.load(WhatNew.class, whatnewid);
		return wnew;
	}

}
