<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Support - Find & Hire Professionals</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .chat-container {
            width: 100%;
            max-width: 600px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .chat-header {
            background-color: #00BFFF; /* Brighter Sky blue */
            color: white;
            padding: 10px;
            text-align: center;
            font-weight: 600;
        }
        .chat-box {
            height: 400px;
            overflow-y: auto;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .message {
            margin: 10px 0;
            padding: 10px;
            border-radius: 10px;
            max-width: 75%;
        }
        .user-message {
            background-color: #00BFFF; /* Brighter Sky blue */
            color: white;
            margin-left: auto;
            text-align: right;
        }
        .bot-message {
            background-color: #e1e1e1;
            color: #333;
        }
        .input-container {
            padding: 10px;
        }
        .input-container input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            outline: none;
        }
        .input-container button {
            padding: 10px 20px;
            margin-top: 10px;
            background-color: #00BFFF; /* Brighter Sky blue */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .input-container button:hover {
            background-color: #1E90FF; /* Slightly darker blue */
        }
        .dropdown-container {
            margin-top: 10px;
            display: none;
            position: relative;
            z-index: 1;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .dropdown-container div {
            padding: 10px;
            cursor: pointer;
        }
        .dropdown-container div:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <div class="chat-container">
        <div class="chat-header">Customer Support Bot</div>
        <div class="chat-box" id="chatBox">
            <!-- Chat messages will be displayed here -->
        </div>
        <div class="input-container">
            <input type="text" id="userInput" placeholder="Type your question...">
            <button onclick="sendMessage()">Send</button>
        </div>
    </div>

    <script>
        const chatBox = document.getElementById('chatBox');

        // Send initial greeting
        addMessage("Hello! How can I assist you today? Select from the options below:", 'bot', true);

        function addMessage(text, sender = 'bot', isDropdown = false) {
            const message = document.createElement('div');
            message.className = 'message ' + (sender === 'user' ? 'user-message' : 'bot-message');
            message.innerText = text;

            // Append dropdown options if it's a bot message with dropdown
            if (isDropdown) {
                const dropdown = document.createElement('div');
                dropdown.className = 'dropdown-container';
                dropdown.style.display = 'block';

                const options = [
                    { text: "How can I get help?", value: "help" },
                    { text: "How do I register?", value: "register" },
                    { text: "How can I search for professionals?", value: "search" },
                    { text: "How do I provide feedback?", value: "feedback" },
                    { text: "What can admins do?", value: "admin" },
                    { text: "How do I manage my profile?", value: "profile" }
                ];

                options.forEach(option => {
                    const optionDiv = document.createElement('div');
                    optionDiv.innerText = option.text;
                    optionDiv.onclick = () => selectQuery(option.value);
                    dropdown.appendChild(optionDiv);
                });

                message.appendChild(dropdown);
            }

            chatBox.appendChild(message);
            chatBox.scrollTop = chatBox.scrollHeight;
        }

        function selectQuery(query) {
            const userInput = document.getElementById('userInput');
            userInput.value = query; // Set selected query in the input box
            sendMessage(); // Automatically send the message
        }

        function sendMessage() {
            const userInput = document.getElementById('userInput');
            const userText = userInput.value.trim();
            if (userText === '') return;

            addMessage(userText, 'user');
            userInput.value = ''; // Clear input

            // Automated bot responses based on user input
            let response = "I'm sorry, I don't understand that question.";
            if (/help/i.test(userText)) {
                response = "You can ask about user registration, professional services, admin settings, or feedback.";
            } else if (/register/i.test(userText)) {
                response = "To register, visit the 'Sign Up' page and fill in the necessary details based on your role: User or Professional.";
            } else if (/search/i.test(userText)) {
                response = "To search for professionals, use the 'Search' bar on the main page to filter by service and location.";
            } else if (/feedback/i.test(userText)) {
                response = "To provide feedback, go to your dashboard, select 'Feedback' and submit your comments about the professional.";
            } else if (/admin/i.test(userText)) {
                response = "Admins can manage platform settings, user roles, and service listings through the Admin Dashboard.";
            } else if (/profile/i.test(userText)) {
                response = "Professionals can create and manage their profiles by going to 'My Profile' and updating their information.";
            } else if (/^(hi|hello)$/i.test(userText)) {
                response = "Hi there! How can I help you today?";
            }

            setTimeout(() => {
                addMessage(response, 'bot');
            }, 500);
        }
    </script>
</body>
</html>
