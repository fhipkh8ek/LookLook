package com.edu.look.dao;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.ExamQuestion;

public interface IExamQuestionDao {

	public ExamQuestion getExamQuestion(@Param("iid")String iid);
	public String getTotal();
}
