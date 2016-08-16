package com.DAO;

import java.util.List;

import com.model.WhatNew;


public interface WhatNewDAO {
	public List<WhatNew> getList();
	public void addWhatNew(WhatNew blog);
	public void editWhatNew(WhatNew m);
	public void deleteWhatNew(int whatnewid);
	public WhatNew getWhatNewbyId(int whatnewid);

}
