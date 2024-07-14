package com.kesheExample.service;

import com.kesheExample.entity.Teacher;

import java.util.List;

public class TeacherService {
    private List<Teacher> teacherList;

    public TeacherService() {
        // 初始化教师列表
        teacherList = List.of(
                new Teacher(1, "bob", Teacher.Title.PROFESSOR),
                new Teacher(2, "lili", Teacher.Title.PROFESSOR),
                new Teacher(3, "mary", Teacher.Title.PROFESSOR),
                new Teacher(4, "asia", Teacher.Title.ASSPRO),
                new Teacher(5, "pop", Teacher.Title.ASSPRO),
                new Teacher(6, "yv", Teacher.Title.ASSPRO),
                new Teacher(7, "cry", Teacher.Title.LECTURE),
                new Teacher(8, "mery", Teacher.Title.LECTURE),
                new Teacher(9, "sir", Teacher.Title.LECTURE)
        );
    }

    public Teacher getTeacherById(int id) {
        return teacherList.stream()
                .filter(teacher -> teacher.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public List<Teacher> getAllTeachers() {
        return teacherList;
    }

    public List<Teacher> getTeachersByTitle(Teacher.Title title) {
        return teacherList.stream()
                .filter(teacher -> teacher.getTitle().equals(title))
                .toList();
    }
}
