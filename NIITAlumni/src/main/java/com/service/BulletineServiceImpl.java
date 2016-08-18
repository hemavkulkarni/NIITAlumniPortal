package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.BlogDAO;
import com.DAO.BulletineDAO;
import com.model.Bulletine;

@Service
public class BulletineServiceImpl implements BulletineService{

	@Autowired
	BulletineDAO bulDao;
	@Transactional
	public List<Bulletine> getList() {
		return bulDao.getList();
	}

	@Override
	public void addBulletine(Bulletine bul) {
		bulDao.addBulletine(bul);
		
	}

	@Override
	public void editBulletine(Bulletine bul) {
		bulDao.editBulletine(bul);
	}

	@Override
	public void deleteBulletine(int bullid) {
		bulDao.deleteBulletine(bullid);
	}

	@Override
	public Bulletine getBulletinebyId(int bullid) {
		return bulDao.getBulletinebyId(bullid);
	}

	@Override
	public List<Bulletine> getListApprove() {
		
		return null;
	}

}
