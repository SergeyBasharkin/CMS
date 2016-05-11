/**
 * Created by sergey on 17.03.16.
 */
var stickySidebar = $('.sticky');

if (stickySidebar.length > 0) {
    var stickyHeight = stickySidebar.height(),
        sidebarTop = stickySidebar.offset().top,
        myHeaderHeight=$(".myHead").height();
}

// on scroll move the sidebar
$(window).scroll(function () {
    if (stickySidebar.length > 0) {
        var scrollTop = $(window).scrollTop();

        if (sidebarTop < scrollTop+myHeaderHeight) {
            stickySidebar.css('top', scrollTop - sidebarTop);

        }
        else {
             stickySidebar.css('top', '0');
        }
    }
});
jQuery(function($) {
    $(".left_swap").click(function (){
        $(".left_side").toggle(200);
        return false;
    });
})
$(window).resize(function () {
    if (stickySidebar.length > 0) {
        stickyHeight = stickySidebar.height();
    }
});