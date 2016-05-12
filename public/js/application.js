$(document).ready(function() {

  // hide some stuff by default
  $("#question-comment").hide();
  $("#search").hide();
  
  // splash fade out and reroute to questions
  $("#logo").on("click", function(event){
    event.preventDefault()
    $(this).fadeOut("slow", function(){
      window.location.href = "/questions"
    });
  });

  // upvote on questions
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

  // downvote on questions
  $(".downvote").on("submit", function(event){
    event.preventDefault();
    var data = $(".total").text();
    $(".total").text(parseInt(data) - 1);
    var action = $(this).attr("action");
    $.ajax({
      method: "post",
      url: action
    });
  });

  // upvote on answers
  $(".aupvote").on("submit", function(event){
    event.preventDefault();
    var data = $(this).parent().find(".atotal");
    data.text(parseInt(data.text()) + 1);
    var action = $(this).attr("action");
    $.ajax({
      method: "post",
      url: action
    });
  });

  // downvote on answers
  $(".adownvote").on("submit", function(event){
    event.preventDefault();
    var data = $(this).parent().find(".atotal");
    data.text(parseInt(data.text()) - 1);
    var action = $(this).attr("action");
    $.ajax({
      method: "post",
      url: action
    });
  });

  // comment show/hide for questions
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

  // search bar pop up
  $("#search-text").on("click", function(){
    $("#search").slideDown("fast");
  }); 

});
