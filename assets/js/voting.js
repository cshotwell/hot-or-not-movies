"use strict";

$(init);

function init() {
  $(".movie1").click(function(event) {
    voteFor(this);
  });
  $(".movie2").click(function(event) {
    voteFor(this);
  });

  setupMouseOverFrame('.movie1')
  setupMouseOverFrame('.movie2')
}

function setupMouseOverFrame(selector) {
  $(selector).mouseenter(function(event) {
    $(this).removeClass('no-frame');
    $(this).addClass('frame');
  });
  $(selector).mouseleave(function(event) {
    $(this).removeClass('frame');
    $(this).addClass('no-frame');
  });
}

function voteFor(element) {
  console.log("A vote for " + element.id);
  $.post("/" + element.id, true);
  window.location.replace(window.location) 
}
