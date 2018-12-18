--- 
layout: inner_preview 
---
{% assign partners = site._partners | where: "type_txt", "x01-investigator" | sort: 'order_ti'%}

<div class="partners-investigators-page">
    <div class="container">
        <div class="row investigator-spotlight">
            
                <h2 class="sr-only">{{page.title}}-header-one</h2>
                <img class="partners-investigator-spotlight-icon" src="{{ page.investigatorSpotlight_list[0].img_txt }}" alt="{{page.title}}-icon">
                <h3>{{page.pageDescription_list[0].title_txt}}</h3>
                <h4 class="sr-only">{{page.title}}-header-four</h4>
                <h5 class="sr-only">{{page.title}}-header-five</h5>

                <!-- Baseball Card News Teaser -->
                {% assign count=0 %}
                {% assign articles =site._news | where:'category_txt',"spotlight" | where: 'spotlightType_txt', "investigator" %}
                {% assign tags = site._tags | where: 'slug', 'news_tags' | first %}
                {% if articles.size>0 %}
                    {% assign newsList = articles | sort: "releaseDate_tdt" | reverse %}
                    {% for news in newsList %}
                        {% if count == 0 %}
                        <div id="partnersInvestigatorsSpotlight" class="col-lg-8 col-lg-offset-2 col-md-12 grid-sizer card-container two-column-card-container">
                            <div class="card-box news-card-box spotlight-card investigator-spotlight-card" data-category="spotlight">
                                <div class="card-box-header spotlight-header">
                                    <h3 class="spotlight-title text-capitalize">
                                            {{ news.spotlightType_txt }} {{ news.category_txt }}
                                    </h3>
                                </div>
                                <div class="card-box-content news-card-content">
                                    <div class="news-card-details">
                                        <div class="spotlight-picture-container partners-page-spotlight-picture-container">
                                            <div class="spotlight-picture-wrapper">
                                                <a href="{{news.permalink}}" class="news-image-link spotlight-image-link">
                                                {% if news.teaser_list[0].thumbnail_txt %}
                                                {% assign img = news.teaser_list[0].thumbnail_txt %}
                                                {% include site/image.inc filePath=img className="spotlight-picture"  %}
                                                {% else %}
                                                {% include site/image.inc filePath="__images/icon-kids-first.md" className="news-thumbnail news-thumbnail-default" %}
                                                {% endif %}
                                                </a>
                                            </div>
                                        </div>
                                        <div class="spotlight-detail-container">
                                            <span class="news-details-date">
                                                {{ news.releaseDate_tdt | date: '%B %d, %Y' }}
                                            </span>
                                            <h3 class="spotlight-title">{{news.title}}</h3>
                                            {% if news.teaser_list[0].affiliation_txt %}
                                                <p class="investigator-affiliation">{{ news.teaser_list[0].affiliation_txt }}</p>
                                            {% endif %}
                                            {% if news.teaser_list[0].focus_txt %}
                                                <p class="investigator-research">{{ news.teaser_list[0].focus_txt }}</p>
                                            {% endif %}
                                            <p>{% if news.teaser_list[0].homeHeadline_txt %}{{ news.teaser_list[0].homeHeadline_txt }}{% elsif news.teaser_list[0].headline_txt %}{{ news.teaser_list[0].headline_txt }}{% endif %}</p>
                                            <a class="news-read-more" title="feature-title" href="{% if news.link_txt %}{{ news.link_txt }}{% else %}{{ news.url }}{% endif %}">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {% assign count = count | plus:1 %}      
                        {% endif %}
                    {% endfor %}
                {%endif%}   
                <!-- <p>{{page.pageDescription_list[0].subtitle_txt}}</p> -->
           
        </div>
        <!-- <div class="row investigators-learn-more">
            <div class="col-lg-5 col-lg-offset-1 col-lg-offset-1 col-xs-12 banner-container">
                <div class="investigators-learn-more-blue">
                    <a class="investigators-learn-more-links" href="{{page.leftBox_list[0].link_txt}}">{{page.leftBox_list[0].content_txt}}</a>        
                    <img class="investigators-banner" src="/assets/site/images/investigators-banner-blue.svg">
                </div>    
            </div>
            <div class="col-lg-5 col-xs-12 banner-container">
                <div class="investigators-learn-more-teal">
                    <a class="investigators-learn-more-links" href="{{page.rightBox_list[0].link_txt}}">{{page.rightBox_list[0].content_txt}}</a>        
                    <img class="investigators-banner" src="/assets/site/images/investigators-banner-teal.svg">
                </div>
            </div>
        </div> -->
        {% assign counter = 0 %}
        {% assign numberOfPartners = partners | size %}
        {% assign numberOfPartners = numberOfPartners | minus: 1 %}
        <div class="investigators-profiles">
            {% for partner in partners %}
            {% assign remainder = counter | modulo: 2%}
            {% if remainder == 0 %} 
                {% if counter == numberOfPartners %}
                <div class="row profile-row">
                    <div class="col-lg-6 col-md-6 col-xs-12 investigators-profile">
                        <div class="investigator-portrait">
                            <div class="investigator-portrait-img-container">
                                {% if partner.logoRef_txt and partner.logoRef_txt != '' %}
                                {% include site/image.inc filePath=partner.logoRef_txt className="investigator-portrait-img" %}
                                {% else %}
                                {% include site/image.inc filePath="__images/icon-default-investigator.md" className="investigator-portrait-img" %}
                                {% endif %}
                            </div>
                        </div>
                        <div class="investigator-info">
                            <h6>{{partner.name_txt}}</h6>
                            <p>
                                <strong>{{partner.almaMater_txt}}</strong>
                            </p>
                            <p>
                                {% if partner.researchFocus_txt != '' and partner.researchFocus_txt%}
                                <span class="research-focus">Research Focus:</span> {{partner.researchFocus_txt}}</p>
                                {%endif%}
                                <button type="button" data-target="#partnersModal" data-toggle="modal" data-keyboard="true" data-slide-to="{{ counter }}" class="btn btn-primary arrow-right-white partners-read-more">View profile</button>
                        </div>
                    </div>
                </div>
                {% assign counter = counter | plus:1 %}
                {% else %}
                <div class="row profile-row">
                    <div class="col-lg-6 col-md-6 col-xs-12 investigators-profile">
                        <div class="investigator-portrait">
                            <div class="investigator-portrait-img-container">
                                {% if partner.logoRef_txt and partner.logoRef_txt != '' %}
                                {% include site/image.inc filePath=partner.logoRef_txt className="investigator-portrait-img" %}
                                {% else %}
                                {% include site/image.inc filePath="__images/icon-default-investigator.md" className="investigator-portrait-img" %}
                                {% endif %}
                            </div>
                        </div>
                        <div class="investigator-info">
                            <h6>{{partner.name_txt}}</h6>
                            <p>
                                <strong>{{partner.almaMater_txt}}</strong>
                            </p>
                            <p>
                                {% if partner.researchFocus_txt != '' and partner.researchFocus_txt%}
                                <span class="research-focus">Research Focus:</span> {{partner.researchFocus_txt}}</p>
                                {%endif%}
                                <button type="button" data-target="#partnersModal" data-toggle="modal" data-keyboard="true" data-slide-to="{{ counter }}" class="btn btn-primary arrow-right-white partners-read-more">View profile</button>
                        </div>
                    </div>
                {% assign counter = counter | plus:1 %}
                {% endif %}
            {% elsif remainder == 1 %} 

                <div class="col-lg-6 col-md-6 col-xs-12 investigators-profile">
                    <div class="investigator-portrait">
                        <div class="investigator-portrait-img-container">
                            {% if partner.logoRef_txt and partner.logoRef_txt != '' %}
                            {% include site/image.inc filePath=partner.logoRef_txt className="investigator-portrait-img" %}
                            {% else %}
                            {% include site/image.inc filePath="__images/icon-default-investigator.md" className="investigator-portrait-img" %}
                            {% endif %}
                        </div>
                    </div>
                    <div class="investigator-info">
                        <h6>{{partner.name_txt}}</h6>
                        <p>
                            <strong>{{partner.almaMater_txt}}</strong>
                        </p>
                        <p>
                            {% if partner.researchFocus_txt != '' and partner.researchFocus_txt %}
                            <span class="research-focus">Research Focus:</span> {{partner.researchFocus_txt}}</p>
                            {% endif %}
                            <button type="button" data-target="#partnersModal" data-toggle="modal" data-keyboard="true" data-slide-to="{{ counter }}" class="btn btn-primary arrow-right-white partners-read-more">View profile</button>
                    </div>
                </div>
            </div>
            {% assign counter = counter | plus:1 %}
        {% endif %}
        {% endfor %}
        </div>
 
        <div class="modal fade carousel slide" data-interval="false" id="partnersModal" tabindex="-1">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <img src="/assets/site/images/icon-cancel.svg" class="icon-cancel">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="carousel-inner">
                            {% assign count = 0 %}
                            {% for partner in partners %}
                            <div class="item {% if count == 0 %}active{% endif %}">
                                <div class="item-inner">
                                    <div class="col-xs-12">
                                        <div class="investigators-modal-portrait-wrapper pull-right">
                                        {% if partner.logoRef_txt and partner.logoRef_txt != '' %}
                                        {% include site/image.inc filePath=partner.logoRef_txt className="investigator-logo" %}
                                        {% else %}
                                        {% include site/image.inc filePath="__images/icon-default-investigator.md" className="investigator-logo" %}
                                        {% endif %}
                                        </div>
                                        <div class="investigators-modal-header">{{partner.name_txt}}</div>
                                        <div class="alma-mater">{{partner.almaMater_txt}}</div>
                                        {% if partner.researchFocus_txt != '' and partner.researchFocus_txt %}
                                        <div class="investigator-focus"><span class="research-focus">Research Focus:</span> {{partner.researchFocus_txt}}</div>
                                        {% endif %}
                                        {% if partner.quote_txt != '' and partner.quote_txt %} 
                                        <div class="quote-box">
                                            <em>{{partner.quote_txt}}</em>
                                        </div>
                                        {% endif %}
                                        {{partner.content | markdownify}}
                                    </div>
                                </div>
                            </div>
                            {% assign count = count | plus: 1 %}
                            {% endfor %}
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="page-navigation-controls flex-center-container">
                            <button type="button" class="btn btn-plain left arrow-left-grey" href="#partnersModal" data-keyboard="true" data-slide="prev">Previous</button>
                            <button type="button" class="btn btn-plain back-to-list" data-dismiss="modal" aria-label="Close"></button>
                            <button type="button" class="btn btn-plain right arrow-right-grey" href="#partnersModal" data-keyboard="true" data-slide="next">Next</button>         
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
