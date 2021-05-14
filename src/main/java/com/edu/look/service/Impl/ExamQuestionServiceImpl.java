package com.edu.look.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.look.dao.IExamQuestionDao;
import com.edu.look.pojo.ExamQuestion;
import com.edu.look.service.IExamQuestionService;

@Service
@Transactional
public class ExamQuestionServiceImpl implements IExamQuestionService {

	@Autowired
	IExamQuestionDao examdao;
	
	@Override
	public ExamQuestion getExamQuestion(String iid) {
		ExamQuestion examquestion = examdao.getExamQuestion(iid);
		examquestion.setTotal(examdao.getTotal());
		System.out.println(examquestion);
		return examquestion;
	}
}
