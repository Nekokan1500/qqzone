package com.arthur.learn.qqzone.entity;

import java.util.Date;

public class Reply {

    private String rid;
    private String jid;     // foreign key, journal Id
    private String uid;     // foreign key, user Id
    private String content;
    private Date date;

}
