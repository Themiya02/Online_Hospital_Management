<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<jsp:include page="header.jsp" />

<div class="limiter" style="display: flex;">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title" style="background-image: url(images/bgfram2.jpg);">
                <span class="login100-form-title-1">
                    Add Users
                </span>
            </div>

            <form class="login100-form validate-form" action="AddUsers" method="post" onsubmit="return validateForm()">
              
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">Name</span>
                    <input class="input100" type="text" id="name" name="name" required oninput="validateName()">
                    <span class="focus-input100"></span>
                    <span class="error" id="nameError" style="color:red;"></span>
                </div>

             
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">Address</span>
                    <input class="input100" type="text" id="address" name="address" required oninput="validateAddress()">
                    <span class="focus-input100"></span>
                    <span class="error" id="addressError" style="color:red;"></span>
                </div>

              
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">Email</span>
                    <input class="input100" type="email" id="email" name="email" required oninput="validateEmail()">
                    <span class="focus-input100"></span>
                    <span class="error" id="emailError" style="color:red;"></span>
                </div>

               
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">Phone</span>
                    <input class="input100" type="tel" id="phone" name="phone" required oninput="validatePhone()">
                    <span class="focus-input100"></span>
                    <span class="error" id="phoneError" style="color:red;"></span>
                </div>

            
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">Gender</span>
                    <input type="radio" id="male" name="gender" value="male" required> <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="female" required> <label for="female">Female</label>
                    <span class="focus-input100"></span>
                    <span class="error" id="genderError" style="color:red;"></span>
                </div>

               
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">Age</span>
                    <input class="input100" type="number" id="age" name="age" required oninput="validateAge()">
                    <span class="focus-input100"></span>
                    <span class="error" id="ageError" style="color:red;"></span>
                </div>

              
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">User Name</span>
                    <input class="input100" type="text" id="UID" name="UID" required oninput="validateUsername()">
                    <span class="focus-input100"></span>
                    <span class="error" id="usernameError" style="color:red;"></span>
                </div>

               
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">Password</span>
                    <input class="input100" type="password" id="PID" name="PID" required oninput="validatePassword()">
                    <span class="focus-input100"></span>
                    <span class="error" id="passwordError" style="color:red;"></span>
                </div>

            
                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">Confirm Password</span>
                    <input class="input100" type="password" id="confirmPassword" name="confirmPassword" required oninput="validateConfirmPassword()">
                    <span class="focus-input100"></span>
                    <span class="error" id="confirmPasswordError" style="color:red;"></span>
                </div>


                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">User Type</span>
                    <select id="usertype" name="usertype" required>
                        <option value="0">Admin</option>
                        <option value="1">Patient</option>
                        <option value="2">Doctor</option>
                        <option value="3">Pharmacist</option>
                        <option value="4">Receptionist</option>
                    </select><br>
                    <span class="focus-input100"></span>
                </div>

                <div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Add User">
                </div>
            </form>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />

<script>

function validateName() {
    var name = document.getElementById("name").value;
    if (name.trim() === "") {
        document.getElementById("nameError").innerHTML = "Name is required.";
    } else {
        document.getElementById("nameError").innerHTML = "";
    }
}

function validateAddress() {
    var address = document.getElementById("address").value;
    if (address.trim() === "") {
        document.getElementById("addressError").innerHTML = "Address is required.";
    } else {
        document.getElementById("addressError").innerHTML = "";
    }
}

function validateEmail() {
    var email = document.getElementById("email").value;
    var emailPattern = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
    if (!emailPattern.test(email)) {
        document.getElementById("emailError").innerHTML = "Invalid email format.";
    } else {
        document.getElementById("emailError").innerHTML = "";
    }
}

function validatePhone() {
    var phone = document.getElementById("phone").value;
    var phonePattern = /^[0-9]{10}$/;
    if (!phonePattern.test(phone)) {
        document.getElementById("phoneError").innerHTML = "Phone number must be 10 digits.";
    } else {
        document.getElementById("phoneError").innerHTML = "";
    }
}

function validateAge() {
    var age = document.getElementById("age").value;
    if (age <= 0 || age === "") {
        document.getElementById("ageError").innerHTML = "Age must be a positive number.";
    } else {
        document.getElementById("ageError").innerHTML = "";
    }
}

function validateUsername() {
    var username = document.getElementById("UID").value;
    if (username.trim() === "") {
        document.getElementById("usernameError").innerHTML = "Username is required.";
    } else {
        document.getElementById("usernameError").innerHTML = "";
    }
}

function validatePassword() {
    var password = document.getElementById("PID").value;
    if (password.trim() === "") {
        document.getElementById("passwordError").innerHTML = "Password is required.";
    } else {
        document.getElementById("passwordError").innerHTML = "";
    }
}

function validateConfirmPassword() {
    var password = document.getElementById("PID").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    if (password !== confirmPassword) {
        document.getElementById("confirmPasswordError").innerHTML = "Passwords do not match.";
    } else {
        document.getElementById("confirmPasswordError").innerHTML = "";
    }
}

function validateForm() {
    validateName();
    validateAddress();
    validateEmail();
    validatePhone();
    validateAge();
    validateUsername();
    validatePassword();
    validateConfirmPassword();
   
    return document.querySelectorAll('.error:empty').length === document.querySelectorAll('.error').length;
}
</script>


