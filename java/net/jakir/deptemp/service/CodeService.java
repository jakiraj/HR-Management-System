package net.jakir.deptemp.service;

import net.jakir.deptemp.entity.DeptEmpCode;

import java.util.List;

public interface CodeService {
    public List<DeptEmpCode> getCodeByType(String type);

    public DeptEmpCode getCodeById(int id);
}
