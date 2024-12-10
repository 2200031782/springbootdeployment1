package com.klef.jfsd.sdpproject.service;

import com.klef.jfsd.sdpproject.model.Message;
import java.util.List;

public interface MessageService {
    Message saveMessage(Message message); // Save a new message
    List<Message> getAllMessages(); // Retrieve all messages
    Message getMessageById(int id); // Get a specific message by ID
    void deleteMessageById(int id); // Delete a message by ID
	List<Message> getUnreadMessages();
	
}