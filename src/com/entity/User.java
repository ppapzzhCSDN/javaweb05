package com.entity;

/**
 * @author zzh
 * @description
 * @date
 */
public class User {
    private Integer id;
    private String name;
    private Integer age;
    private String sex;
    private String birth;

    public User() {
    }

    public User(Integer id, String name, Integer age, String sex, String birth) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.birth = birth;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }
}

