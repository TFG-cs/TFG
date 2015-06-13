package edu.nku.tfg.dao;

import java.util.List;

import edu.nku.tfg.po.Topic;

public interface IShowtopicDao {

	public abstract List<Topic> selectAll(int schoolID);
}
