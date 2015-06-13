package edu.nku.tfg.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;


import java.sql.SQLException;

import edu.nku.tfg.dao.ISelectSchoolDao;
import edu.nku.tfg.db.ConnectionManager;
import edu.nku.tfg.db.DBUtils;
import edu.nku.tfg.po.School;

public class SelectSchoolDaoImpl implements ISelectSchoolDao {
	
	private ConnectionManager connectionManager;
	private DBUtils dbUtils;
	
	public SelectSchoolDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
		this.connectionManager = new ConnectionManager();
		this.dbUtils = new DBUtils();
	}

	@Override
	public List<School> SelectSchoolBySighNumDao() {
		// TODO Auto-generated method stub
		String strSQL = "SELECT * FROM school s ,city c where c.cityid=s.cityid order by signnum desc limit 10 ";
		Connection conn = this.connectionManager.openConnection();
		ResultSet resultSet = this.dbUtils.execQuery(conn, strSQL, new Object[]{ });
		List<School> lstSchools = new ArrayList<School>();
		try {
			while(resultSet.next()){
				School school = new School();
				school.setSchoolID(resultSet.getInt(1));
//				school.setCity(resultSet.getString(10));
				school.setSchoolName(resultSet.getString(3));
				school.setSchoolMotto(resultSet.getString(4));
				school.setSchoolText(resultSet.getString(5));
				school.setSignNum(resultSet.getInt(6));
				school.setSchoolBadge(resultSet.getString(7));
				school.setTopic(resultSet.getString(8));
				school.setCityID(resultSet.getInt(2));
				lstSchools.add(school);
			}
			return lstSchools;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally{
			this.connectionManager.closeConnection(conn);
		}

	}

}
