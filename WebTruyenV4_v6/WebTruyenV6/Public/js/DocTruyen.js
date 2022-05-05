function gotop() { scroll(0, 0) }

function setup() { document.getElementById("top").style.visibility = "hidden"; document.getElementById("menu-pc").style.visibility = "hidden" }
var lastScrollTop = 0; $(window).scroll(function (event) {
    var body = document.body.clientWidth; document.getElementById("top").style.visibility = "hidden"; document.getElementById("menu-pc").style.visibility = "hidden"; var currentScroll = $(this).scrollTop(); if ($(this).scrollTop() > lastScrollTop) { $('#thanh-menu').addClass('hidden'); document.getElementById("top").style.visibility = "hidden" } else { if (body < 769) { $('#thanh-menu').removeClass('hidden'); document.getElementById("top").style.visibility = "unset" } else { document.getElementById("menu-pc").style.visibility = "unset"; document.getElementById("top").style.visibility = "hidden" } }
    lastScrollTop = currentScroll
});

