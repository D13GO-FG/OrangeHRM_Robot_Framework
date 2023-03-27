# Testing Framework for OrangeHRM Web app

## Technologies used
1. Robot Framework 6
2. Selenium Library
3. Python
4. Page Object Model
5. Data Driven Testing

## Test Cases

[Application Under Test](https://opensource-demo.orangehrmlive.com/web/index.php/auth/login)

---
TC1_LoginTest
Scenario: Login Page
Test description: Verify if correct credential works correctly.

Steps:

    Enter Username
    Enter Pwd
    Click Login

Expected result:

    Verify Successful Login by displying main page

---

TC2_Fill out Contact Details
Scenario: MyInfo Page / Contact Details
Test description: Verify if updating contact info of user works correctly.

Steps:

    Click My Info
    Click Contact Details
    Fill Out Form Address
    Fill Out Form Telephone
    Fill Out Form Email
    Click Save Contact

Expected result:

    Verify Pop Up with Success Message

---