package edu.nku.tfg.dao;

import java.util.List;

import edu.nku.tfg.po.Comment;

public interface IShowCommentDao {

	public abstract List<Comment> selectComByTid(int topicID);
}
