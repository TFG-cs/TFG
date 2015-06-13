package edu.nku.tfg.biz.impl;

import java.util.List;

import edu.nku.tfg.biz.IHotSchoolBiz;
import edu.nku.tfg.dao.ISelectSchoolDao;
import edu.nku.tfg.dao.impl.SelectSchoolDaoImpl;
import edu.nku.tfg.po.School;

public class HotSchoolBizImpl implements IHotSchoolBiz {

	@Override
	public List<School> hotSchool() {
		// TODO Auto-generated method stub
		ISelectSchoolDao dao =new SelectSchoolDaoImpl();
		return dao.SelectSchoolBySighNumDao();
	}

}
