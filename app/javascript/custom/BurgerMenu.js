document.addEventListener("turbo:load", () => {
  "use strict";

 var mobileMenuButton = document.querySelector("#mobileMenuButton");
 var closeMenuButton  = document.querySelector("#closeMenuButton");
 var openMenuButton   = document.querySelector("#openMenuButton");


 openMenuButton.addEventListener("click", (e) => {
   mobileMenuButton.classList.toggle("hidden");
 });

 closeMenuButton.addEventListener("click", (e) => {
   mobileMenuButton.classList.toggle("hidden");
 });
})
