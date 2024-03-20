document.addEventListener("turbo:load", () => {
  "use strict";

  const form               = document.getElementById('memento_form');
  const formSections       = document.querySelectorAll('.form-section');
  const nextButtons        = document.querySelectorAll('.next-button');
  const backButtons        = document.querySelectorAll('.back-button');
  let currentSectionIndex  = 0;

  showCurrentFormSection();

  function showCurrentFormSection() {
    formSections.forEach(function(section, index) {
      if (index === currentSectionIndex) {
        section.style.display = 'block';
      } else {
        section.style.display = 'none';
      }
    });
    if (currentSectionIndex <= 0) {
      backButtons.forEach(function(button) {
        button.style.display = 'none';
      });
    } else {
      backButtons.forEach(function(button) {
        button.style.display = 'block';
      });
    }
    if (currentSectionIndex >= formSections.length - 1) {
      nextButtons.forEach(function(button) {
        button.style.display = 'none';
      });
    } else if(currentSectionIndex < formSections.length - 1) {
      nextButtons.forEach(function(button) {
        button.style.display = 'block';
      });
    }
  }

  nextButtons.forEach(function(button) {
    button.addEventListener('click', function(event) {
      goToNextSection();
    });
  });

  backButtons.forEach(function(button) {
    button.addEventListener('click', function(event) {
      goToPreviousSection();
    });
  });

  function goToNextSection() {
    currentSectionIndex++;
    showCurrentFormSection();
  }

  function goToPreviousSection() {
    if (currentSectionIndex > 0) {
      currentSectionIndex--;
    }
    showCurrentFormSection();
  }

})
