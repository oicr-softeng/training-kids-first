--- 
layout: inner_preview 
---
<div class="foundation-partners">
    <div class="section">
        <div class="container">
            <div class="row foundation-body foundation-spotlight">
                <img class="partners-foundation-spotlight-icon" src="{{page.foundationSpotlight_list[0].img_txt}}" alt="{{page.title}}-icon">
                <h2>{{page.title_txt}}</h2>

                <!-- Baseball Card News Teaser -->
                {% assign count=0 %}
                {% assign articles =site._news | where:'category_txt',"spotlight" | where: 'spotlightType_txt', "foundation" %}
                {% assign tags = site._tags | where: 'slug', 'news_tags' | first %}
                {% if articles.size>0 %}
                    {% assign newsList = articles | sort: "releaseDate_tdt" | reverse %}
                    {% for news in newsList %}
                        {% if count == 0 %}
                        <div id="partnersFoundationSpotlight" class="col-lg-8 col-lg-offset-2 col-md-12 grid-sizer card-container two-column-card-container">
                            <div class="card-box news-card-box spotlight-card foundation-spotlight-card" data-category="spotlight">
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
                                                {% include site/image.inc filePath=img className="spotlight-picture" %}
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
                
                <div class="col-md-8 col-md-offset-2 col-xs-12">
                    <p>{{page.subtitle_txt}}</p>
                </div>
            </div>
            <div id="foundation-isotopes" class="row card-grid dotted-border-top">
                {% for item in page.content_list %}
                <div class="col-lg-3 col-md-6 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                    <div class="card-box foundation-card-box mobile-full-card">
                        <div class="card-box-header">
                            <div class="foundation-logo-container">
                                {% if item.link_txt != "" %}
                                <a href="{{item.link_txt}}" class="foundation-logo-link" target="blank" rel="nofollow noopener nofererer">
                                    <span class="sr-only">{{ item.title_txt }}</span>
                                    {% assign img = item.img_txt %}
                                    {% include site/image.inc filePath=img className="foundation-logo" %}
                                </a>
                                {% else %}
                                <div class="foundation-logo-no-link">
                                <span class="sr-only">{{ item.title_txt }}</span>
                                    {% assign img = item.img_txt %}
                                    {% include site/image.inc filePath=img className="foundation-logo" %}
                                </div>
                                {% endif %}
                            </div>
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>
