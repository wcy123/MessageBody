package com.easemob.messagebody.web;

import java.util.Date;
import java.util.List;

import com.easemob.messagebody.service.MessageBodyDao;
import com.easemob.messagebody.domain.MessageBody;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

@RestController
public class MessageBodyController {
    private static final Logger log = LoggerFactory.getLogger(MessageBodyController.class);

    private MessageBodyDao messageBodyDao;
    @Autowired
    public void setMessageBodyDao(MessageBodyDao messageBodyDao) {
        this.messageBodyDao = messageBodyDao;
    }
    @RequestMapping("/messages")
    public List<MessageBody> findAll() {
        List<MessageBody> r = messageBodyDao.findAll();
        log.info("r is " + r);
        return r;
    }
    @RequestMapping(value = "/message/{mid}", method = RequestMethod.GET)
    public MessageBody getMessage(@PathVariable long mid) {
        MessageBody r = messageBodyDao.findByMID(mid);
        log.info("r is " + r);
        return r;
    }
    @RequestMapping(value = "/message/{mid}", method = RequestMethod.PUT)
    public ResponseEntity putMessage(@PathVariable long mid, @RequestBody MessageBody body) {
        body.setMid(mid);
        body.setTimestamp(new Date());
        log.info("r is " + body);
        messageBodyDao.insert(body);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setLocation(ServletUriComponentsBuilder
                .fromCurrentRequest().path("/{mid}")
                .buildAndExpand(mid).toUri());
        return new ResponseEntity(null, httpHeaders, HttpStatus.CREATED);
    }
}
