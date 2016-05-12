$(document).ready(function() {
  $("#question-comment").hide();
  // upvote

  $("#logo").on("click", function(event){
    event.preventDefault()
    $(this).fadeOut("slow", function(){
      window.location.href = "/login"
    });
  });

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
    var data = $(this).parent().find(".atotal");
    // html visual
    data.text(parseInt(data.text()) + 1);

    var action = $(this).attr("action");

    $.ajax({
      method: "post",
      url: action
    });
  });

  // downvote
  $(".adownvote").on("submit", function(event){
    event.preventDefault();
    var data = $(this).parent().find(".atotal");
    // html visual
    data.text(parseInt(data.text()) - 1);
    var action = $(this).attr("action");

    $.ajax({
      method: "post",
      url: action
    });
  });

   $(".q-comment").on("click", function(event){
    event.preventDefault();
    $(this).hide(function(){
      $("#question-comment").show().on("submit", function(event){
        event.preventDefault();
        var form = $(this).children(":first");
        var url = form.attr("action");
        var data = form.serialize()
        var partyTimes = $.ajax({
          method: "post",
          url: url,
          data: data
        });
        partyTimes.done(function(response){
          $("#comment-render").append(response);
          $("#question-comment").hide();
          $(".q-comment").show();
        });
      });
    });

  });


});
