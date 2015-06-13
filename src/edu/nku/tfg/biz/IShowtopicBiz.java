package edu.nku.tfg.biz;

import java.util.List;

import edu.nku.tfg.po.Topic;

public interface IShowtopicBiz {

	public abstract List<Topic> showAll(int schoolID);
}
