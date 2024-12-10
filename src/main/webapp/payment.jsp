<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Information</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        /* General Styles */
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #00acc1; /* Sea blue */
            font-weight: 600;
            margin-bottom: 40px;
            font-size: 2em;
        }

        /* Payment Container */
        .payment-container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            padding: 20px;
            overflow: hidden;
        }

        /* Section Titles */
        .section h2 {
            color: #00acc1; /* Sea blue */
            font-size: 1.5em;
            margin-bottom: 10px;
            font-weight: 600;
        }

        /* Section Content */
        .section p {
            color: #555;
            line-height: 1.6;
        }

        .section ul {
            margin: 10px 0;
            padding-left: 20px;
            color: #666;
        }

        .section ul li {
            margin-bottom: 5px;
        }

        /* Image Styles */
        .image-placeholder {
            width: 100%;
            height: 200px;
            background-color: #e6e9ef;
            border-radius: 5px;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #8a2be2; /* Violet */
            font-size: 1.1em;
            font-weight: 600;
            border: 1px solid #ddd;
        }

        /* Button Style */
        .contact-btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 15px;
            background-color: #8a2be2; /* Violet */
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .contact-btn:hover {
            background-color: #5e1a9f;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .section h2 {
                font-size: 1.4em;
            }

            h1 {
                font-size: 1.8em;
            }
        }
    </style>
</head>
<body>

    <h1>Payment Information</h1>

    <div class="payment-container">

        <!-- Accepted Payment Methods Section -->
       <div class="section">
    <h2>Accepted Payment Methods</h2>
    <img src="https://i.etsystatic.com/29318579/r/il/b877bb/5720409414/il_fullxfull.5720409414_b5lb.jpg" alt="Accepted Payment Methods" class="image-placeholder" />
    <p>We accept a variety of payment methods to make your experience seamless:</p>
    <ul>
        <li>Credit and Debit Cards (Visa, MasterCard, American Express)</li>
        <li>Online Payment Services (PayPal, Stripe, UPI)</li>
    </ul>
</div>


        <!-- Payment Security Section -->
        <div class="section">
            <h2>Payment Security</h2>
         <img src="https://www.shutterstock.com/image-illustration/secure-payment-design-260nw-589663346.jpg" alt="Accepted Payment Methods" class="image-placeholder" />
            <p>Your security is our priority. All transactions are processed using secure encryption technology to protect your information. We adhere to the highest security standards to ensure your data is safe.</p>
        </div>

        <!-- Billing Cycle Section -->
       

        <!-- Refund Policy Section -->
        <div class="section">
            <h2>Refund Policy</h2>
            <img src="https://img.freepik.com/premium-vector/refund-policy-square-grunge-stamp_545399-4884.jpg" alt="Accepted Payment Methods" class="image-placeholder" />
            <p>If you are not satisfied with a service, please contact us within 7 days of the transaction. Refunds are evaluated on a case-by-case basis, and we strive to address your concerns promptly.</p>
        </div>

        <!-- Contact Us Section -->
        <div class="section">
            <h2>Contact Us</h2>
           <img src="https://www.shutterstock.com/image-vector/contact-us-speech-bubble-on-600nw-1425705248.jpg" alt="Accepted Payment Methods" class="image-placeholder" />
            <p>If you have any questions regarding payments, feel free to reach out to our customer support team:</p>
            <ul>
                <li>Email: support@experthub.com</li>
                <li>Phone: +91 6300391832</li>
            </ul>
            <a href="mailto:support@experthub.com" class="contact-btn">Contact Support</a>
        </div>
    </div>

</body>
</html>
