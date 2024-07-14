package com.kesheExample.entity;

public class Teacher {

        private int id;
        private String name;
        private Title title;

        public Teacher(int id, String name, Title title) {
            this.id = id;
            this.name = name;
            this.title = title;

        }
        public enum Title{
            PROFESSOR,ASSPRO,LECTURE
        }
        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Title getTitle() {
            return title;
        }

        public void setTitle(Title title) {
            this.title = title;
        }


    }


