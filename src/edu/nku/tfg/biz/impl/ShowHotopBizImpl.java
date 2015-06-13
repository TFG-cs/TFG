package edu.nku.tfg.biz.impl;

import java.util.List;

import edu.nku.tfg.biz.IShowHotopBiz;
import edu.nku.tfg.dao.IShowHotopDao;
import edu.nku.tfg.dao.impl.ShowHotopDaoImpl;
import edu.nku.tfg.po.Topic;

public class ShowHotopBizImpl implements IShowHotopBiz {

	private IShowHotopDao showHotopDao;
	
	
	public ShowHotopBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.showHotopDao = new ShowHotopDaoImpl();
	}


	@Override
	public List<Topic> findHotop() {
		// TODO Auto-generated method stub
		return showHotopDao.selectHotop();
	}

}
