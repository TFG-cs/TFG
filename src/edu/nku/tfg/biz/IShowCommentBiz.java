package edu.nku.tfg.biz;

import java.util.List;

import edu.nku.tfg.po.Comment;

public interface IShowCommentBiz {

	public abstract List<Comment> findComByTid(int topicID);
}
