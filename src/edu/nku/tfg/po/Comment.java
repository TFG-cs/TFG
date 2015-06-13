package edu.nku.tfg.po;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Comment implements Serializable {

	private int commentID;
	private int topicID;
	private int userID;
	private String commentText;
	private Date commentTime;
	private String repost;
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(int commentID, int topicID, int userID, String commentText,
			Date commentTime, String repost) {
		super();
		this.commentID = commentID;
		this.topicID = topicID;
		this.userID = userID;
		this.commentText = commentText;
		this.commentTime = commentTime;
		this.repost = repost;
	}
	public int getCommentID() {
		return commentID;
	}
	public void setCommentID(int commentID) {
		this.commentID = commentID;
	}
	public int getTopicID() {
		return topicID;
	}
	public void setTopicID(int topicID) {
		this.topicID = topicID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getCommentText() {
		return commentText;
	}
	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	public String getRepost() {
		return repost;
	}
	public void setRepost(String repost) {
		this.repost = repost;
	}
	@Override
	public String toString() {
		return "comment [commentID=" + commentID + ", topicID=" + topicID
				+ ", userID=" + userID + ", commentText=" + commentText
				+ ", commentTime=" + commentTime + ", repost=" + repost + "]";
	}
}
