<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.Users.Users" %>
<jsp:include page="header.jsp" />

<%
String patientid=request.getParameter("patientid");
String patientname=request.getParameter("patientname");

List<Users> usersList = (List<Users>) session.getAttribute("userDetails");
Users users = null;
if(usersList != null && usersList.size() > 0) {
    users = usersList.get(0);
if(users != null) {    
%>

<div class="limiter" style="display: flex;">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title" style="background-image: url(images/bgfram3.jpg);">
                <span class="login100-form-title-1">
                    Add Prescription
                </span>
            </div>

            <!-- Add form ID and onsubmit handler -->
            <form class="login100-form validate-form" action="AddPrescription" method="post" id="prescriptionForm" onsubmit="return validateForm()">
                
                <div class="wrap-input100 validate-input m-b-26" >
                    <span class="label-input100">Date</span>
                    <input class="input100" type="date" name="pdate" id="pdate">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" >
                    <span class="label-input100">Diagnostics</span>
                    <input class="input100" type="text" name="Diagnostics" id="diagnostics">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" >
                    <span class="label-input100">Medicine</span>
                    <input class="input100" type="text" name="pmedicine" id="medicine">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" >
                    <span class="label-input100">Description</span>
                    <input class="input100" type="text" name="pdescription" id="description">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" >
                    <span class="label-input100">Doctor Name</span>
                    <input class="input100" type="text" name="pdoctorname" value="<%=users.getName()%>" readonly>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" >
                    <span class="label-input100">Doctor ID</span>
                    <input class="input100" type="text" name="pdoctorid" value="<%=users.getId()%>" readonly>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" >
                    <span class="label-input100">Patient Name</span>
                    <input class="input100" type="text" name="ppatientname" id="patientname" value="<%=patientname%>" readonly>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" >
                    <span class="label-input100">Patient ID</span>
                    <input class="input100" type="text" name="ppatientid" id="patientid" value="<%=patientid%>" readonly>
                    <span class="focus-input100"></span>
                </div>

                <div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Submit">
                </div>
            </form>
        </div>
    </div>
</div>

<%
}
}
%>

<jsp:include page="footer.jsp" />

<!-- JavaScript for Form Validation -->
<script>
    function validateForm() {
       
        let date = document.getElementById("pdate").value;
        let diagnostics = document.getElementById("diagnostics").value;
        let medicine = document.getElementById("medicine").value;
        let description = document.getElementById("description").value;
        let patientname = document.getElementById("patientname").value;
        let patientid = document.getElementById("patientid").value;

     
        if (date === "") {
            alert("Please select a date.");
            return false;
        }

        
        if (diagnostics.trim() === "") {
            alert("Please enter diagnostics.");
            return false;
        }

       
        if (medicine.trim() === "") {
            alert("Please enter medicine details.");
            return false;
        }

       
        if (description.trim() === "") {
            alert("Please enter a description.");
            return false;
        }

       
        if (patientname.trim() === "") {
            alert("Patient name is required.");
            return false;
        }

       
        if (patientid.trim() === "") {
            alert("Patient ID is required.");
            return false;
        }

       
        return true;
    }
</script>
