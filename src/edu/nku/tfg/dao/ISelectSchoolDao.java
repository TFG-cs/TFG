package edu.nku.tfg.dao;

import java.util.List;

import edu.nku.tfg.po.School;

public interface ISelectSchoolDao {
	public abstract List<School> SelectSchoolBySighNumDao();
}
