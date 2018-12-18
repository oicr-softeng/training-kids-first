---
layout: inner_preview
---

<div class="about-page">
    <div class="section overview-section">
        <div class="container">
            <div class="row flex-wrap-equal-height overview-row">
                <div class="col-lg-6 col-xs-12 overview-left">
                    <h2 class="section-title no-margin-top">{{page.leftContentTitle_txt}}</h2>
                    {{ page.leftContent_txt | markdownify }}
                    <ul id="about-list">
                        {% for item in page.leftBulletPoint_list %}
                        <li class="about-{{item.tag_txt}}">
                            {{item.item_txt | markdownify}}
                        </li>
                        {% endfor %}
                    </ul>
                </div>
                <div class="col-lg-6 col-xs-12 overview-right">
                    <h2 class="section-title no-margin-top">{{page.rightContentTitle_txt}}</h2>
                    {{ page.rightContent_txt | markdownify }}
                </div>
            </div>
        </div>
    </div>
    <div class="section section-highlight">
        <div class="container drc-glance-container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h2 class="section-title">{{page.drcGlanceTitle_txt}}</h2>
                </div>
            </div>
            <div id="drc-glance" class="row">
                <div class="drc-glance-img">
                    {% assign img = page.drcGlanceImg_txt %}
                    {% include site/image.inc filePath=img %}
                </div>
                <div class="drc-glance-list drc-glance-list-1">
                    {% for item in page.drcLeftContent_list %}
                    <div class="drc-glance-item drc-glance-item-{{item.paragraphNumber_txt}}">
                        <div class="drc-glance-item-number"><span>{{item.paragraphNumber_txt}}</span></div>
                        <div class="drc-glance-item-detail">
                            <h3 class="drc-glance-title">{{item.paragraphTitle_txt}}</h3>
                            <p>{{item.paragraph_txt}}</p>
                        </div>
                    </div>
                    {% endfor %}
                </div>
                <div class="drc-glance-list drc-glance-list-2">
                    {% for item in page.drcRightContent_list %}
                    <div class="drc-glance-item drc-glance-item-{{item.paragraphNumber_txt}}">
                        <div class="drc-glance-item-number"><span>{{item.paragraphNumber_txt}}</span></div>
                        <div class="drc-glance-item-detail">
                            <h3 class="drc-glance-title">{{item.paragraphTitle_txt}}</h3>
                            <p>{{item.paragraph_txt}}</p>
                        </div>
                    </div>
                    {% endfor %}
                </div>
            </div>
        </div>
    </div>
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-xs-12 text-center about-core-contents">
                    <h2 class="section-title">{{page.drcCoresTitle_txt}}</h2>
                    <p>{{page.drcCoresSubtitle_txt}}</p>
                </div>
            </div>
            <div id="about-core-isotope" class="row card-grid">
                {% for item in page.core_list %}
                <div class="col-lg-4 col-xs-12 card-container mobile-full-card-container">
                    <div class="card-box explanation-card-box mobile-full-card">
                        <div class="card-box-content">
                            <h3>{{item.coreTitle_txt}}</h3>
                            {{item.core_txt | markdownify}}
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div>
        </div>
    </div>

    {% assign partners = site._partners | where: "type_txt", "drc" | sort: 'order_ti' %}
    <div class="partners-page" id="drcMembers">
        <div class="section drc-members-section section-highlight">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-xs-12 text-center drc-members-contents">
                        <h2 class="sr-only">{{page.drcMembers_list[0].title_txt}}-h2</h2>
                        <h3>{{page.drcMembers_list[0].title_txt}}</h3>
                        <p>{{page.drcMembers_list[0].paragraph_txt}}</p>
                    </div>
                </div>
                <div id="partners-isotope" class="row card-grid">
                    {% assign counter = 0 %}
                    {% for partner in partners %}
                        <div class="col-lg-4 col-sm-6 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                            <div class="card-box partners-card-box mobile-full-card">
                                <div class="card-box-header">
                                    <div class="partners-logo-container">
                                        <a href="{{ partner.link_txt }}" class="partners-logo-link">
                                                <span class="sr-only">{{partner.name_txt}}</span>
                                            {% include site/image.inc filePath=partner.logoRef_txt className="partners-logo" %}
                                        </a>
                                    </div>
                                </div>
                                <div class="card-box-content">
                                    <a href="{{ partner.link_txt }}" class="partners-name">{{ partner.name_txt }}</a>
                                    <p class="partners-description">
                                        {{ partner.description_txt }}
                                    </p>
                                    <button type="button" data-target="#partnersModal" data-toggle="modal" data-slide-to="{{ counter }}" class="btn btn-primary arrow-right-white partners-read-more">Read more</button>
                                </div>
                            </div>
                        </div>
                        {% assign counter = counter | plus: 1 %}
                    {% endfor %}
                </div>
            </div>
        </div>
        <div class="modal fade carousel slide" id="partnersModal">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="carousel-inner">
                            {% assign counter = 0 %}
                            {% for partner in partners %}
                                <div class="item {% if counter == 0 %}active{% endif %}">
                                    <div class="item-inner">
                                        <div class="col-xs-12">
                                            <h3>{{ partner.title }}</h3>
                                        </div>
                                        <div class="col-xs-12 partner-modal-body-content">
                                            <div class="modal-partners-logo pull-right">
                                                {% include site/image.inc filePath=partner.logoRef_txt className="partners-logo" %}
                                            </div>
                                            {% assign c = partner.content %}
                                            {% include site/token_replace_partner.inc content=c %}
                                        </div>
                                    </div>
                                </div>
                                {% assign counter = counter | plus: 1 %}
                            {% endfor %}
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="page-navigation-controls flex-center-container">
                            <button type="button" class="btn btn-plain left arrow-left-grey" href="#partnersModal" data-slide="prev">Previous</button>
                            <button type="button" class="btn btn-plain back-to-list" data-dismiss="modal" aria-label="Close" />
                            <button type="button" class="btn btn-plain right arrow-right-grey" href="#partnersModal" data-slide="next">Next</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="row card-grid">
                {% for item in page.aboutSectionBoxes_list %}
                <div class="col-lg-6 col-xs-12 card-container">
                    <div class="gradient-border-top-default"></div>
                    <div class="card-box gradient-top-card {{item.tag_txt}}-card">
                        <div class="card-box-content">
                            <h3>{{item.title_txt}}</h3>
                            <p>{{item.content_txt}}</p>
                            <a href= {{item.link_txt}} title="{{item.title_txt}}-link" class="btn btn-primary arrow-right-white">{{item.button_txt}}</a>
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>
