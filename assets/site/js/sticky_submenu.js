/**
 * Sticky Sub Menu
 */
!(function($) {
    var scrollspy_offset = $('#navigation').height() + 20;

    var activeParentClass = function(el) {
        if ($(el).hasClass('menu-h4')) {
            if (
                $(el)
                    .prev()
                    .hasClass('menu-h3')
            ) {
                $(el)
                    .prev()
                    .addClass('active');
            } else {
                var prevs = $(el).prevUntil('.menu-h3');
                if (prevs.length) {
                    prevs
                        .last()
                        .prev()
                        .addClass('active');
                }
            }
        }
    };

    ///////// Submenu generator plugin
    $.fn.subMenu = function(options) {
        var o = $.extend(
            {
                content_class_path: ['.node-book .content'],
                scrollspy_offset: '0',
                affix_content_path: '',
                affix_header_offset: null,
                affix_footer_offset: '0',
                active_menu_path:
                    '.book-block-menu .menu .menu li.active-trail',
                class_body_ul: 'nav',
                class_body_li: 'nav-item',
                default_anchor_class_surfix: 'sticky-book-menu-anchor-',
                extract_header: { h3: '', h4: '' }
            },
            options
        );
        return $(this).each(function(i, el) {
            if ($(el).length > 0) {
                //Generate Submenus based on anchors in a book content.
                var content_path = o.content_class_path.map(function(path) {
                    return (
                        path +
                        ' ' +
                        Object.keys(o.extract_header).join(' ,' + path + ' ')
                    );
                });
                var $ttl_list = $(content_path.join(','));
                var active_menu_path = $(o.active_menu_path);

                if ($ttl_list.length > 0) {
                    active_menu_path.append(
                        '<ul class="nav ' + o.class_body_ul + '"/>'
                    );
                    $ttl_list.each(function(i) {
                        var id = this.id || o.default_anchor_class_surfix + i;
                        if (!this.id) {
                            $(this).attr('id', id);
                        } // Generate id if a title don't have one.

                        var ttl = this.title || $(this).text(); // Display title or text
                        $('.' + o.class_body_ul, active_menu_path).append(
                            '<li id="' +
                                id +
                                '-link" class="' +
                                o.class_body_li +
                                ' menu-' +
                                this.tagName.toLowerCase() +
                                '"><a href="#' +
                                id +
                                '">' +
                                ttl +
                                '</a></li>'
                        );
                    });
                }

                //Click overrides active class on a menu
                $('.' + o.class_body_li + ' a', el).click(function(e) {
                    e.preventDefault();
                    var target = $(this).parent();
                    $(target)
                        .siblings()
                        .removeClass('active');
                    $(target).addClass('active');
                    activeParentClass(target);
                    if (window.history.pushState)
                        window.history.pushState({}, 'jump', e.target.href);

                    $('html,body').animate(
                        {
                            scrollTop:
                                $($(this).attr('href')).offset().top -
                                scrollspy_offset +
                                1
                        },
                        'normal',
                        function() {
                            $(target)
                                .siblings()
                                .removeClass('active');
                            $(target).addClass('active');
                            activeParentClass(target);
                        }
                    );
                });
            }
        });
    }; ///////// Submenu generator plugin

    var getAffixOffsetTop = function() {
        if ($('.support-guides-menu').length) {
            return (
                $('.support-guides-menu').offset().top -
                $('#navigation').height() -
                30
            );
        }
    };
    var $affixTarget = $('.support-guides-menu .card-grid');

    $(document).ready(function() {
        // Generate Submenu
        $('#support-accordion').subMenu({
            content_class_path: ['.support-guides .support-guides-body >'],
            active_menu_path: '.accordion-tab-active .accordion-body',
            class_body_ul: 'accordion-outer-list'
        });

        /**
         * Scrollspy
         */

        // Init
        $('body').scrollspy({
            target: '#support-accordion',
            offset: scrollspy_offset
        });

        // Make parent active.
        $('body').on('activate.bs.scrollspy', function(e) {
            activeParentClass(e.target);
        });

        // Affix
        $affixTarget.affix({
            offset: {
                top: getAffixOffsetTop(),
                bottom: $('.site-footer').height()
            }
        });
        $affixTarget.css({ top: $('#navigation').height() + 30 }); // default;
        $affixTarget.on('affixed.bs.affix', function() {
            $affixTarget.css({ top: $('#navigation').height() + 30 });
        });
        var resetValues = function() {
            if (window.matchMedia('(max-width: 1200px)').matches) {
                $affixTarget.addClass('disable');
            } else {
                $affixTarget.removeClass('disable');
                $affixTarget.css({
                    width: $('.support-guides-menu').outerWidth()
                });
                $('#support-accordion').css({
                    maxHeight:
                        $(window).height() -
                        $('#navigation').height() -
                        $('#support-keyword-search').height() -
                        140,
                    overflowY: 'scroll'
                });
            }

            // If contents is heigher than nav.
            if ($affixTarget.height() > $('.support-guides-body').height()) {
                $affixTarget.addClass('disable');
            }
        };
        $(window).resize(resetValues);
        resetValues();
    });

    window.stickySubmenuScroll = function(href) {
        $('html,body').animate(
            {
                scrollTop: $(href).offset().top - scrollspy_offset + 1
            },
            'normal'
        );
    };

    // Reset offset once the component is rendered.
    window.addEventListener('edit_btn_rendered', function(e) {
        setTimeout(function() {
            if (
                $affixTarget &&
                $affixTarget.data('bs.affix') &&
                $affixTarget.data('bs.affix').options
            ) {
                $affixTarget.data(
                    'bs.affix'
                ).options.offset.top = getAffixOffsetTop();
            }
        }, 1000);
    });
})(jQuery);
