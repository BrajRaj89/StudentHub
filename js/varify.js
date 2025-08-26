function showForm(type)
{
const loginForm = document.getElementById('loginForm');
const registerForm = document.getElementById('registerForm');
const loginTab = document.getElementById('loginTab');
const registerTab = document.getElementById('registerTab');
if(type === 'login') 
{
loginForm.classList.add('active');
registerForm.classList.remove('active');
loginTab.classList.add('active');
registerTab.classList.remove('active');
} 
else 
{
loginForm.classList.remove('active');
registerForm.classList.add('active');
loginTab.classList.remove('active');
registerTab.classList.add('active');
}
}
$(document).ready(function() 
{
$("#loginForm").validate();
$("#registerForm").validate();
});

