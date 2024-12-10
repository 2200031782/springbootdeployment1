<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Options</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f4f8;
            background-image: url('images/proftimeselect.jpg');  
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        .payment-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            margin-bottom: 20px;
            color: #4070f4;
        }
        .payment-option {
            display: flex;
            align-items: center;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .payment-option:hover {
            background-color: #f0f0f0;
        }
        .payment-option img, .payment-option i {
            margin-right: 10px;
            width: 30px;
            height: 30px;
        }
        .dropdown-content {
            display: none;
            margin-top: 10px;
            text-align: left;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            background-color: #4070f4;
            color: #fff;
            cursor: pointer;
            margin-top: 20px;
        }
        button:hover {
            background-color: #305bb0;
        }
        .upi-option label {
            display: flex;
            align-items: center;
            justify-content: flex-start;
        }

        .upi-option img {
            margin-right: 10px;
            vertical-align: middle;
            margin-top: 1mm;
        }

        /* New Style for Scanner */
        .scanner-icon {
            margin-left: 15px;
            cursor: pointer;
        }

        .scanner-container {
            display: none;
            margin-top: 10px;
            text-align: left;
        }

        .scanner img {
            width: 150px;
            height: 150px;
        }
    </style>
    <script>
        function toggleDropdown(id) {
            const selectedDropdown = document.getElementById(id);
            const dropdowns = document.querySelectorAll('.dropdown-content');

            dropdowns.forEach(dropdown => {
                if (dropdown !== selectedDropdown) {
                    dropdown.style.display = 'none';
                }
            });

            if (selectedDropdown.style.display === 'block') {
                selectedDropdown.style.display = 'none';
            } else {
                selectedDropdown.style.display = 'block';
            }
        }

        function showFields(type) {
            const upiFields = document.getElementById('upiFields');
            const debitCardFields = document.getElementById('debitCardFields');
            const netBankingFields = document.getElementById('netBankingFields');

            upiFields.style.display = 'none';
            debitCardFields.style.display = 'none';
            netBankingFields.style.display = 'none';

            if (type === 'upi') {
                upiFields.style.display = 'block';
            } else if (type === 'debit') {
                debitCardFields.style.display = 'block';
            } else if (type === 'net') {
                netBankingFields.style.display = 'block';
            }
        }

        function validateUPI() {
            const upiId = document.getElementById('upiId').value;
            const upiMethod = document.querySelector('input[name="upiMethod"]:checked');

            if (!upiMethod) {
                alert('Please select a UPI method.');
                return false;
            }

            // UPI ID validation to ensure format like 'example@upi', 'name@ybl'
            const upiRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(?:upi|ybl)$/;
            if (!upiId || !upiRegex.test(upiId)) {
                alert('Please enter a valid UPI ID (e.g., example@upi or name@ybl).');
                return false;
            }

            return true;
        }

        function validateDebitCard() {
            const cardNumber = document.getElementById('cardNumber').value;
            const cvv = document.getElementById('cvv').value;
            const expiryDate = document.getElementById('expiryDate').value;

            if (!cardNumber || cardNumber.length !== 16) {
                alert('Please enter a valid 16-digit card number.');
                return false;
            }

            if (!cvv || cvv.length !== 3) {
                alert('Please enter a valid 3-digit CVV.');
                return false;
            }

            // Expiry Date validation MM/YY format
            const expiryRegex = /^(0[1-9]|1[0-2])\/\d{2}$/;
            if (!expiryDate || !expiryRegex.test(expiryDate)) {
                alert('Please enter a valid expiry date (MM/YY) where MM is between 01 and 12.');
                return false;
            }

            return true;
        }

        function validateNetBanking() {
            const username = document.getElementById('netBankingUsername').value;
            const password = document.getElementById('netBankingPassword').value;

            if (!username) {
                alert('Please enter your username.');
                return false;
            }

            if (!password) {
                alert('Please enter your password.');
                return false;
            }

            return true;
        }

        function validatePaymentForm() {
            const upiFields = document.getElementById('upiFields').style.display !== 'none';
            const debitCardFields = document.getElementById('debitCardFields').style.display !== 'none';
            const netBankingFields = document.getElementById('netBankingFields').style.display !== 'none';

            if (upiFields && !validateUPI()) {
                return false;
            }

            if (debitCardFields && !validateDebitCard()) {
                return false;
            }

            if (netBankingFields && !validateNetBanking()) {
                return false;
            }

            return true;
        }

    </script>
</head>
<body>
    <div class="payment-container">
        <h2>Select Payment Option</h2>
        
        <!-- UPI Payment Option -->
        <div class="payment-option" onclick="toggleDropdown('upiDropdown'); showFields('upi')">
            <img src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/upi-icon.png" alt="UPI logo">
            <span class="payment-text">UPI</span>
        </div>
        
        <div id="upiDropdown" class="dropdown-content">
        
            <label>Select UPI Method:</label>
            <div class="upi-option">
                <label>
                    <input type="radio" name="upiMethod" value="phonepe" onclick="showFields('upi')">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv7C7cl9ufztQRxoH-y_biXvwoAf5bynbtnA&s" alt="PhonePe" width="24" height="24">
                    Phone Pe
                </label>
            </div>
        
            <div class="upi-option">
                <label>
                    <input type="radio" name="upiMethod" value="googlepay" onclick="showFields('upi')">
                    <img src="https://image.similarpng.com/very-thumbnail/2020/06/Logo-google-pay-vector-PNG.png" alt="Google Pay" width="24" height="24">
                    Google Pay
                </label>
            </div>
            <div class="upi-option">
                <label>
                    <input type="radio" name="upiMethod" value="paytm" onclick="showFields('upi')">
                    <img src="https://download.logo.wine/logo/Paytm/Paytm-Logo.wine.png" alt="Paytm" width="24" height="24">
                    Paytm
                </label>
            </div>

            <!-- UPI ID field -->
            <div id="upiFields" style="display:none;">
                <label for="upiId">UPI ID:</label>
                <input type="text" id="upiId" placeholder="Enter UPI ID" required>
            </div>
        </div>

        <!-- Debit Card Option -->
        <div class="payment-option" onclick="toggleDropdown('debitCardDropdown'); showFields('debit')">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Chip_card_icon.svg/1024px-Chip_card_icon.svg.png" alt="Debit Card">
            <span class="payment-text">Debit Card</span>
        </div>

        <div id="debitCardDropdown" class="dropdown-content">
            <div id="debitCardFields" style="display:none;">
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" maxlength="16" pattern="\d{16}" placeholder="Enter 16-digit card number" required>
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" maxlength="3" pattern="\d{3}" placeholder="Enter 3-digit CVV" required>
                <label for="expiryDate">Expiry Date (MM/YY):</label>
                <input type="text" id="expiryDate" maxlength="5" pattern="\d{2}/\d{2}" placeholder="MM/YY" required>
            </div>
        </div>

        <!-- Net Banking Option -->
        <div class="payment-option" onclick="toggleDropdown('netBankingDropdown'); showFields('net')">
            <i class="fas fa-university"></i>
            <span class="payment-text">Net Banking</span>
        </div>

        <div id="netBankingDropdown" class="dropdown-content">
            <div id="netBankingFields" style="display:none;">
                <label for="netBankingUsername">Username:</label>
                <input type="text" id="netBankingUsername" placeholder="Enter username" required>
                <label for="netBankingPassword">Password:</label>
                <input type="password" id="netBankingPassword" placeholder="Enter password" required>
            </div>
        </div>
        
        <button onclick="return validatePaymentForm()">Pay Now</button>
    </div>
</body>
</html>
