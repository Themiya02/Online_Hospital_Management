<jsp:include page="header.jsp" />

<%
String idappointment =request.getParameter("idappointment");
String patientid = request.getParameter("patientid");
String patientname = request.getParameter("patientname");
String date = request.getParameter("date");
String time = request.getParameter("time");
String description = request.getParameter("description");
String doctorid = request.getParameter("doctorid");
String doctorname = request.getParameter("doctorname");

%>

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title" style="background-image: url(images/bgfram5.jpg);">
				<span class="login100-form-title-1">
					Update Appointment
				</span>
			</div>

			<form class="login100-form validate-form" action="UpdateAppointment" method="post">
				<div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Appointment Id</span>
					<input class="input100"  type="text" name="idappointment" value="<%=idappointment%>" readonly>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Patient Id</span>
					<input class="input100" type="text" name="patientid" value="<%=patientid%>" readonly>
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Patient Name</span>
					<input class="input100" type="text" name="patientname" value="<%=patientname%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Appointment date</span>
					<input class="input100" type="date" name="date" min="2024-10-13" value="<%=date%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Appointment time</span>
					<input class="input100" type="time" name="time" value="<%=time%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Appointment description</span>
					<input class="input100" type="text" name="description" value="<%=description%>">
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Doctor Id</span>
					<input class="input100" type="text" name="doctorid" value="<%=doctorid%>" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-18" >
					<span class="label-input100">Doctor Name</span>
					<input class="input100" type="text" name="doctorname" value="<%=doctorname%>">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Update">
				</div>
			</form>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />

