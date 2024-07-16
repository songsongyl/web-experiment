package com.kesheExample.entity;

import java.sql.Date;
import java.time.LocalDateTime;

public class News {
    private int id;
    private String title;
    private String content;
    private String author;
    private LocalDateTime publishDate;
    private String imgUrl;

    public News(int id, String title, String content, String author, LocalDateTime publishDate,String imgUrl) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.author = author;
        this.publishDate = publishDate;
        this.imgUrl = imgUrl;
    }
    public News(String title, String content, String author, LocalDateTime publishDate) {
        this.title = title;
        this.content = content;
        this.author = author;
        this.publishDate = publishDate;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public LocalDateTime getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(LocalDateTime publishDate) {
        this.publishDate = publishDate;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }
}
