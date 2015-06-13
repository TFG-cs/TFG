package edu.nku.tfg.biz.impl;

import java.util.List;

import edu.nku.tfg.biz.IShowCommentBiz;
import edu.nku.tfg.dao.IShowCommentDao;
import edu.nku.tfg.dao.impl.ShowCommentDaoImpl;
import edu.nku.tfg.po.Comment;

public class ShowCommentBizImpl implements IShowCommentBiz {

	private IShowCommentDao showCommentDao;
	
	
	public ShowCommentBizImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.showCommentDao = new ShowCommentDaoImpl();
	}


	@Override
	public List<Comment> findComByTid(int topicID) {
		// TODO Auto-generated method stub
		return showCommentDao.selectComByTid(topicID);
	}

}
