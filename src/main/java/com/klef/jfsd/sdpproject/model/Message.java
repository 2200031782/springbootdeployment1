package com.klef.jfsd.sdpproject.model;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "message_table") // Ensure table name matches your database schema
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment ID
    @Column(name = "message_id")
    private int id; // Primary key

    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @Column(name = "email", nullable = false, length = 100)
    private String email;

    @Column(name = "content", nullable = false, length = 500)
    private String content;

    @Column(name = "read_status")
    private boolean readStatus;

    // New timestamp field for message creation time
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "timestamp", nullable = false, updatable = false)
    private Date timestamp;

    // Getters and Setters
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isReadStatus() {
        return readStatus;
    }

    public void setReadStatus(boolean readStatus) {
        this.readStatus = readStatus;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }
}