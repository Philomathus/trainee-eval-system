package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.*;
import com.kkcloud.trainee.system.exception.UserAlreadyExistException;

import java.util.List;

public interface UserService {

    String register(final RegisterDTO user) throws UserAlreadyExistException;
//
    List<UserDetailsDTO> getUser(GetUserDTO getUserDTO);

    UserLoggedInDTO loginUser(LoginDTO loginDTO);

    String insertMenteesToMentor(MenteesDTO menteesDTO);

}
