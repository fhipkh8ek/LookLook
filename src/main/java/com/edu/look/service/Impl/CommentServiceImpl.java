package com.edu.look.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.look.dao.ICommentDao;
import com.edu.look.pojo.Comment;
import com.edu.look.service.ICommentService;

@Service
@Transactional
public class CommentServiceImpl implements ICommentService {

	@Autowired
	ICommentDao commentdao;
	
	@Override
	public boolean addComment(String tid, String sid, String comment, String comtime) {
		
		commentdao.addComment(tid, sid, comment, comtime);
		return true;
	}

	@Override
	public List<Comment> getAllComment(String tid) {
		
		return commentdao.getAllComment(tid);
	}

}
