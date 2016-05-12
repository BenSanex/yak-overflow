$(document).ready(function() {
  // upvote
  $(".upvote").on("submit", function(event){
    event.preventDefault();
    var data = $(".total").text();
    $(".total").text(parseInt(data) + 1);
    var action = $(this).attr("action");

    $.ajax({
      method: "post",
      url: action
    });
  });

  // downvote
  $(".downvote").on("submit", function(event){
    event.preventDefault();
    var data = $(".total").text();
    // html visual
    $(".total").text(parseInt(data) - 1);
    var action = $(this).attr("action");

    $.ajax({
      method: "post",
      url: action
    });
  });

    // upvote
  $(".aupvote").on("submit", function(event){
    event.preventDefault();
    var data = $(this).parent().find(".atotal").text();
    // html visual
    $(this).parent().find(".atotal").text(parseInt($(this).parent().find(".atotal").text()) + 1);

    var action = $(this).attr("action");

    $.ajax({
      method: "post",
      url: action
    });
  });

  // downvote
  $(".adownvote").on("submit", function(event){
    event.preventDefault();
    var data = $(this).parent().find(".atotal").text();
    // html visual
    $(this).parent().find(".atotal").text(parseInt($(this).parent().find(".atotal").text()) - 1);
    var action = $(this).attr("action");

    $.ajax({
      method: "post",
      url: action
    });
  });

});
