"use strict";

$(init);

function init() {
  $("#movie1").click(function(event) {
    voteFor(this);
  });
  $("#movie2").click(function(event) {
    voteFor(this);
  });
}

function voteFor(e) {
  console.log("A vote for " + e.id);
}
