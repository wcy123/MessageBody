package com.easemob.messagebody.service.impl;

import com.easemob.messagebody.service.MessageBodyDao;
import com.easemob.messagebody.domain.MessageBody;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wangchunye on 8/15/16.
 */
@Repository("messageBodyDao")
@Transactional
final class MessageBodyDaoImpl implements MessageBodyDao {
    private Log log = LogFactory.getLog(MessageBodyDaoImpl.class);
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    @Resource(name = "sessionFactory")
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    @Transactional(readOnly = true)
    public List<MessageBody> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from MessageBody").list();
    }
    public MessageBody findByMID(long mid) {
        return (MessageBody) sessionFactory.getCurrentSession().getNamedQuery("MessageBody.findByMid")
                .setParameter("mid",mid)
                .uniqueResult();
    }
    public void insert(MessageBody messageBody){
        sessionFactory.getCurrentSession().saveOrUpdate(messageBody);
    }
    public void update(MessageBody messageBody){
        return;
    }
    public void delete(long id){
        return;
    }
}
