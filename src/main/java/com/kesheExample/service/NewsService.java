package com.kesheExample.service;

import com.kesheExample.entity.News;
import com.kesheExample.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class NewsService {
    public List<News> getAllNews() {
        List<News> newsList = new ArrayList<>();
        String sql = "SELECT * FROM news";

        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                News news = new News(rs.getInt("id"),rs.getString("title"),rs.getString("content"),rs.getString("author"),rs.getObject("publish_time",LocalDateTime.class),rs.getString("img_url"));
                newsList.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsList;
    }
}
