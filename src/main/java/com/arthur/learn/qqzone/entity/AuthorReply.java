package com.arthur.learn.qqzone.entity;

import java.util.Date;

public class AuthorReply {

    private String arid;
    private String rid;     // foreign key, reply Id
    private String uid;     // foreign key, author Id
    private String content;
    private Date date;
}
