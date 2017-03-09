package com.yxc.bugsManager.entity;

import java.util.List;

/**
 * Created by tm on 2017/3/9.
 */
public class Result extends IdEntity {
    private int code;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    private String description;

    public List<Task> getTasks() {
        return tasks;
    }

    public void setTasks(List<Task> tasks) {
        this.tasks = tasks;
    }

    private List<Task> tasks;
}
