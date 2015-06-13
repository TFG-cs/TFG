package edu.nku.tfg.dao;

import java.util.List;

import edu.nku.tfg.po.Topic;

public interface IShowHotopDao {

	public abstract List<Topic> selectHotop();
}
