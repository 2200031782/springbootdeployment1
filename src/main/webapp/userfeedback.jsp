<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Feedback</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .feedback-container {
            max-width: 800px;
            width: 100%;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        .feedback-form {
            margin-bottom: 20px;
        }
        .feedback-form select,
        .feedback-form textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            margin-bottom: 10px;
            resize: vertical;
        }
        .feedback-form button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .feedback-form button:hover {
            background-color: #45a049;
        }
        .feedback-item {
            border-bottom: 1px solid #ddd;
            padding: 15px 0;
        }
        .feedback-item:last-child {
            border-bottom: none;
        }
        .feedback-date {
            font-size: 12px;
            color: #777;
            margin-bottom: 5px;
        }
        .feedback-text {
            font-size: 16px;
            color: #333;
        }
        .no-feedback {
            text-align: center;
            color: #999;
            margin-top: 20px;
            display: none;
        }
        .feedback-professional {
            font-weight: bold;
            color: #4CAF50;
        }
    </style>
</head>
<body>

    <div class="feedback-container">
        <h1>My Feedback</h1>
        <form class="feedback-form" id="feedbackForm">
            <label for="professional">Select Professional:</label>
            <select id="professional" required>
                <option value="">Select a professional...</option>
                <option value="John Doe">John Doe</option>
                <option value="Jane Smith">Jane Smith</option>
                <option value="Alex Johnson">Alex Johnson</option>
            </select>
            <label for="feedbackText">Your Feedback:</label>
            <textarea id="feedbackText" placeholder="Write your feedback here..." required></textarea>
            <button type="submit">Submit Feedback</button>
        </form>

        <div id="feedbackList">
            <div class="no-feedback" id="noFeedback">You haven't provided any feedback yet.</div>
        </div>
    </div>

    <script>
        document.getElementById('feedbackForm').addEventListener('submit', function (e) {
            e.preventDefault();
            const professional = document.getElementById('professional').value;
            const feedbackText = document.getElementById('feedbackText').value;
            const feedbackList = document.getElementById('feedbackList');
            const noFeedback = document.getElementById('noFeedback');

            if (professional && feedbackText) {
                const feedbackItem = document.createElement('div');
                feedbackItem.classList.add('feedback-item');
                feedbackItem.innerHTML = `
                    <div class="feedback-date">${new Date().toLocaleDateString()}</div>
                    <div class="feedback-professional">Feedback for: ${professional}</div>
                    <div class="feedback-text">${feedbackText}</div>
                `;
                feedbackList.appendChild(feedbackItem);
                noFeedback.style.display = 'none';

                // Clear the form fields
                document.getElementById('professional').value = '';
                document.getElementById('feedbackText').value = '';
            }
        });
    </script>

</body>
</html>
