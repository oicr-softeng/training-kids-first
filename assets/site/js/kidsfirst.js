// Overrides bootstrap behaviour for ticket: WEB-17064

$(document).ready(function() {
    (function() {
        if (
            '-ms-user-select' in document.documentElement.style &&
            navigator.userAgent.match(/IEMobile/)
        ) {
            var msViewportStyle = document.createElement('style');
            msViewportStyle.appendChild(
                document.createTextNode('@-ms-viewport{width:auto!important}')
            );
            document
                .getElementsByTagName('head')[0]
                .appendChild(msViewportStyle);
        }
    })();

    $('#partnersModal').on('slid.bs.carousel', function(e) {
        var nextH = $(e.relatedTarget)
            .find('.item-inner')
            .height();
        $(this)
            .find('.active')
            .parent()
            .animate({ height: nextH }, 500);
    });

    $(function() {
        var maxHeight = 0;

        $('.card-content-container h3').each(function() {
            if ($(this).height() > maxHeight) {
                maxHeight = $(this).height();
            }
        });

        $('.card-content-container h3').height(maxHeight);
    });

    function centerModal() {
        $(this).css('display', 'block');
        var $dialog = $(this).find('.modal-dialog'),
            offset = ($(window).height() - $dialog.height()) / 2,
            bottomMargin = parseInt($dialog.css('marginBottom'), 10);

        // Make sure you don't hide the top part of the modal w/ a negative margin if it's longer than the screen height, and keep the margin equal to the bottom margin of the modal
        if (offset < bottomMargin) offset = bottomMargin;
        $dialog.css('margin-top', offset);
    }

    $(document).on('show.bs.modal', '.image-modal', centerModal);
    $(window).on('resize', function() {
        $('.image-modal:visible').each(centerModal);
    });

    var $window = $(window);
    var $menuAnchor = $('#nav-main-menu .dropdown-toggle');

    function stickyNavBar() {
        var windowWidth = $window.width();

        if (windowWidth < 825 || windowWidth >= 1200) {
            if (!$('#navigation').hasClass('sticky')) {
                $('#navigation').addClass('sticky');
            }
        } else {
            if ($('#navigation').hasClass('sticky')) {
                var navHeight = $('main').length
                    ? $('main').offset().top - $('#sticky-nav').outerHeight()
                    : $('#app-user-services').offset().top -
                      $('#sticky-nav').outerHeight();
                if (window.pageYOffset <= navHeight) {
                    $('#navigation').removeClass('sticky');
                }
            } else {
                var navOffset =
                    $('#menu-main-menu').offset().top -
                    $('#navbar-collapse-1').offset().top;
                if (window.pageYOffset >= navOffset) {
                    $('#navigation').addClass('sticky');
                }
            }
        }
    }

    function sizeDependentMenuBehaviour() {
        var windowWidth = $(window).width();
        if (windowWidth < 825) {
            $menuAnchor.attr('data-toggle', 'dropdown');
        } else {
            $menuAnchor.attr('data-toggle', '');
        }
        if (windowWidth >= 825 && windowWidth < 1200) {
            $('#navigation').removeClass('sticky');
        }
        stickyNavBar();
    }
    sizeDependentMenuBehaviour();
    $window.resize(sizeDependentMenuBehaviour);
    $window.scroll(stickyNavBar);
    $('[data-toggle="popover"]').popover();

    $('#news-box-ie-isotope').isotope({
        itemSelector: '.card-container',
        layoutMode: 'masonry',
        percentPosition: true,
        masonry: {
            columnWidth: '.grid-sizer'
        }
    });

    $('#home-news-isotope').isotope({
        itemSelector: '.card-container',
        layoutMode: 'masonry',
        percentPosition: true,
        masonry: {
            columnWidth: '.grid-sizer'
        }
    });

    $(function() {
        $('[data-toggle="tooltip"]').tooltip();
    });

    $('button.btn-filter[data-toggle="tab"]').on('show.bs.tab', function(e) {
        $('button.btn-filter[data-toggle="tab"]').removeClass('active');
        if (e.target) $(e.target).addClass('active');
    });

    var twitterInsert = document.getElementById('react-twitter-insert');

    twttr.events.bind('rendered', function() {
        if (twitterInsert) {
            var tweetFrame = document.getElementById('twitter-widget-0');
            var timeline = tweetFrame
                ? tweetFrame.contentDocument ||
                  tweetFrame.contentWindow.document
                : null;
            if (timeline) {
                var tweetContent = timeline.getElementsByClassName(
                    'timeline-Tweet-text'
                );
                for (let i = 0; i < tweetContent.length; i++) {
                    tweetContent[i].style.fontSize = '15px';
                    tweetContent[i].style.lineHeight = '23px';
                }
                tweetFrame.style.maxHeight = '100%';
            }
        }
    });

    function tweetResize() {
        var tweetFrame = document.getElementById('twitter-widget-0');
        var timeline = tweetFrame
            ? tweetFrame.contentDocument || tweetFrame.contentWindow.document
            : null;
        if (timeline) {
            var tweetList = timeline.getElementsByClassName(
                'timeline-TweetList-tweet'
            );
            var tweetContent = timeline.getElementsByClassName(
                'timeline-Tweet-text'
            );
            for (let i = 0; i < tweetContent.length; i++) {
                tweetContent[i].style.fontSize = '15px';
                tweetContent[i].style.lineHeight = '23px';
            }
            tweetFrame.style.maxHeight = '100%';
        }
    }
    if (twitterInsert) {
        window.onresize = tweetResize;
    }

    // Search Remove Input
    var $inputsWithClearBtn = $('.input-with-clear');
    $.each($inputsWithClearBtn, function(index, el) {
        $('input[type="text"]', el).on('change paste keyup', function() {
            if ($(this).val()) {
                $('.input-clear').removeClass('hide');
            } else {
                $('.input-clear').addClass('hide');
            }
        });
        $('.input-clear', el).on('click', function(e) {
            $(this)
                .siblings('input[type="text"]')
                .focus()
                .val('');
            $(this).addClass('hide');
        });
    });

    var $invImgs = $('.investigator-portrait-img');
    $.each($invImgs, function(index, el) {
        var width = $(this).get(0).naturalWidth;
        var height = $(this).get(0).naturalHeight;
        if (width >= height) {
            var newWidth = (width * 180) / height;
            $(this).height(180);
            $(this).width(newWidth);
            $(this).css({ 'margin-left': (180 - newWidth) / 2 });
        } else {
            $(this).width(180);
            $(this).height((height * 180) / width);
        }
    });

    var $tabNav = $('#tabNavHref');
    if ($tabNav.length) {
        var hash = document.location.hash;
        if (hash) {
            $('#tabNavHref button[href="' + hash + '"]').tab('show');
        }

        $('#tabNavHref button').on('shown.bs.tab', function(e) {
            window.location.hash = $(this).attr('href');
            window.scrollTo(0, 0);
        });
    }

    $(window).scroll(function() {
        if ($(document).height() > $(window).height() * 2) {
            if ($(this).scrollTop() > Math.min(700, $(window).height())) {
                $('#scroll').fadeIn();
                $('#scroll').css('display', 'flex');
            } else {
                $('#scroll').fadeOut();
            }
        }
    });

    $('#scroll').click(function() {
        $('html, body').animate({ scrollTop: 0 }, 600);
        return false;
    });
});
