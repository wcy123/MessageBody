package com.easemob.messagebody.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by wangchunye on 8/15/16.
 */
@Entity
@Table(name = "message_body_0")
@NamedQueries({
        @NamedQuery(name = "MessageBody.findByMid",
                query = "select distinct m from MessageBody m  where m.mid = :mid")
})
public class MessageBody implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Column(name = "mid")
    private long mid;
    @Column(name = "body")
    private String body;
    @Column(name = "timestamp")
    private Date timestamp;
    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getMid() {
        return mid;
    }

    public void setMid(long mid) {
        this.mid = mid;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public String toString() {
        return "message:" + getMid() + "[" + getId() + "]" + "@" + getTimestamp() + " " + getBody();
    }
}
