$(function(){
    $("#announcements th a, #announcements .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
        });
    $("#announcements_search input").keyup(function(){
        $.get($("#announcements_search").attr("action"), $("#announcements_search").serialize(), null, "script");
        return false;
    });
});
