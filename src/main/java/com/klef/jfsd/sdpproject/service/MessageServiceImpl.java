package com.klef.jfsd.sdpproject.service;

import com.klef.jfsd.sdpproject.model.Message;
import com.klef.jfsd.sdpproject.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Override
    public Message saveMessage(Message message) {
        return messageRepository.save(message);
    }

    @Override
    public List<Message> getAllMessages() {
        return messageRepository.findAll();
    }

    @Override
    public Message getMessageById(int id) {
        Optional<Message> message = messageRepository.findById(id);
        return message.orElse(null); // Returns the message if found, else null
    }

    @Override
    public void deleteMessageById(int id) {
        messageRepository.deleteById(id);
    }

    @Override
    public List<Message> getUnreadMessages() {
        return messageRepository.findByReadStatus(false); // Assuming a 'readStatus' column exists
    }

}