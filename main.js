const form = document.getElementById("_#")
const new_form = document.getElementById("new_theme")
const channel_listener = document.querySelector(".channel_listener")
const channel_listener2 = document.querySelector(".channel_listener2")
const channel_listener3 = document.querySelector(".channel_listener3")
form.addEventListener("blur", (e) => {
    if (form.value == "new_one") {
        new_form.style.display = 'block';
        channel_listener.style.display = 'none'
        channel_listener2.style.display = 'none'
        channel_listener3.style.display = 'none'
    }
    else {
        new_form.style.display = 'none';
        channel_listener.style.display = 'block';
        channel_listener2.style.display = 'block';
        channel_listener3.style.display = 'block';
    }
})