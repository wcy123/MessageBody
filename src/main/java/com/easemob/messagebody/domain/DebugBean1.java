package com.easemob.messagebody.domain;

import com.easemob.messagebody.service.MessageBodyDao;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by wangchunye on 8/15/16.
 */
@Component
public class DebugBean1 implements CommandLineRunner, ApplicationContextAware {
    static private Log log = LogFactory.getLog(DebugBean1.class);
    private Boolean runIt = false;
    private ApplicationContext applicationContext;
    @Autowired
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
    @Autowired
    public void setRunIt(Boolean runIt) {
        this.runIt = runIt;
    }

    public void run(String... args) throws Exception {
        if(!runIt) return;
        ApplicationContext ctx = applicationContext;
        log.info("hello, let's go");
        log.info(ctx.getBean("sessionFactory"));
        MessageBodyDao messageBodyDao = (MessageBodyDao)ctx.getBean("messageBodyDao", MessageBodyDao.class);
        log.info(messageBodyDao);
        log.info("byebye");
        List<MessageBody> messageBodies = messageBodyDao.findAll();
        listId(messageBodies);
    }
    private static void listId(List<MessageBody> lm) {
        log.info("");
        log.info("Listing bodies:");
        for(MessageBody m : lm){
            log.info(m);
        }
    }
}
