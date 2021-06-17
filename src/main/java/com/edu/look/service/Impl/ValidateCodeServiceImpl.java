package com.edu.look.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.look.dao.IValidateCodeDao;
import com.edu.look.pojo.ValidatePic;
import com.edu.look.service.IValidateCodeService;

@Service
@Transactional
public class ValidateCodeServiceImpl implements IValidateCodeService {

    @Autowired
    IValidateCodeDao codeDao;

    @Override
    public ValidatePic getValidatePic() {
        return codeDao.getValidatePic();
    }

    @Override
    public Boolean checkValidateCode(String id, String code) {
        int codeLine = codeDao.checkValidateCode(id,code);
        return codeLine>0;
    }
}
