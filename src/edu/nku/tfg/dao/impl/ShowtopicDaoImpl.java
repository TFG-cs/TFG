package edu.nku.tfg.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.nku.tfg.dao.IShowtopicDao;
import edu.nku.tfg.db.ConnectionManager;
import edu.nku.tfg.db.DBUtils;
import edu.nku.tfg.db.TransactionManager;
import edu.nku.tfg.po.Topic;

public class ShowtopicDaoImpl implements IShowtopicDao {


		private ConnectionManager connectionManager;
		private Connection conn;
		private DBUtils dbUtils;
		

		public ShowtopicDaoImpl()
		{
			super();
			// TODO Auto-generated constructor stub
			this.connectionManager = new ConnectionManager();
			this.dbUtils = new DBUtils();
		}


		@Override
		public List<Topic> selectAll(int schoolID)
		{
			// TODO Auto-generated method stub
			this.conn = this.connectionManager.openConnection();
			TransactionManager.conn = conn;
			TransactionManager.beginTransaction();

			Object[] params = new Object[]{schoolID};
			String strSQL = "select topicID,userID,topicTitle,topicText,topicTime,clickTimes,stick from topic where schoolID=? order by topicTime desc";
			ResultSet resultSet = this.dbUtils.execQuery(conn,strSQL,params);
			List<Topic> lstTopic = new ArrayList<Topic>();
			try {
				while(resultSet.next()){
					Topic t= new Topic();
					t.setTopicID(resultSet.getInt(1));
					t.setUserID(resultSet.getInt(2));
					t.setTopicTitle(resultSet.getString(3));
					t.setTopicText(resultSet.getString(4));
					t.setTopicTime(resultSet.getDate(5));
					t.setClickTimes(resultSet.getInt(6));
					t.setStick(resultSet.getInt(7));
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
