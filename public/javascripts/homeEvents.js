function setUpHomeEvents() {
    var projectButtons = document.getElementsByClassName("projectButton");

    console.log(projectButtons.length);

    for (var i = 0; i < projectButtons.length; i++) {
        projectButtons[i].addEventListener('click', function() {
            console.log("you clicked me!");
            window.location.href = '/projects?type=' + this.id;

        });

    }

}