$(document).ready(function () {
    $("#moveButton").click(function () {
        $("#myPanel").animate({ left: "+=100px" }, "slow");
    });
});