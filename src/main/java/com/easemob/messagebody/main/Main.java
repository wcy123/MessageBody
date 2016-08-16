package com.easemob.messagebody.main;

import com.easemob.messagebody.service.MessageBodyDao;
import com.easemob.messagebody.domain.MessageBody;
import org.springframework.context.support.GenericXmlApplicationContext;

import java.util.List;

/**
 * Created by wangchunye on 8/15/16.
 */
public class Main {
    public static void main(String[] args){
        GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
        ctx.load("classpath:app-context.xml");
        ctx.refresh();
        System.out.println("hello, let's go");
        System.out.println(ctx.getBean("sessionFactory"));
        MessageBodyDao messageBodyDao = (MessageBodyDao)ctx.getBean("messageBodyDao", MessageBodyDao.class);
        System.out.println(messageBodyDao);
        System.out.println("byebye");
        List<MessageBody> messageBodies = messageBodyDao.findAll();
        listId(messageBodies);
    }
    private static void listId(List<MessageBody> lm) {
        System.out.println("");
        System.out.println("Listing bodies:");
        for(MessageBody m : lm){
            System.out.println(m);
        }
    }
}
