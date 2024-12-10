<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hire a Professional</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            background-image: url('images/proftimeselect.jpg'); /* Add your image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #4070f4;
            margin-bottom: 20px;
        }
        form {
            text-align: left;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[readonly] {
            background-color: #e9ecef;
            color: #6c757d;
        }
        button {
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #4070f4;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #305bb0;
        }
        #errorMessage {
            color: red;
            margin-top: 10px;
        }
        #successMessage {
            margin-left: 20px;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Hire a Professional</h2>
        <form id="hiringForm">
            <label for="description">Service Description</label>
            <textarea id="description" name="description" placeholder="Describe the service you need" rows="4" required></textarea>

            <label for="fromDate">From Date</label>
            <input type="date" id="fromDate" name="fromDate" onchange="updateDetails()" required>

            <label for="toDate">To Date</label>
            <input type="date" id="toDate" name="toDate" onchange="updateDetails()" required>

            <label for="timePeriod">Time Period (in days)</label>
            <input type="text" id="timePeriod" name="timePeriod" readonly>

            <label for="payment">Payment (in rupees)</label>
            <input type="text" id="payment" name="payment" readonly>

            <div id="errorMessage"></div>

            <button type="button" onclick="submitForm()">Hire</button>
            <span id="successMessage"></span>
        </form>
    </div>

    <script>
        const calculateDateDifference = (fromDate, toDate) => {
            const from = new Date(fromDate);
            const to = new Date(toDate);
            const timeDifference = to - from;
            return Math.ceil(timeDifference / (1000 * 60 * 60 * 24)); // Difference in days
        };

        const updateDetails = () => {
            const fromDateField = document.getElementById('fromDate').value;
            const toDateField = document.getElementById('toDate').value;
            const timePeriodField = document.getElementById('timePeriod');
            const paymentField = document.getElementById('payment');
            const errorMessage = document.getElementById('errorMessage');

            if (fromDateField && toDateField) {
                const days = calculateDateDifference(fromDateField, toDateField);

                if (days > 0) {
                    errorMessage.textContent = ''; // Clear any error
                    timePeriodField.value = days; // Display only the number of days

                    // Calculate payment (₹200 per day)
                    const paymentPerDay = 200;
                    paymentField.value = days * paymentPerDay;
                } else {
                    errorMessage.textContent = 'To Date must be after From Date.';
                    timePeriodField.value = '';
                    paymentField.value = '';
                }
            }
        };

        const submitForm = async () => {
            const formData = {
                description: document.getElementById('description').value,
                fromDate: document.getElementById('fromDate').value,
                toDate: document.getElementById('toDate').value,
                timePeriod: document.getElementById('timePeriod').value,
                payment: document.getElementById('payment').value
            };

            try {
                const response = await fetch('http://localhost:8080/api/hiring/save', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify(formData),
                });

                if (response.ok) {
                    alert('Request submitted successfully!');
                } else {
                    alert('Failed to submit the request.');
                }
            } catch (error) {
                console.error('Error:', error);
            }
        };
    </script>
</body>
</html>
