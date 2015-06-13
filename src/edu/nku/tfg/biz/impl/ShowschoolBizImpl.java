package edu.nku.tfg.biz.impl;

import java.util.List;

import edu.nku.tfg.biz.IShowschoolBiz;
import edu.nku.tfg.dao.IShowschoolDao;
import edu.nku.tfg.dao.impl.ShowschoolDaoImpl;
import edu.nku.tfg.po.School;

public class ShowschoolBizImpl implements IShowschoolBiz {

	private IShowschoolDao showschoolDao ;
	
	
	public ShowschoolBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.showschoolDao = new ShowschoolDaoImpl();
	}
	@Override
	public List<School> showSch(int schoolID) {
		// TODO Auto-generated method stub
		return showschoolDao.selectSchById(schoolID);
	}

}
