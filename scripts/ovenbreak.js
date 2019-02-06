(function () {
  function makePageListFullWidth() {
    const element = document.getElementsByClassName('sub')[0];
    if (element) {
      element.style.width = 'unset';
    }
  }

  makePageListFullWidth();
})();
