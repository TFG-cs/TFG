package edu.nku.tfg.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.nku.tfg.dao.IShowCommentDao;
import edu.nku.tfg.db.ConnectionManager;
import edu.nku.tfg.db.DBUtils;
import edu.nku.tfg.db.TransactionManager;
import edu.nku.tfg.po.Comment;

public class ShowCommentDaoImpl implements IShowCommentDao {

	private ConnectionManager connectionManager;
	private Connection conn;
	private DBUtils dbUtils;
	
	public ShowCommentDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
	}
	@Override
	public List<Comment> selectComByTid(int topicID) {
		// TODO Auto-generated method stub
		this.conn = this.connectionManager.openConnection();
		TransactionManager.conn = conn;
		TransactionManager.beginTransaction();
		
		Object[] params = new Object[]{topicID};
		String strSQL = "select * from comment where topicID=?";
		ResultSet resultSet = this.dbUtils.execQuery(conn,strSQL,params);
		List<Comment> lstComment = new ArrayList<Comment>();
		try {
			while(resultSet.next()){
				Comment c= new Comment();
				c.setCommentID(resultSet.getInt(1));
				c.setTopicID(resultSet.getInt(2));
				c.setUserID(resultSet.getInt(3));
				c.setCommentText(resultSet.getString(4));
				c.setCommentTime(resultSet.getDate(5));
				c.setRepost(resultSet.getString(6));
				
				lstComment.add(c);				
			}
			return lstComment;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally{
			this.connectionManager.closeConnection(conn);
		}
	}

}
