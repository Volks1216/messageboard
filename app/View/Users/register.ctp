<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        /* Form styles */
        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            padding: 10px;
            border: none;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Responsive styles */
        @media (max-width: 480px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Registration</h1>

        <?php
        echo $this->Form->create('Users', array('url' => array('action' => 'register')));
        echo $this->Form->input('name', array('label' => 'Name', 'style' => 'width: calc(100% - 22px)'));
        echo $this->Form->input('email', array('label' => 'Email', 'style' => 'width: calc(100% - 22px)'));
        echo $this->Form->input('password', array('label' => 'Password', 'type' => 'password', 'style' => 'width: calc(100% - 22px)'));
        echo $this->Form->input('confirm_password', array('label' => 'Confirm Password', 'type' => 'password', 'style' => 'width: calc(100% - 22px)'));
        echo $this->Form->submit('Register', ['class' => 'btn-submit']);
        echo $this->Form->end();

        if ($registrationSuccess) {
            echo "<p>Thank you for registering!</p>";
            echo $this->Html->link('Back to homepage', array('controller' => 'Users', 'action' => 'index', 'home'));
        }
        ?>
    </div>
</body>

</html>
