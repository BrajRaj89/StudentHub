$("#searchF").on('submit',function(e){
var value = $("#search-field").val();
if(value.length==0){
e.preventDefault();
$("#search-field").focus();
setTimeout(function(){
document.activeElement.blur();
},2000);
return;
}
});

var availableStudents =[];
$(document).ready(function(){
$.get({"url":"getStudent"});
 $.ajax({
url:"getStudentsName",
type:"GET",
success:function(response)
{
if(response.length==0)
{
availableStudents.push("No students");
}else
{
response.forEach(function(name){
availableStudents.push(name);
});
}
}
});
$( "#search-field" ).autocomplete({
      source: availableStudents
    });

});
 