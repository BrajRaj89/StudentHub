var data;
var max=0;
var correct =0;
var progress =0;
$(function(){
$("#progressBar").progressbar({
  value: 0
});

});
var promise = new Promise(function(resolve,reject){

$.ajax({
url:"getQuestion",
type:"GET",
dataType:"json",
success:function(response)
{
if(response==="some problem")
{
reject("some problem");
}else
{
resolve(response);
}
}
});
});
promise.then(function(result){
data= result;
max = data.length;
var qsn = data[0];
var sn  = qsn.id;
var text = qsn.question;
$("#question").text(sn+". "+text);
var text1 = qsn.options[0].text;
$("#opn1").val(text1);
$("#lb1").text(text1);
var text2 = qsn.options[1].text;
$("#opn2").val(text2);
$("#lb2").text(text2);
var text3 = qsn.options[2].text;
$("#opn3").val(text3);
$("#lb3").text(text3);
var text4 = qsn.options[3].text;
$("#opn4").val(text4);
$("#lb4").text(text4);

},function(error){
alert('some problem while loading data');
});

var count =0;
function getNext()
{
var checked;
var value;
var ans = document.querySelectorAll('input[name="ans"]');
ans.forEach(function(ele){
if(ele.checked)
{
value = ele.value;
checked = true;
}
});
if(!checked)
{
$('#error').text('Tick a option first');
$('#error').css("color","red");
return;
}else
{
$('#error').text(null);
var question = data[count];
var options = question.options;
for(var op of options)
{
if(op.isCorrect==true)
{
var correctval =  op.text;
break;
}
}
if(correctval===value)
{
correct= correct+1;
}
}
count++;
let progress = (count/ max) * 100;
$("#progressBar").progressbar("value", progress);
if(count==max-1)
{
$("#btn").text("submit");
}
if(count==max)
{
total = max;
$("#totalF").val(total);
$("#correctF").val(correct);
$("#getResult").submit();
}
progress +=progress;
document.querySelector('input[name="ans"]:checked').checked = false;
var qsn = data[count];
var sn  = qsn.id;
var text = qsn.question;
$("#question").text(sn+". "+text);
var text1 = qsn.options[0].text;
$("#opn1").val(text1);
$("#lb1").text(text1);
var text2 = qsn.options[1].text;
$("#opn2").val(text2);
$("#lb2").text(text2);
var text3 = qsn.options[2].text;
$("#opn3").val(text3);
$("#lb3").text(text3);
var text4 = qsn.options[3].text;
$("#opn4").val(text4);
$("#lb4").text(text4);
}

