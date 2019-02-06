function openNav() {
    var o=true;
    if(o) {
        document.getElementById("mySidepanel").style.width = "250px";
    }




}
function movebutt(){

}

function closeNav() {
    document.getElementById("mySidepanel").style.width = "0";
}
function toggleNav() {
    var sidenav = document.getElementById("mySidepanel"),
        main = document.getElementById("main");
    sidenav.style.width = sidenav.style.width == "250px" ? '0' : '250px';
    main.style.marginLeft = main.style.marginLeft === "250px" ? '0' : '250px';
}

function myFunction(x) {
    x.classList.toggle("change");
}
