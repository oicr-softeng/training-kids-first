---
layout: inner_preview
---
{% assign tags = site._tags | where: 'slug', 'news_tags' | first %}
{% assign newsList = site._pages | where: 'slug', 'news' | first %}

<div id="news-filter" class="section">
    <div class="container">
        <div class="row filter-wrapper">
            {% for item in newsList.newsFilter_list %}
            <div class="col-lg-3 col-sm-6 filter-item">
                <a class="btn-filter" href="{{ item.link_txt }}">
                    <span class="icon icon-{{item.tag_txt}}"></span>
                    <span>{{item.title_txt}}</span>
                </a>
            </div>
            {% endfor %}
        </div>
    </div>
</div>

<div class="news-page">
    {% include site/news_static_filter.inc %}
    <div class="section impact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-lg-push-3 col-xs-12 news-content-wrapper">
                    <div class="row">
                        <div class="col-xs-12 news-header">
                            {% if page.category_txt == 'spotlight' %}
                            <div class="spotlight-header {{ page.spotlightType_txt }}-spotlight-header">
                                <h1 class="sr-only">{{page.title}}-title-h1</h1>
                                <h2 class="news-title">
                                    {% for types in tags.spotlightType_list %}
                                        {% if types.key_txt == page.spotlightType_txt %}
                                            {{ types.value_txt }}
                                            {% break %}
                                        {% endif %}
                                    {% endfor %}
                                    {{ page.title }}
                                </h2>
                            </div>
                            {% else %}
                                <h1 class="sr-only">{{page.title}}-title-h1</h1>
                                <h2 class="news-title">{{ page.title }}</h2>
                            {% endif %}
                        </div>
                        <div class="col-xs-12">
                            <div class="dotted-border-top dotted-border-bottom news-info-wrapper">
                                <div class="col-sm-6 col-xs-12 news-info">
                                    <div class="news-type">
                                        <span class="icon icon-{{ page.category_txt }}"></span>
                                        <span>
                                            {% for category in tags.category_list %}
                                                {% if category.key_txt == page.category_txt %}
                                                    {{ category.value_txt }}
                                                    {% break %}
                                                {% endif %}
                                            {% endfor %}
                                        </span>
                                    </div>
                                    <span class="news-date">{{page.releaseDate_tdt | date: "%B %e, %Y"}}</span>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div id="react-share-insert">
                                        <div data-reactroot="" class="menu-social-menu">
                                            <span class="share-text">Share:</span>
                                            <ul class="menu">
                                                <li class="leaf first">
                                                    <a href="https://www.facebook.com/sharer/sharer.php?u={{ page.url | absolute_url | uri_escape }}&quote=KidsFirst%20{{ page.title | uri_escape }}" class="link-social link-facebook" title="facebook-two">
                                                        On Facebook
                                                    </a>
                                                </li>
                                                <li class="leaf">
                                                    <a href="http://twitter.com/share?text=KidsFirst%20-%20{{ page.title | uri_escape }}&url={{ page.url | absolute_url | uri_escape }}" class="link-social link-twitter" title="twitter-two">
                                                        On Twitter
                                                    </a>
                                                </li>
                                                <li class="leaf">
                                                    <a href="https://www.linkedin.com/shareArticle?mini=true&url={{ page.url | absolute_url | uri_escape }}&title={{ page.title | uri_escape }}&summary={{ page.title | uri_escape }}%20-%20{{ page.url | absolute_url | uri_escape }}%20-%20KidsFirst&source=" class="link-social link-linkedin">
                                                        On Linkedin
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row news-content flex-wrap-equal-height">
                        <div class="col-xs-12">
                            {% include site/token_replace_news.inc content=content %}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            {% assign d = site._news | sort: 'releaseDate_tdt' | reverse %}
                            {% assign index = 0 %}
                            {% for article in d %}
                                {% if article.path == page.path %}
                                {% break %}
                                {% endif %}
                                {% assign index = index | plus: 1 %}
                            {% endfor %}
                            <div class="page-navigation-controls flex-no-wrap">
                                {% if index > 0 %}
                                    {% assign prevIndex = index | minus: 1 %}
                                    {% if d[prevIndex].category_txt == 'facebook' or d[prevIndex].category_txt == 'twitter' %}
                                        {% if prevIndex > 0 %}
                                            {% assign prevIndex = prevIndex | minus: 1 %}
                                            <a class="btn btn-plain left arrow-left-grey" href="{{ d[prevIndex].url }}">Previous</a>
                                        {% endif %}
                                    {% else %}
                                        <a class="btn btn-plain left arrow-left-grey" href="{{ d[prevIndex].url }}">Previous</a>
                                    {% endif %}
                                {% endif %}
                                <a href="/news/" class="btn btn-plain back-to-list"></a>
                                {% assign lastInd = d.size | minus: 1 %}
                                {% if index < lastInd %}
                                    {% assign nextIndex = index | plus: 1 %}
                                    {% if d[nextIndex].category_txt == 'facebook' or d[nextIndex].category_txt == 'twitter' %}
                                        {% if nextIndex < lastInd %}
                                            {% assign nextIndex = nextIndex | plus: 1 %}
                                            <a class="btn btn-plain right arrow-right-grey" href="{{ d[nextIndex].url }}">Next</a>
                                        {% endif %}
                                    {% else %}
                                        <a class="btn btn-plain right arrow-right-grey" href="{{ d[nextIndex].url }}">Next</a>
                                    {% endif %}
                                {% endif %}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-lg-pull-9 col-xs-12">
                    <div class="row card-grid">
                        {% include site/twitter_box.inc %}
                        {% include site/inquiries_box.inc %}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>