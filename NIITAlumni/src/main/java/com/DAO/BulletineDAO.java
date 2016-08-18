package com.DAO;

import java.util.List;
import com.model.Bulletine;



public interface BulletineDAO {

	public List<Bulletine> getList();
	public void addBulletine(Bulletine bul);
	public void editBulletine(Bulletine bul);
	public void deleteBulletine(int bullid);
	public Bulletine getBulletinebyId(int bullid);
	public List<Bulletine> getListApprove();
}
