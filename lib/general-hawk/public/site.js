$(document).ready(function() {
  $(".project h1 a").each(function(index) {
    link = $(this)
    $.getJSON(link.attr("href") + "/api/json", function(data){
      link.parents(".project").addClass(data.jobs[0].color);
    });
  });
});