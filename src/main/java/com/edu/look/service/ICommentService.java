package com.edu.look.service;

import java.util.List;



import com.edu.look.pojo.Comment;

public interface ICommentService {

	public boolean addComment(String tid,String sid,String comment,String comtime);
	public List<Comment> getAllComment(String tid);
}
