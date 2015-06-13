package edu.nku.tfg.dao;

import java.util.List;

import edu.nku.tfg.po.School;

public interface IShowschoolDao {

	public abstract List<School> selectSchById(int schoolID);
}
