package com.duan.blogos.entity.blog;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created on 2017/12/12.
 * 博文评论
 *
 * @author DuanJiaNing
 */
@Data
public class BlogComment implements Serializable {

    private static final long serialVersionUID = -7031768607524908823L;

    //id
    private Integer id;

    //博文id
    private Integer blogId;

    //评论者id
    private Integer spokesmanId;

    //被评论者id
    private Integer listenerId;

    //评论内容
    private String content;

    //评论时间
    private Timestamp releaseDate;

    //评论状态
    private Integer state;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBlogId() {
        return blogId;
    }

    public void setBlogId(Integer blogId) {
        this.blogId = blogId;
    }

    public Integer getSpokesmanId() {
        return spokesmanId;
    }

    public void setSpokesmanId(Integer spokesmanId) {
        this.spokesmanId = spokesmanId;
    }

    public Integer getListenerId() {
        return listenerId;
    }

    public void setListenerId(Integer listenerId) {
        this.listenerId = listenerId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Timestamp releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
