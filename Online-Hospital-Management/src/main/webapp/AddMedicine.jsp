<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />

<div class="limiter" style="display: flex;">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title" style="background-image: url(images/bgfram2.jpg);">
				<span class="login100-form-title-1">
					Add Medicine
				</span>
			</div>

			<!-- Add form ID and onsubmit handler -->
			<form class="login100-form validate-form" action="AddMedicine" method="post" id="medicineForm" onsubmit="return validateMedicineForm()">

				<div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Name</span>
					<input class="input100" type="text" id="medicineName" name="medicineName" placeholder="Medicine Name" >
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Type</span>
					<select class="input100" id="medicineType" name="medicineType">
                        <option value="">Select Type</option>
                        <option value="tablet">Tablet</option>
                        <option value="syrup">Syrup</option>
                        <option value="capsule">Capsule</option>
                        <option value="injection">Injection</option>                 
                    </select>
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Description</span>
					<input class="input100" type="text" id="medicineDescription" name="medicineDescription" placeholder="Medicine Description" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Price</span>
					<input class="input100" type="text" id="medicinePrice" name="medicinePrice" placeholder="Medicine Price" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Quantity</span>
					<input class="input100" type="text" id="medicineQuantity" name="medicineQuantity" placeholder="Medicine Quantity" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Expiry Date</span>
					<input class="input100" type="date" id="medicineExpiryDate" name="medicineExpiryDate" placeholder="Medicine Expiry Date" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Manufacturing Date</span>
					<input class="input100" type="date" id="medicineManufacturingDate" name="medicineManufacturingDate" placeholder="Medicine Manufacturing Date" >
					<span class="focus-input100"></span>
				</div>

                <div class="wrap-input100 validate-input m-b-26" >
					<span class="label-input100">Medicine Company</span>
					<input class="input100" type="text" id="medicineCompany" name="medicineCompany" placeholder="Medicine Company" >
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
                    <input class="login100-form-btn" type="submit" value="Add Medicine">
				</div>
			</form>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />

<!-- JavaScript for Form Validation -->
<script>
    function validateMedicineForm() {
        // Get form field values
        let medicineName = document.getElementById("medicineName").value.trim();
        let medicineType = document.getElementById("medicineType").value;
        let medicineDescription = document.getElementById("medicineDescription").value.trim();
        let medicinePrice = document.getElementById("medicinePrice").value.trim();
        let medicineQuantity = document.getElementById("medicineQuantity").value.trim();
        let medicineExpiryDate = document.getElementById("medicineExpiryDate").value;
        let medicineManufacturingDate = document.getElementById("medicineManufacturingDate").value;
        let medicineCompany = document.getElementById("medicineCompany").value.trim();

        // Validation for medicine name
        if (medicineName === "") {
            alert("Please enter the medicine name.");
            return false;
        }

        // Validation for medicine type
        if (medicineType === "") {
            alert("Please select the medicine type.");
            return false;
        }

        // Validation for medicine description
        if (medicineDescription === "") {
            alert("Please enter a description for the medicine.");
            return false;
        }

        // Validation for medicine price (must be a number)
        if (medicinePrice === "" || isNaN(medicinePrice) || Number(medicinePrice) <= 0) {
            alert("Please enter a valid medicine price.");
            return false;
        }

        // Validation for medicine quantity (must be a number)
        if (medicineQuantity === "" || isNaN(medicineQuantity) || Number(medicineQuantity) <= 0) {
            alert("Please enter a valid medicine quantity.");
            return false;
        }

        // Validation for expiry date
        if (medicineExpiryDate === "") {
            alert("Please select the medicine expiry date.");
            return false;
        }

        // Validation for manufacturing date
        if (medicineManufacturingDate === "") {
            alert("Please select the medicine manufacturing date.");
            return false;
        }

        // Validation for medicine company
        if (medicineCompany === "") {
            alert("Please enter the medicine company.");
            return false;
        }

        // If all validations pass, allow form submission
        return true;
    }
</script>
