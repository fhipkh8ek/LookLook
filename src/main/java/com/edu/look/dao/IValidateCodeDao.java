package com.edu.look.dao;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.ValidatePic;

public interface IValidateCodeDao {
	public ValidatePic getValidatePic();

    public Integer checkValidateCode(@Param("pic") String pic, @Param("code")String code);
}
