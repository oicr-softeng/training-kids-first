---
layout: default
---
<main>
    <div class="jumbotron home-banner">
        <div class="container">
            <div class="banner-content-wrapper row">
                <div class="banner-content">
                    <h1 class="title">{{page.banner_list[0].title_txt}}</h1>
                    <div class="mobile-indent">
                        <p>{{page.banner_list[0].subtitle_txt}}</p>
                        <a href= {{page.banner_list[0].link_txt}} class="btn btn-default arrow-right-white">{{page.banner_list[0].moreKidsFirstButton_txt}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-content gradient-border-top-default">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 col-xs-12 text-center">
                        <h2 class="section-title">{{page.comingSoon_list[0].comingSoonTitle_txt}}</h2>
                        {{page.comingSoon_list[0].comingSoonDescription_txt | markdownify}}
                    </div>
                </div>
                <div class="row flex-wrap-equal-height">
                    <div class="col-xs-12 text-center">
                        <h3>{{page.dataPortal_list[0].title_txt}}</h3>
                        {% include site/portal_summary.inc %}
                        <a href= {{page.dataPortal_list[0].link_txt}} class="data-release-button btn btn-default arrow-right-white">{{page.dataPortal_list[0].button_txt}}</a>
                    </div>
                </div>
            </div>
        </div>
        <!--
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 col-xs-12 text-center">
                        <h2 class="section-title">About the Data Resource Portal</h2>
                        <p>The Portal provides a central location where researchers from all over the world can access genomic data from childhood cancer and structural birth defects patients and their families. This empowers researchers to share their findings and collaborate in real time. <a hre="#">More about the Portal</a></p>
                    </div>
                </div>
                <div class="row flex-wrap-equal-height">
                    <div class="col-md-6 col-xs-12 text-center">
                        <h3>Data Portal at a glance</h3>
                        <div class="portal-stat-grid">
                            <div class="portal-stat-item col-xs-4">
                                <div class="stat-icon">
                                    <img src="/assets/site/images/icon-stats-diseases.svg">
                                </div>
                                <div class="stat-detail">
                                    <a class="stat-link" href="#">
                                        <span class="stat-link-highlight">22</span>
                                        <br/>
                                        <span>Diseases</span>
                                    </a>
                                </div>
                            </div>
                            <div class="portal-stat-item col-xs-4">
                                <div class="stat-icon">
                                    <img src="/assets/site/images/icon-stats-studies.svg">
                                </div>
                                <div class="stat-detail">
                                    <a class="stat-link" href="#">
                                        <span class="stat-link-highlight">50</span>
                                        <br/>
                                        <span>Studies</span>
                                    </a>
                                </div>
                            </div>
                            <div class="portal-stat-item col-xs-4">
                                <div class="stat-icon">
                                    <img src="/assets/site/images/icon-stats-participants.svg">
                                </div>
                                <div class="stat-detail">
                                    <a class="stat-link" href="#">
                                        <span class="stat-link-highlight">8,478</span>
                                        <br/>
                                        <span>Participants</span>
                                    </a>
                                </div>
                            </div>
                            <div class="portal-stat-item col-xs-4">
                                <div class="stat-icon">
                                    <img src="/assets/site/images/icon-stats-samples.svg">
                                </div>
                                <div class="stat-detail">
                                    <a class="stat-link" href="#">
                                        <span class="stat-link-highlight">12,345</span>
                                        <br/>
                                        <span>Samples</span>
                                    </a>
                                </div>
                            </div>
                            <div class="portal-stat-item col-xs-4">
                                <div class="stat-icon">
                                    <img src="/assets/site/images/icon-stats-files.svg">
                                </div>
                                <div class="stat-detail">
                                    <a class="stat-link" href="#">
                                        <span class="stat-link-highlight">50,114</span>
                                        <br/>
                                        <span>Files</span>
                                    </a>
                                </div>
                            </div>
                            <div class="portal-stat-item col-xs-4">
                                <div class="stat-icon">
                                    <img src="/assets/site/images/icon-stats-size.svg">
                                </div>
                                <div class="stat-detail">
                                    <a class="stat-link" href="#">
                                        <span class="stat-link-highlight">248.4TB</span>
                                        <br/>
                                        <span>Size</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12 info-update-wrapper study-update-wrapper">
                        <div class="info-box study-update-box">
                            <div class="info-box-header">
                                <h3 class="text-center"><span>Study Update: Birth Defects</span></h3>
                            </div>
                            <div class="info-box-content-container">
                                <div class="info-box-content study-update-content">
                                    <div class="release-date">
                                        <span>Release date: November 13, 2017</span>
                                    </div>
                                    <div class="study-update-content-item first-item">
                                        <h4>Study Title</h4>
                                        <p>Discovery of the Genetic Basis of Structural Heart and Other Birth Defects</p>
                                    </div>
                                    <div class="study-update-content-item">
                                        <h4>Investigator</h4>
                                        <p><a href="#">Christine Seidman</a>, President and Fellows of Harvard College</p>
                                    </div>
                                    <div class="study-update-content-item">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <h4>Sample Count</h4>
                                                <p>2,454</p>
                                            </div>
                                            <div class="col-xs-4">
                                                <h4>Sample Count</h4>
                                                <p>2,454</p>
                                            </div>
                                            <div class="col-xs-4">
                                                <h4>dbGaP Study ID</h4>
                                                <p><a href="#">phs001138.v1.p2n</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="study-update-content-item">
                                        <h4>Study Summary</h4>
                                        <p>Multi-center, prospective observational cohort study of individuals with congenital heart defects (CHD). Phenotypic data and source DNA derived from 300 probands and their parents, and family of interest collected to</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        -->
        <div class="section section-highlight">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <h2 class="section-title">{{page.partnersTitle_txt}}</h2>
                    </div>
                </div>
                <div id="icon-card-isotope" class="row card-grid">
                    {% for item in page.partners_list %}
                    <div class="col-sm-3 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                        <div class="card-box card-with-icon mobile-full-card">
                            <div class="card-icon-container partners-cards">
                                {% assign img = item.icon_txt %}
                                <a href="{{item.link_txt}}">{% include site/image.inc filePath=img className="card-icon partners-icon" %}</a>
                            </div>
                            <div class="card-box-content">
                                <a href="{{item.link_txt}}"><h3>{{item.title_txt}}</h3></a>
                                {{item.description_txt | markdownify}}
                            </div>
                        </div>
                    </div>
                    {% endfor %}
                </div>
            </div>
        </div>

        {% include site/callouts.inc filePath="login_registration_callouts" %}
        
        <div class="section">
            <div class="container dotted-border-top">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 col-xs-12 text-center">
                        <h2 class="section-title">{{page.newsAndEvents_list[0].title_txt}}</h2>
                    </div>
                </div>
                <div id="home-news-isotope" class="row card-grid">
                    {% assign tags = site._tags | where: 'slug', 'news_tags' | first %}

                    {% assign count = 0 %}
                    {% assign news_feat = site._news | where: "feature_b", true %}
                    {% if news_feat.size > 0 %}
                        {% assign newsList = news_feat | sort: "releaseDate_tdt" | reverse %}
                        {% for news in newsList %}
                            <div class="col-lg-4 col-sm-6 col-xs-12 grid-sizer card-container">
                                <div class="card-box news-card-box spotlight-news-card-box {% if news.category_txt == 'spotlight' %} spotlight-card {{ news.spotlightType_txt }}-spotlight-card {% endif %}">
                                    {% if news.category_txt == 'spotlight' %}
                                    <div class="card-box-header spotlight-header">
                                        <h3 class="spotlight-title text-capitalize">
                                            {{ news.spotlightType_txt }} {{ news.category_txt }}
                                        </h3>
                                    </div>
                                    {% endif %}
                                    <div class="card-box-header">
                                        <div class="news-thumbnail-container {% if news.category_txt == 'spotlight' %} spotlight-thumbnail {% if news.teaser_list[0].thumbnail_txt %}spotlight-thumbnail-container{% endif %} {{ news.spotlightType_txt }}-spotlight-thumbnail{% endif %}">
                                            <a class="news-image-link {% if news.category_txt == 'spotlight' %}news-image-link{% else %}news-image-thumbnail-link{% endif %}" href="{% if news.link_txt %}{{ news.link_txt }}{% else %}{{ news.url }}{% endif %}">
                                                {% if news.teaser_list[0].thumbnail_txt %}
                                                    {% assign img = news.teaser_list[0].thumbnail_txt %}
                                                    {% if news.category_txt == 'spotlight' %}
                                                        {% include site/image.inc filePath=img className="news-thumbnail" %}
                                                    {% else %}
                                                        {% include site/image.inc filePath=img className="news-thumbnail" %}
                                                    {% endif %}
                                                {% else %}
                                                    {% if news.category_txt == 'spotlight' %}
                                                        {% include site/image.inc filePath="__images/icon-spotlight-grey.md" className="news-thumbnail news-icon-thumbnail news-icon-home-thumbnail" %}
                                                    {% else %}
                                                        {% include site/image.inc filePath="__images/icon-kids-first.md" className="news-thumbnail news-thumbnail-default" %}
                                                    {% endif %}
                                                {% endif %}
                                            </a>
                                        </div>
                                    </div>
                                    <div class="card-box-content news-card-content">
                                        {% if news.category_txt != 'spotlight' %}
                                        <div class="icon-news-type-container">
                                            <span class="icon-news-type icon-{{ news.category_txt }}"></span>
                                            <div class="news-type-txt">
                                                <span>
                                                    {% for category in tags.category_list %}
                                                        {% if category.key_txt == news.category_txt %}
                                                            {{ category.value_txt }}
                                                            {% break %}
                                                        {% endif %}
                                                    {% endfor %}
                                                </span>
                                            </div>
                                        </div>
                                        {% endif %}
                                        <div class="news-card-details">
                                            <span class="news-details-date">{{ news.releaseDate_tdt | date: '%B %d, %Y' }}</span>
                                            <h3 class="news-details-title"><a href="{{news.url}}">{{ news.title }}</a></h3>
                                            {% if news.teaser_list[0].affiliation_txt %}
                                                <p class="investigator-affiliation">{{ news.teaser_list[0].affiliation_txt }}</p>
                                            {% endif %}
                                            <p class="news-details-desc">{% if news.teaser_list[0].homeHeadline_txt %}{{ news.teaser_list[0].homeHeadline_txt }}{% elsif news.teaser_list[0].headline_txt %}{{ news.teaser_list[0].headline_txt }}{% endif %}</p>
                                            <a class="news-read-more" title="{{news.title}}" href="{% if news.link_txt %}{{ news.link_txt }}{% else %}{{ news.url }}{% endif %}">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {% assign count = count | plus: 1 %}
                            {% if count >= 3 %}
                                {% break %}
                            {% endif %}
                        {% endfor %}
                    {% endif %}

                    {% if count < 3 %}
                        {% assign newsList = site._news | where_exp: "item", "item.feature_b != true"  | sort: "releaseDate_tdt" | reverse %}
                        {% if newsList.size > 0 %}
                            {% for news in newsList %}
                                <div class="col-lg-4 col-sm-6 col-xs-12 grid-sizer card-container">
                                    <div class="card-box news-card-box spotlight-news-card-box">
                                        {% if news.category_txt == 'spotlight' %}
                                        <div class="card-box-header spotlight-header">
                                            <h3 class="spotlight-title text-capitalize">
                                                {{ news.spotlightType_txt }} {{ news.category_txt }}
                                            </h3>
                                        </div>
                                        {% endif %}
                                        <div class="card-box-header">
                                            <div class="news-thumbnail-container {% if news.category_txt == 'spotlight' %}{% if news.teaser_list[0].thumbnail_txt %}spotlight-thumbnail-container{% endif %} {{ news.spotlightType_txt }}-spotlight-thumbnail{% endif %}">
                                                <a class="news-image-link {% if news.category_txt == 'spotlight' %}news-image-regular-link{% else %}news-image-thumbnail-link{% endif %}" href="{% if news.link_txt %}{{ news.link_txt }}{% else %}{{ news.url }}{% endif %}">
                                                    {% if news.teaser_list[0].thumbnail_txt %}
                                                        {% assign img = news.teaser_list[0].thumbnail_txt %}
                                                        {% if news.category_txt == 'spotlight' %}
                                                            {% include site/image.inc filePath=img className="news-thumbnail" %}
                                                        {% else %}
                                                            {% include site/image.inc filePath=img className="news-thumbnail" %}
                                                        {% endif %}
                                                    {% else %}
                                                        {% if news.category_txt == 'spotlight' %}
                                                            {% include site/image.inc filePath="__images/icon-spotlight-grey.md" className="news-thumbnail news-icon-thumbnail news-icon-home-thumbnail" %}
                                                        {% else %}
                                                            {% include site/image.inc filePath="__images/icon-kids-first.md" className="news-thumbnail news-thumbnail-default" %}
                                                        {% endif %}
                                                    {% endif %}
                                                </a>
                                            </div>
                                        </div>
                                        <div class="card-box-content news-card-content">
                                            <div class="icon-news-type-container">
                                                <span class="icon-news-type icon-{{ news.category_txt }}"></span>
                                                <div class="news-type-txt {% if news.category_txt == 'spotlight' %}news-type-spotlight{% endif %}">
                                                    <span>
                                                        {% if news.category_txt == 'spotlight' %}
                                                            {{ news.spotlightType_txt }} {{ news.category_txt }}
                                                        {% else %}
                                                            {% for category in tags.category_list %}
                                                                {% if category.key_txt == news.category_txt %}
                                                                    {{ category.value_txt }}
                                                                    {% break %}
                                                                {% endif %}
                                                            {% endfor %}
                                                        {% endif %}
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="news-card-details">
                                                <span class="news-details-date">{{ news.releaseDate_tdt | date: '%B %d, %Y' }}</span>
                                                <h3 class="news-details-title"><a href="{{news.url}}">{{ news.title }}</a></h3>
                                                {% if news.teaser_list[0].affiliation_txt %}
                                                    <p class="investigator-affiliation">{{ news.teaser_list[0].affiliation_txt }}</p>
                                                {% endif %}
                                                <p class="news-details-desc">{% if news.teaser_list[0].homeHeadline_txt %}{{ news.teaser_list[0].homeHeadline_txt }}{% elsif news.teaser_list[0].headline_txt %}{{ news.teaser_list[0].headline_txt }}{% endif %}</p>
                                                <a class="news-read-more" title="{{news.spotlightType_txt}}-link" href="{% if news.link_txt %}{{ news.link_txt }}{% else %}{{ news.url }}{% endif %}">Read More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {% assign count = count | plus: 1 %}
                                {% if count >= 3 %}
                                    {% break %}
                                {% endif %}
                            {% endfor %}
                        {% endif %}

                    {% endif %}

                </div>
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <a href= {{page.newsAndEvents_list[0].link_txt}} class="btn btn-default arrow-right-white">{{page.newsAndEvents_list[0].button_txt}}</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="section">
        <div class="container dotted-border-top">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1 col-xs-12 text-center">
                    <h2 class="section-title">{{page.funding_list[0].title_txt}}</h2>
                    {{page.funding_list[0].description_txt | markdownify}}
                </div>
            </div>
            <div class="row home-fundings">
                {% assign members = site._partners | where: "type_txt", "drc" | sort: 'order_ti' %}
                {% for item in members %}
                    <div class="col-lg-2 col-sm-4 col-xs-6 home-funding-item {{item.logoRef_txt | remove: "__images/" | remove: ".md" }}">
                        <div class="funding-logo-wrapper">
                            <a href="{{ item.link_txt }}" class="funding-logo-link">
                                {% include site/image.inc filePath=item.logoRef_txt className="funding-logo" %}
                            </a>
                        </div>
                    </div>
                {% endfor %}
            </div>
        </div>
    </div> 
        <!--
        <div class="section container-top-overlap">
            <div class="container">
                <div id="linkcard-isotope" class="row">
                    <div class="col-sm-4 col-xs-12 card-box no-border-top link-card">
                    </div>
                </div>
            </div>
        </div>
        -->
    </div>
</main>