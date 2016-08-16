package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.DAO.WhatNewDAO;
import com.model.WhatNew;

@Service
public class WhatNewServiceImpl implements WhatNewService{
	@Autowired
	WhatNewDAO newDao;
	@Override
	public List<WhatNew> getList() {
		// TODO Auto-generated method stub
		return newDao.getList();
	}

	@Override
	public void addWhatNew(WhatNew wnew) {
		newDao.addWhatNew(wnew);
	}

	@Override
	public void editWhatNew(WhatNew wnew) {
		newDao.editWhatNew(wnew);
		
	}

	@Override
	public void deleteWhatNew(int whatnewid) {
		newDao.deleteWhatNew(whatnewid);
	}

	@Override
	public WhatNew getWhatNewbyId(int whatnewid) {
		return newDao.getWhatNewbyId(whatnewid);
	}

}
