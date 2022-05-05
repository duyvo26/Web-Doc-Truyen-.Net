function gotop() { scroll(0, 0) }
var lastScrollTop = 0; $(window).scroll(function (event) {
    var body = document.body.clientWidth; document.getElementById("top").style.visibility = "hidden"; var currentScroll = $(this).scrollTop(); if ($(this).scrollTop() > lastScrollTop) { $('#thanh-menu').addClass('hidden'); document.getElementById("top").style.visibility = "hidden" } else {
        if (body < 769) { $('#thanh-menu').removeClass('hidden'); document.getElementById("top").style.bottom = "55px" } else { document.getElementById("top").style.bottom = "5px" }
        document.getElementById("top").style.visibility = "unset"
    }
    lastScrollTop = currentScroll
})