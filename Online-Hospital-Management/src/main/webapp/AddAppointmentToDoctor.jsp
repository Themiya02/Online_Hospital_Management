<jsp:include page="header.jsp" />
<%@ page import="java.util.List" %>
<%@ page import="com.Users.Users" %>

<div class="limiter" style="display: flex;">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title" style="background-image: url(images/bgfram5.jpg);">
                <span class="login100-form-title-1">
                    Add Appointment To Doctor
                </span>
            </div>
            <% 
            int did=0; 
            String didParam=request.getParameter("did"); 

            if (didParam !=null && !didParam.isEmpty()) {
                did=Integer.parseInt(didParam); 
            } 
            String doctorname=request.getParameter("doctorname"); 

            List<Users> usersList = (List<Users>) session.getAttribute("userDetails");
                    Users users = null;

                    if(usersList != null && usersList.size() > 0) {
                    users = usersList.get(0);
                    
                    if(users != null) {

                    %>
                    <!-- Add an ID to the form for easy access from JavaScript -->
                    <form class="login100-form validate-form" action="AddAppointmenttoDocter" method="post" id="appointmentForm" onsubmit="return validateForm()">
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Patient ID is required">
                            <span class="label-input100">Patient ID:</span>
                            <input class="input100" type="text" name="patientid" value="<%=users.getId() %>" readonly placeholder="">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="Patient Name is required">
                            <span class="label-input100">Patient Name:</span>
                            <input class="input100" type="text" name="patientname" id="patientname" required placeholder=".">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Date is required">
                            <span class="label-input100">Date:</span>
                            <input class="input100" type="date" name="date" id="date" min="2024-10-13" required placeholder="">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="Time is required">
                            <span class="label-input100">Time:</span>
                            <input class="input100" type="time" name="time" id="time" required placeholder=".">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Description is required">
                            <span class="label-input100">Description:</span>
                            <input class="input100" type="text" name="description" id="description" required placeholder="">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="Doctor ID is required">
                            <span class="label-input100">Doctor Id:</span>
                            <input class="input100" type="text" name="doctorid" value="<%=did%>" readonly placeholder=".">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input m-b-26" data-validate="Doctor Name is required">
                            <span class="label-input100">Doctor Name:</span>
                            <input class="input100" type="text" name="doctorname" value="<%=doctorname%>" readonly placeholder="">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="container-login100-form-btn">
                            <input class="login100-form-btn" type="submit" value="Add">
                        </div>
                    </form>
                    <% } } %>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />

<!-- JavaScript validation -->
<script>
    function validateForm() {
        let patientName = document.getElementById("patientname").value;
        let date = document.getElementById("date").value;
        let time = document.getElementById("time").value;
        let description = document.getElementById("description").value;

        
        if (patientName.trim() === "") {
            alert("Please enter a valid patient name.");
            return false;
        }

       
        if (date === "") {
            alert("Please select a date.");
            return false;
        }

        
        if (time === "") {
            alert("Please select a time.");
            return false;
        }

        if (description.trim() === "") {
            alert("Please enter a description.");
            return false;
        }

       
        return true;
    }
</script>



						
