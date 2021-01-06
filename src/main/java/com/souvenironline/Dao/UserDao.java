//package com.souvenironline.Dao;
//
//import com.souvenironline.entity.UserEntity;
//import org.springframework.stereotype.Repository;
//
//@Repository
//public class UserDao extends BaseDao {
//    public int AddAccount(UserEntity userEntity) {
//        StringBuffer sql = new StringBuffer();
//        sql.append("INSERT ");
//        sql.append("INTO User ");
//        sql.append("( ");
//        sql.append("	userName, ");
//        sql.append("	password, ");
//        sql.append("	fullName ");
//        sql.append(") ");
//        sql.append("VALUES ");
//        sql.append("( ");
//        sql.append(" "+userEntity.getUserName()+", ");
//        sql.append(" "+userEntity.getPassword()+", ");
//        sql.append(" "+userEntity.getFullName()+", ");
//        sql.append(")");
//
//        int insert = jdbcTemplate.update(sql.toString()); // thực thi query để chèn vào db
//        return insert;
//    };
//}
