/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;

/**
 *
 * @author Win 10
 */
public class MonthYear {
    private String month;
    private int year;
    List<Blog> listBlog;

    public MonthYear() {
    }

    public MonthYear(String month, int year) {
        this.month = month;
        this.year = year;
    }
    
    public MonthYear(String month, int year, List<Blog> listBlog) {
        this.month = month;
        this.year = year;
        this.listBlog = listBlog;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public List<Blog> getListBlog() {
        return listBlog;
    }

    public void setListBlog(List<Blog> listBlog) {
        this.listBlog = listBlog;
    }

    @Override
    public String toString() {
        return "MonthYear{" + "month=" + month + ", year=" + year + ", listBlog=" + listBlog + '}';
    }

    

    
    
    
}
