function fadeOutAlert() {
  setTimeout(function(){
    $('.alert').slideUp(1500);
  }, 1000);
};

export { fadeOutAlert }
