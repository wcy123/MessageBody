package com.easemob.messagebody.service;

import com.easemob.messagebody.domain.MessageBody;

import java.util.List;

/**
 * Created by wangchunye on 8/15/16.
 */
public interface MessageBodyDao {
    public List<MessageBody> findAll();
    public MessageBody findByMID(long mid);
    public void insert(MessageBody messageBody);
    public void update(MessageBody messageBody);
    public void delete(long id);
}