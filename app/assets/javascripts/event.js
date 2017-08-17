
// document.addEventListener('DOMContentLoaded', () => {
//   document.querySelector(".btn-info").addEventListener('submit', (event) => {
//     event.preventDefault();
//     let checkin1 = document.querySelector(".in").value;
//     console.log(checkin);
//     let checkout1 = document.querySelector(".out").value;
//     console.log(checkout);
//   });
// });

const mySubmit =  document.querySelector(".btn-info");
console.log(mySubmit);

if(mySubmit){
  mySubmit.addEventListener('submit', (event) => {
    event.preventDefault();
    let checkin1 = document.querySelector(".in").value;
    console.log(checkin);
    let checkout1 = document.querySelector(".out").value;
    console.log(checkout);
  });
}
