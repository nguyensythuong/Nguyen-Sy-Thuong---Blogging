/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;



/**
 *
 * @author Win 10
 */
public class Blog {
    private int id;
    private String icon;
    private String name;
    private Date date;
    private String picture;
    private String detail;
    private String italic;
    private String bigPicture;

    public Blog() {
    }

    public Blog(int id, String icon, String name, Date date, String picture, String detail, String italic, String bigPicture) {
        this.id = id;
        this.icon = icon;
        this.name = name;
        this.date = date;
        this.picture = picture;
        this.detail = detail;
        this.italic = italic;
        this.bigPicture = bigPicture;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getItalic() {
        return italic;
    }

    public void setItalic(String italic) {
        this.italic = italic;
    }

    public String getBigPicture() {
        return bigPicture;
    }

    public void setBigPicture(String bigPicture) {
        this.bigPicture = bigPicture;
    }

    @Override
    public String toString() {
        return "Blog{" + "id=" + id + ", icon=" + icon + ", name=" + name + ", date=" + date + ", picture=" + picture + ", detail=" + detail + ", italic=" + italic + ", bigPicture=" + bigPicture + '}';
    }
    
    
}
