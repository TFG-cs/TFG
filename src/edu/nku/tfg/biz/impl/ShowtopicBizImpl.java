package edu.nku.tfg.biz.impl;

import java.util.List;

import edu.nku.tfg.biz.IShowtopicBiz;
import edu.nku.tfg.dao.IShowtopicDao;
import edu.nku.tfg.dao.impl.ShowtopicDaoImpl;
import edu.nku.tfg.po.Topic;

public class ShowtopicBizImpl implements IShowtopicBiz {

	private IShowtopicDao showtopicDao;
	
	
	public ShowtopicBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.showtopicDao = new ShowtopicDaoImpl();
	}


	@Override
	public List<Topic> showAll(int schoolID) {
		// TODO Auto-generated method stub
		return showtopicDao.selectAll(schoolID);
	}

}
