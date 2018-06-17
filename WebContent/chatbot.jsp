<page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String sala = (String) application.getAttribute("sala");
%>
<% response.setIntHeader("Reflesh", 5); %>
        <link rel="stylesheet" type="text/css" href="_CHATBOT/custom.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="_CHATBOT/chat.js" type="text/javascript"></script>

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
            <div class="chat-header">Fale com o Chat Bot</div>
            <div class="chat-body" id="chat-body">
<!--                <div class="chat-date"><span>Today, 2:22 PM</span></div>-->
            </div>
            <div class="chat-footer">
<form action=" " method="post" style="text-align: center">
                <input type="text" id="chatInput" placeholder="Type a message..." onkeypress="return newEvent(event)"/>
                <a href="javascript:;" class="send-btn"></a>
                <input type="text" name="msg" style="width: 244px" id="msg"/>
    <input type="submit" value="Enviar" style="width: 60px"/>
                </form>
            </div>
        </div>
</footer>