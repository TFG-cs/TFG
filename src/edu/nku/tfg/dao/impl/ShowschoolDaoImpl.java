package edu.nku.tfg.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.nku.tfg.dao.IShowschoolDao;
import edu.nku.tfg.db.ConnectionManager;
import edu.nku.tfg.db.DBUtils;
import edu.nku.tfg.db.TransactionManager;
import edu.nku.tfg.po.School;

public class ShowschoolDaoImpl implements IShowschoolDao {

	private ConnectionManager connectionManager;
	private Connection conn;
	private DBUtils dbUtils;
	
	
	public ShowschoolDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
	}

	@Override
	public List<School> selectSchById(int schoolID) {
		// TODO Auto-generated method stub
		this.conn = this.connectionManager.openConnection();
		TransactionManager.conn = conn;
		TransactionManager.beginTransaction();
		
		Object[] params = new Object[]{schoolID};
		String strSQL = "select * from school where schoolID=?";
		ResultSet resultSet = this.dbUtils.execQuery(conn,strSQL,params);
		List<School> lstSchool = new ArrayList<School>();
		try {
			while(resultSet.next()){
				School s= new School();
				s.setSchoolID(resultSet.getInt(1));
				s.setCityID(resultSet.getInt(2));
				s.setSchoolName(resultSet.getString(3));
				s.setSchoolMotto(resultSet.getString(4));
				s.setSchoolText(resultSet.getString(5));
				s.setSignNum(resultSet.getInt(6));
				s.setSchoolBadge(resultSet.getString(7));
				s.setTopic(resultSet.getString(8));
				
				lstSchool.add(s);				
			}
			return lstSchool;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally{
			this.connectionManager.closeConnection(conn);
		}
	}

}
