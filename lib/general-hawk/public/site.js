$(document).ready(function() {
  $(".project h1 a").each(function(index, link) {
    $.getJSON($(link).attr("href") + "/api/json", function(data){
      $(link).parent().parent().parent().addClass(data.jobs[0].status);
      $(link).parent().parent().siblings(".status").text(data.jobs[0].status);
      github_link = "<a href=\'" + data.jobs[0].commit_url + "\'>" + data.jobs[0].short_sha + "</a>"
      $(link).parent().parent().find(".github_link").html(github_link);
      $(link).parent().parent().find(".duration").text(data.jobs[0].duration + " seconds");      
      if (data.jobs[0].status == "worked") {
        $(link).parent().parent().siblings(".status").replaceWith("<span class='status'><img src='/Checked.png' /></span>")
      } else {
        $(link).parent().parent().siblings(".status").replaceWith("<span class='status'><img src='/Stop.png' /></span>")
      }
    });
  });
});