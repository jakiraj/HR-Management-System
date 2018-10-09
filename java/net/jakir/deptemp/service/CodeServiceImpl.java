package net.jakir.deptemp.service;

import net.jakir.deptemp.dao.CodeDAO;
import net.jakir.deptemp.entity.DeptEmpCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.ServiceMode;
import java.util.List;
@Service
public class CodeServiceImpl implements CodeService {
    @Autowired
    CodeDAO codeDAO;

    @Override
    public List<DeptEmpCode> getCodeByType(String type) {
        return codeDAO.getByTypeValid(type);
    }

    @Override
    public DeptEmpCode getCodeById(int id) {
        return codeDAO.findOne(id);
    }
}
