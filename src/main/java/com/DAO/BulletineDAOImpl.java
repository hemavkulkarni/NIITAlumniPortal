package com.DAO;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Blog;
import com.model.Bulletine;

@Repository
public class BulletineDAOImpl implements BulletineDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public List<Bulletine> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Bulletine> bulList = session.createQuery("from Bulletine").list();
		session.close();
		return bulList;
	}

	@Transactional
	public void addBulletine(Bulletine bul) {
		Session session = sessionFactory.openSession();
		bul.setId(bul.getId());
		bul.setTitle(bul.getTitle());
		bul.setDesc(bul.getDesc());
		bul.setCreationDate(new Date());
		bul.setValidDate(bul.getValidDate());

		session.saveOrUpdate(bul);

		session.flush();
		session.close();
	}

	@Transactional
	public void editBulletine(Bulletine bul) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(bul);

		session.flush();
		session.close();
	}

	@Transactional
	public void deleteBulletine(int bulid) {
		sessionFactory.openSession().createQuery("DELETE FROM Bulletine WHERE id = " + bulid).executeUpdate();
	}

	@Transactional
	public Bulletine getBulletinebyId(int bullid) {
		Session session = sessionFactory.openSession();
		Bulletine bul = (Bulletine) session.load(Bulletine.class, bullid);
		return bul;
	}

	@Transactional
	public List<Bulletine> getListApprove() {
		// TODO Auto-generated method stub
		return null;
	}

}
