package com.edu.look.dao;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.ValidatePic;

public interface IValidateCodeDao {
	public ValidatePic getValidatePic();

    public Integer checkValidateCode(@Param("id") String id, @Param("code")String code);
}
