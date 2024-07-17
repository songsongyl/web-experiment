package com.kesheExample.entity;

import java.sql.Date;

public class Notice {
    private int id;
    private String title;
    private Date publishTime;
    private String content;

    public Notice(int id, String title, Date publishTime, String content) {
        this.id = id;
        this.title = title;
        this.publishTime = publishTime;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
