package edu.nku.tfg.dao.impl;

import java.sql.Connection;
import edu.nku.tfg.dao.ITopicDao;
import edu.nku.tfg.db.ConnectionManager;
import edu.nku.tfg.db.DBUtils;
import edu.nku.tfg.db.TransactionManager;
import edu.nku.tfg.po.Topic;

public class TopicDaoImpl implements ITopicDao {
	private ConnectionManager connectionManager;
	private DBUtils dbUtils;
	
	public TopicDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
	}

	@Override
	public int insert(Topic t) {
		// TODO Auto-generated method stub
		
			// TODO Auto-generated method stub
			int userid=t.getUserID();
			int schoolid=t.getSchoolID();
			String text=t.getTopicText();
			String titile=t.getTopicTitle();
			Connection conn = this.connectionManager.openConnection();
			TransactionManager.conn = conn;
			TransactionManager.beginTransaction();
			
			String strSQL = "insert into topic values(null, ?, ?, ?,?,now(), 0,0)";
			Object[] params = new Object[]{userid, schoolid, text,titile,};
			
			int affectedRows = this.dbUtils.execOthers(conn, strSQL, params);
			
			if(affectedRows >  0){
				TransactionManager.commit();
			}else{
				TransactionManager.rollback();
			}
			
			return affectedRows;
		}
		
		
	}
