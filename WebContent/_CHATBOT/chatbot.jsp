<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <link rel="stylesheet" type="text/css" href="custom.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="chat.js" type="text/javascript"></script>
<!DOCTYPE html> 
<footer>
	 <div class="header"> 
            <p></p>
        </div>
        <div class="main">
            <p></p>
        </div>
        <div class="footer">
            <p></p>
        </div>
        <div class="chat-popup" id="chat-popup">
            <div class="chat-header">Fale com o BOT PParodi</div>
            <div class="chat-body" id="chat-body">
<!--                <div class="chat-date"><span>Today, 2:22 PM</span></div>-->
            </div>
            <div class="chat-footer">
                <input type="text" id="chatInput" placeholder="Type a message..." onkeypress="return newEvent(event)"/>
                <a href="javascript:;" class="send-btn"></a>
            </div>
        </div>
</footer>