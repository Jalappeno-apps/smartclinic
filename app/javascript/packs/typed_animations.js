import Typed from 'typed.js';

const foo = JSON.parse(document.getElementById('typed').dataset.attrs);

// console.log(foo.sexual);
var typed4 = new Typed('#typed', {
  strings: [foo.sexual, foo.psychological, foo.physical],
  typeSpeed: 70,
  backSpeed: 40,
  bindInputFocusEvents: true,
  loop: true,
  smartBackspace: true,
  showCursor: true,
  cursorChar: '|'
});