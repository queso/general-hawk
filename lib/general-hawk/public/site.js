$(document).ready(function() {
  $(".project h1 a").each(function(index) {
    $.getJSON($(this).attr("href") + "/api/json", function(data){
      alert(data.jobs[0].color);
    });
  });
});