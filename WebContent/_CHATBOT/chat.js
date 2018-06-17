


var params = {},
    chatResponde = 'chatResponde',
    context;

function userMessage(message) {
    
    params.text = message;
    if (context) {
        params.context = context;    
    }
    var xhr = new XMLHttpRequest();
    var uri = '/api/chatResponde';
    xhr.open('POST', uri, true);

    xhr.onload = function () {
        if (xhr.status === 200 && xhr.responseText) {
            var response = JSON.parse(xhr.responseText);
            text = response.output.text;
            context = response.context;
            console.log("Got response from chatResponde: ", JSON.stringify(response));
           
            for (var txt in text) {
                displayMessage(text[txt], chatResponde);
            }
        }
        else {
            console.error('Server error for Conversation. Return status of: ', xhr.statusText);
            displayMessage("Efetue login para falar com o Chat bot", chatResponde);
        }
    };
    xhr.onerror = function () {
        console.error('Network error trying to send message!');
        displayMessage("Ops, acho que meu cérebro está offline. Espera um minutinho para continuarmos por favor.", chatResponde);
    };
    console.log(JSON.stringify(params));
    xhr.send(JSON.stringify(params));
}

function newEvent(event) {
    if (event.which === 13 || event.keyCode === 13) {
        var userInput = document.getElementById('chatInput');
        text = userInput.value;
        text = text.replace(/(\r\n|\n|\r)/gm, ""); // Remove erroneous characters
        if (text) {

            displayMessage(text, 'user');
            userInput.value = '';
            userMessage(text);
        }
        else {
            // Blank user message. Do nothing.
            console.error("No message.");
            userInput.value = '';
            return false;
        }
    }
}

function displayMessage(text, user) {
    var chat_body = document.getElementById('chat-body');
    var bubble = document.createElement('div');
    bubble.setAttribute("class", "bubble");
    if (user == "user") {
        bubble.className += " user";
    }
    else {
        bubble.className += " chatResponde";
    }
    bubble.innerHTML = text;
    chat_body.appendChild(bubble);
    chat_body.scrollTop = chat_body.scrollHeight;
}


userMessage('');