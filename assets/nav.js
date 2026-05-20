// Mobile nav toggle
document.addEventListener('DOMContentLoaded', function () {
  var toggle = document.querySelector('.nav-toggle');
  var navWrap = document.querySelector('.header-nav-wrap');
  if (toggle && navWrap) {
    toggle.addEventListener('click', function () {
      navWrap.classList.toggle('open');
      toggle.setAttribute('aria-expanded', navWrap.classList.contains('open'));
    });
  }
});
