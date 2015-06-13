package edu.nku.tfg.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.nku.tfg.dao.IShowHotopDao;
import edu.nku.tfg.db.ConnectionManager;
import edu.nku.tfg.db.DBUtils;
import edu.nku.tfg.db.TransactionManager;
import edu.nku.tfg.po.Topic;

public class ShowHotopDaoImpl implements IShowHotopDao {

	private ConnectionManager connectionManager;
	private Connection conn;
	private DBUtils dbUtils;
	
	
	public ShowHotopDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
	}

	@Override
	public List<Topic> selectHotop() {
		// TODO Auto-generated method stub
		this.conn = this.connectionManager.openConnection();
		TransactionManager.conn = conn;
		TransactionManager.beginTransaction();
		
		String strSQL = "select top 5 topicID,userID,schoolID,topicTitle,topicText,topicTime,clickTimes,stick order by clickTimes desc from topic";
		ResultSet resultSet = this.dbUtils.execQuery(conn,strSQL,new Object());
		List<Topic> lstTopic = new ArrayList<Topic>();
		try {
			while(resultSet.next()){
				Topic t= new Topic();
				t.setTopicID(resultSet.getInt(1));
				t.setUserID(resultSet.getInt(2));
				t.setSchoolID(resultSet.getInt(3));
				t.setTopicTitle(resultSet.getString(4));
				t.setTopicText(resultSet.getString(5));
				t.setTopicTime(resultSet.getDate(6));
				t.setClickTimes(resultSet.getInt(7));
				t.setStick(resultSet.getInt(8));
				lstTopic.add(t);				
			}
			return lstTopic;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally{
			this.connectionManager.closeConnection(conn);
		}
	}

}
