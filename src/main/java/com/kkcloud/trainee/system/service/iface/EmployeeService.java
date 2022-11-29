package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.EmployeeDTO;

import java.util.List;

public interface EmployeeService {

     List<EmployeeDTO> getEmployee(EmployeeDTO employeeDTO);

}
