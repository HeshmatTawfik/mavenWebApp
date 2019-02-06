var ClientsideScript_AJAX = {
    getServersideValue: function(){
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = callback;
        xmlhttp.open("POST", "WhoApplied", true);
        xmlhttp.send(getContent);
        function callback() {
            if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                $('.PlaceholderForServersideValue').html(xmlhttp.responseText);
            } else {
                // have not recieved data from server yet
            }
        }
    }
};