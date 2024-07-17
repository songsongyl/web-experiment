package com.kesheExample.service;

import com.kesheExample.entity.Notice;
import com.kesheExample.util.DataSourceUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NoticeService {
    public List<Notice> getAllNotice() {
        List<Notice> noticeList = new ArrayList<>();
        String sql = "SELECT * FROM notice";

        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Notice notice = new Notice(rs.getInt("id"),rs.getString("title"),rs.getObject("publish_time", Date.class),rs.getString("content"));
                noticeList.add(notice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return noticeList;
    }
    public Notice getNoticeById(int id){
        return   getAllNotice().stream().filter(notice -> notice.getId() == id).findFirst().orElse(null);
    }
    public void addNotice(Notice notice){
            String sql = "insert into notice(id, title, publish_time,content) values(?,?,?,?)";
            try (Connection conn = DataSourceUtils.getConnection();
                 PreparedStatement ps = conn.prepareStatement(sql)){
                ps.setInt(1,notice.getId());
                ps.setString(2,notice.getTitle());
               ps.setObject(3,notice.getPublishTime());
                ps.setString(4,notice.getContent());
                ps.executeUpdate();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

    public void deleteNotice(int id){
        String sql = "DELETE FROM notice where id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void updateNotice(String update , String updateValue ,int id){
        String sql = "UPDATE notice SET " + update + " = ? WHERE id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            // 根据 updateField 的值设置预处理语句的第一个参数
            ps.setString(1, updateValue);
            // id 作为预处理语句的第二个参数
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            // 可以记录日志或进行其他异常处理
            throw new RuntimeException("更新公告时发生数据库错误", e);
        }
    }
}
