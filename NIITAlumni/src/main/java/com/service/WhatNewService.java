package com.service;

import java.util.List;

import com.model.WhatNew;

public interface WhatNewService {
	public List<WhatNew> getList();
	public void addWhatNew(WhatNew wnew);
	public void editWhatNew(WhatNew m);
	public void deleteWhatNew(int whatnewid);
	public WhatNew getWhatNewbyId(int whatnewid);
}
