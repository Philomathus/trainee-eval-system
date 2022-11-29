package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.EmployeeDTO;
import com.kkcloud.trainee.system.mapper.EmployeeMapper;
import com.kkcloud.trainee.system.service.iface.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeMapper employeeMapper;

    @Override
    public List<EmployeeDTO> getEmployee(EmployeeDTO employeeDTO) {

        return employeeMapper.getEmployeeByUsername(employeeDTO);

    }

}
