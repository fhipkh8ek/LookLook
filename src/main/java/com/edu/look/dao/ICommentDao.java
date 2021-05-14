package com.edu.look.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.Comment;


public interface ICommentDao {

	public boolean addComment(@Param("tid")String tid,@Param("sid")String sid,@Param("comment")String comment,@Param("comtime")String comtime);
	public List<Comment> getAllComment(@Param("tid")String tid);
}
