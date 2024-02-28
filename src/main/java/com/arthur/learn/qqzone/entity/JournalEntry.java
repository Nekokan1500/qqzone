package com.arthur.learn.qqzone.entity;

import java.util.Date;

public class JournalEntry {

    private String jid;
    private String title;
    private String content;
    private Date date;
    private String uid;     // foreign key, author of the journal entry

}
