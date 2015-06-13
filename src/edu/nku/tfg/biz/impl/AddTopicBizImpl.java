package edu.nku.tfg.biz.impl;

import edu.nku.tfg.biz.IAddTopicBiz;
import edu.nku.tfg.dao.ITopicDao;
import edu.nku.tfg.dao.impl.TopicDaoImpl;
import edu.nku.tfg.po.Topic;

public class AddTopicBizImpl implements IAddTopicBiz {

	@Override
	public boolean addNewTopic(Topic T) {
		// TODO Auto-generated method stub
	    ITopicDao dao=new TopicDaoImpl();
		if(dao.insert(T)>0){
			return true;
		}else{
			return false;
		}
	
	}

}
