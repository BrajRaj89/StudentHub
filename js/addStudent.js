
$(document).ready(function(){
$("#date").datepicker();
$("#studentForm").validate(
{
rules:{
firstname: { required: true },
lastname: { required: true },
studentId: { required: true },
email: { required: true, email: true },
date: { required: true, date: true },
college: { required: true },
address: { required: true },
contact: { required: true, digits: true, minlength: 10, maxlength: 10 }
},
messages:{
firstname: { required: "First name is required" },
lastname: { required: "Last name is required" },
studentId: { required: "Student ID is required" },
email:
{
required: "Email is required",
email: "Enter a valid email (example@example.com)"
},
date: { required: "Date of birth is required" },
college: { required: "College name is required" },
address: { required: "Address is required" },
contact: {
required: "Contact number is required",
digits: "Enter digits only",
minlength: "Enter a 10-digit number",
maxlength: "Only 10 digits allowed"
}
},
errorPlacement: function (error, element) {
let name = element.attr("name");
$("#" + name + "Error").html(error);
},
success: function (label, element) {
let name = $(element).attr("name");
$("#" + name + "Error").html(""); // clear error span on valid
}
});
$('#studentId').tooltip();
$('#firstname').tooltip();
$('#lastname').tooltip();
$('#email').tooltip();
});
