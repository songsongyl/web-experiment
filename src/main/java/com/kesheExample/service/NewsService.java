package com.kesheExample.service;

import com.kesheExample.entity.News;
import com.kesheExample.util.DataSourceUtils;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class NewsService {
    public List<News> getAllNews() {
        List<News> newsList = new ArrayList<>();
        String sql = "SELECT * FROM news";

        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                News news = new News(rs.getInt("id"),rs.getString("title"),rs.getString("content"),rs.getString("author"),rs.getObject("publish_time",Date.class),rs.getString("img_url"));
                newsList.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsList;
    }
    public News getNewsById(int id){
      return   getAllNews().stream().filter(news -> news.getId() == id).findFirst().orElse(null);
    }
    public void addNews(News news){
        if(news.getImgUrl()!=null){
            String sql = "insert into news(id, title, content, author,img_url, publish_time) values(?,?,?,?,?,?)";
            try (Connection conn = DataSourceUtils.getConnection();
                 PreparedStatement ps = conn.prepareStatement(sql)){
                ps.setInt(1,news.getId());
                ps.setString(2,news.getTitle());
                ps.setString(3,news.getContent());
                ps.setString(4,news.getAuthor());
                ps.setString(5,news.getImgUrl());
                ps.setObject(6,news.getPublishDate());
                ps.executeUpdate();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }else {
            String sql = "insert into news(id, title, content, author, publish_time) values(?,?,?,?,?)";
            try (Connection conn = DataSourceUtils.getConnection();
                 PreparedStatement ps = conn.prepareStatement(sql)){
                ps.setInt(1,news.getId());
                ps.setString(2,news.getTitle());
                ps.setString(3,news.getContent());
                ps.setString(4,news.getAuthor());
               ps.setObject(5,news.getPublishDate());
                ps.executeUpdate();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

    }
    public void deleteNews(int id){
        String sql = "DELETE FROM news where id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void updateNews(String update , String updateValue ,int id){
        String sql = "UPDATE news SET " + update + " = ? WHERE id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            // 根据 updateField 的值设置预处理语句的第一个参数
            ps.setString(1, updateValue);
            // id 作为预处理语句的第二个参数
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            // 可以记录日志或进行其他异常处理
            throw new RuntimeException("更新新闻时发生数据库错误", e);
        }
    }
}
