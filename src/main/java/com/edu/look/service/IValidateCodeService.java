package com.edu.look.service;

import org.apache.ibatis.annotations.Param;

import com.edu.look.pojo.ValidatePic;

public interface IValidateCodeService {
	 public ValidatePic getValidatePic();

	 public Boolean checkValidateCode(@Param("id") String id, @Param("code")String code);
}
