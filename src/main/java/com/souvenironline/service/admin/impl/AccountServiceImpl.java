//package com.souvenironline.service.admin.impl;
//
//import com.souvenironline.Dao.UserDao;
//import com.souvenironline.entity.UserEntity;
//import org.mindrot.jbcrypt.BCrypt;
//import org.springframework.beans.factory.annotation.Autowired;
//import com.souvenironline.service.admin.IAccountService;
//
//
//import java.util.List;
//
//public class AccountServiceImpl implements IAccountService {
//    @Autowired
//    UserDao userDao = new UserDao();
//
//    public int AddAccount(UserEntity userEntity){
//        userEntity.setPassword(BCrypt.hashpw(userEntity.getPassword(),BCrypt.gensalt(12)));
//
//
//        return userDao.AddAccount(userEntity);
//    }
//}
