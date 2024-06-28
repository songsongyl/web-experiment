package com.example04.service.impl;

import com.example04.entity.User;
import com.example04.service.UserService;
import com.example04.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class UserServiceImpl implements UserService {
    private static Logger logger = Logger.getLogger(UserServiceImpl.class.getName());
    @Override
    public List<User> listUsers() {
       List<User> users = new ArrayList<>();
       String sql = "select * from user";
       try(Connection con = DataSourceUtils.getConnection();
           PreparedStatement ps = con.prepareStatement(sql);
           ResultSet rs = ps.executeQuery()) {
           while (rs.next()){
               User user = new User(rs.getInt("id"),rs.getString("name"),rs.getObject("insert_time", LocalDateTime.class),rs.getObject("update_time",LocalDateTime.class));
               users.add(user);
           }

       } catch (SQLException e) {
           logger.warning(e.getMessage());
       }
        return users;
    }

    @Override
    public void addUser(String newName) {
        String sql = "insert into user(name) values(?)";
        try(Connection con = DataSourceUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql)
        ){
            ps.setString(1,newName);
            ps.executeUpdate();
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

    @Override
    public User getUser(int id) {
        User user = null;
        String sql = "select * from user where id =?";
        try(Connection con = DataSourceUtils.getConnection();
            PreparedStatement ps = con.prepareStatement(sql))
        {
            ps.setInt(1,id);
            try(ResultSet rs = ps.executeQuery()){
                while (rs.next()){
                    user = new User(rs.getInt("id"),rs.getString("name"),rs.getObject("insert_time", LocalDateTime.class),rs.getObject("update_time",LocalDateTime.class));
                }
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return user;
    }

}
