import swal from 'sweetalert';

function callSweetAlert(){
const name = document.getElementById('sweet-alert-target').getAttribute('value');
swal(`You've matched with ${name}`, "Keep matching!", "success");
}

export { callSweetAlert }
