--- 
layout: inner_preview 
---

<div id="about-research" class="about-research-page">
    <div class="section">
        <div id="studies">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-xs-12">
                        <div class="portal-data-header studies-header">
                            <h2 class="portal-data-title">{{page.studies_list[0].title_txt}}</h2>
                        </div>
                        <!-- <div class="portal-data" data-type="studies" data-title="{{ page.studies_list[0].title_txt }}"></div> -->
                        {{page.studies_list[0].subtitle_txt | markdownify}}
                        <h2 class="sr-only">{{page.title}}-header-two</h2>
                        <div class="disease-list-container">
                                {% assign counter = 0 %}
                                {% assign itemCount = 0 %}
                                {% assign itemList = page.studies_list[0].item_list %}
                                {% assign numberOfItems = itemList | size %}
                                {% assign numberOfItems = numberOfItems | minus: 1 %}
                                {% for item in itemList %}
                                    {% assign countModulo = counter | modulo:2 %}
                                    {% assign itemModulo = itemCount | modulo:14 %}
                                        {% if itemModulo == 0 %}
                                            <div class="col-sm-6 col-xs-12 disease-list">
                                                {% if countModulo == 0 %}
                                                <ul class="first-list">
                                                {% else %}
                                                <ul>
                                                {% endif %}
                                                    <li>{{ item.item_txt }}</li>
                                                {% if itemCount == numerOfItems %}
                                                    </ul>
                                                </div>
                                                {% endif %}
                                        {% assign counter = counter| plus:1 %}
                                        {% assign itemCount = itemCount| plus:1 %}
                                        {% elsif itemModulo == 13 or itemCount == numberOfItems %}
                                                    <li>{{ item.item_txt }}</li>
                                                </ul>
                                            </div>
                                        {% assign itemCount = itemCount| plus:1 %}
                                        {% else %}
                                                    <li>{{ item.item_txt }}</li>
                                        {% assign itemCount = itemCount| plus:1 %}
                                    {% endif %}
                                {% endfor %}
                            </div>
                    </div>
                    
                    {% assign count=0 %}
                    {% assign articles =site._news | where:'category_txt',"studies" %}
                    {% assign tags = site._tags | where: 'slug', 'news_tags' | first %}
                    {% if articles.size>0 %}
                        {% assign newsList = articles | sort: "releaseDate_tdt" | reverse %}
                        {% for news in newsList %}
                            {% if count == 0 %}
                            <div class="col-sm-4 col-xs-12 grid-sizer card-container">
                                <div class="card-box news-card-box spotlight-news-card-box">
                                    <div class="card-box-header">
                                        <div class="news-thumbnail-container {% if news.category_txt == 'spotlight' %}{% if news.teaser_list[0].thumbnail_txt %}spotlight-thumbnail-container{% endif %} {{ news.spotlightType_txt }}-spotlight-thumbnail{% endif %}">
                                            <a class="news-image-link {% if news.category_txt == 'spotlight' %}news-image-circular-link{% else %}news-image-thumbnail-link{% endif %}" href="{% if news.link_txt %}{{ news.link_txt }}{% else %}{{ news.url }}{% endif %}">
                                                {% if news.teaser_list[0].thumbnail_txt %}
                                                    {% assign img = news.teaser_list[0].thumbnail_txt %}
                                                    {% if news.category_txt == 'spotlight' %}
                                                        {% include site/image.inc filePath=img className="news-thumbnail news-circular-thumbnail" %}
                                                    {% else %}
                                                        {% include site/image.inc filePath=img className="news-thumbnail" %}
                                                    {% endif %}
                                                {% else %}
                                                    {% if news.category_txt == 'spotlight' %}
                                                        {% include site/image.inc filePath="__images/icon-spotlight-grey.md" className="news-thumbnail news-circular-thumbnail news-icon-thumbnail news-icon-home-thumbnail" %}
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
                                            <a class="news-read-more" title="feature-title" href="{% if news.link_txt %}{{ news.link_txt }}{% else %}{{ news.url }}{% endif %}">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>    
                            {% assign count = count | plus:1 %}      
                            {% endif %}
                        {% endfor %}
                    {%endif%}   
                </div>
            </div>
        </div>
    </div>

    <div class="section-highlight">
        <div id="participants">
            <div class="container">
                {% if page.participants_list[0].img_txt %}
                <div class="row">
                    <div class="col-sm-7 col-xs-12">
                        <div class="portal-data-header participants-header">
                            <h2 class="portal-data-title">{{page.participants_list[0].title_txt}}</h2>
                        </div>
                        <!-- <div class="portal-data" data-type="participants" data-title="{{ page.participants_list[0].title_txt }}"></div> -->
                        <p>{{ page.participants_list[0].subtitle_txt }}</p>
                        
                    </div>
                    <div class="col-sm-5 col-xs-12 research-image"> 
                            {% assign img = page.participants_list[0].img_txt%}
                            {% include site/image.inc filePath=img%}
                    </div>
                </div>
                {% else %}
                    <div class="portal-data-header participants-header">
                        <h2 class="portal-data-title">{{page.participants_list[0].title_txt}}</h2>
                    </div>
                    <!-- <div class="portal-data" data-type="participants" data-title="{{ page.participants_list[0].title_txt }}"></div> -->
                    <p>{{ page.participants_list[0].subtitle_txt }}</p>
                {% endif %}
            </div>
        </div>
    </div>

    <div class="section">
        <div id="families">
            <div class="container">
                {% if page.families_list[0].img_txt %}
                <div class="row">
                    <div class="col-sm-7 col-xs-12">
                        <div class="portal-data-header families-header">
                            <h2 class="portal-data-title">{{page.families_list[0].title_txt}}</h2>
                        </div>
                        <!-- <div class="portal-data" data-type="families" data-title="{{ page.families_list[0].title_txt }}"></div> -->
                        <p>{{ page.families_list[0].subtitle_txt }}</p>
                    </div>
                    <div class="col-sm-5 col-xs-12 research-image"> 
                            {% assign img = page.families_list[0].img_txt%}
                            {% include site/image.inc filePath=img%}
                    </div>
                </div>
                {% else %}
                    <div class="portal-data-header families-header">
                        <h2 class="portal-data-title">{{page.families_list[0].title_txt}}</h2>
                    </div>
                    <!-- <div class="portal-data" data-type="families" data-title="{{ page.families_list[0].title_txt }}"></div> -->
                    <p>{{ page.families_list[0].subtitle_txt }}</p>
                {% endif %}
            </div>
        </div>
    </div>

    <div class="section-highlight">
        <div id="samples">
            <div class="container">
                {% if page.samples_list[0].img_txt %}
                <div class="row">
                    <div class="col-sm-7 col-xs-12">
                        <div class="portal-data-header samples-header">
                            <h2 class="portal-data-title">{{page.samples_list[0].title_txt}}</h2>
                        </div>
                        <!-- <div class="portal-data" data-type="samples" data-title="{{ page.samples_list[0].title_txt }}"></div> -->
                        <p>{{ page.samples_list[0].subtitle_txt }}</p>
                    </div>
                    <div class="col-sm-5 col-xs-12 research-image">                 
                            {% assign img = page.samples_list[0].img_txt%}
                            {% include site/image.inc filePath=img%}    
                    </div>
                </div>
                {% else %}
                    <div class="portal-data-header samples-header">
                        <h2 class="portal-data-title">{{page.samples_list[0].title_txt}}</h2>
                    </div>
                    <!-- <div class="portal-data" data-type="samples" data-title="{{ page.samples_list[0].title_txt }}"></div> -->
                    <p>{{ page.samples_list[0].subtitle_txt }}</p>
                {% endif %}
            </div>
        </div>
    </div>

    <div class="section">
        <div id="files">
            <div class="container">
                {% if page.files_list[0].img_txt %}
                <div class="row">
                    <div class="col-sm-7 col-xs-12">   
                        <div class="portal-data-header files-header">
                            <h2 class="portal-data-title">{{page.files_list[0].title_txt}}</h2>
                        </div>                
                        <div class="portal-data" data-type="files" data-title="{{ page.files_list[0].title_txt }}"></div>
                        <p>{{ page.files_list[0].subtitle_txt }}</p>
                    </div>
                    <div class="col-sm-5 col-xs-12 research-image">
                            {% assign img = page.files_list[0].img_txt%}
                            {% include site/image.inc filePath=img%} 
                    </div>
                </div>
                {% else %}
                    <div class="portal-data-header files-header">
                        <h2 class="portal-data-title">{{page.files_list[0].title_txt}}</h2>
                    </div>  
                    <!-- <div class="portal-data" data-type="files" data-title="{{ page.files_list[0].title_txt }}"></div> -->
                    <p>{{ page.files_list[0].subtitle_txt }}</p>
                {% endif %}
            </div>
        </div>
    </div>

    <div class="section-highlight">
        <div id="fileSize">
            <div class="container">
                {% if page.size_list[0].img_txt %}
                <div class="row">
                    <div class="col-sm-7 col-xs-12">
                        <div class="portal-data-header fileSize-header">
                            <h2 class="portal-data-title">{{page.size_list[0].title_txt}}</h2>
                        </div>  
                        <!-- <div class="portal-data" data-type="fileSize" data-title="{{ page.size_list[0].title_txt }}"></div> -->
                        <p>{{ page.size_list[0].subtitle_txt }}</p>
                    </div>
                    <div class="col-sm-5 col-xs-12 research-image">s
                            {% assign img = page.size_list[0].img_txt%}
                            {% include site/image.inc filePath=img%}               
                    </div>
                </div>
                {% else %}
                    <div class="portal-data-header fileSize-header">
                        <h2 class="portal-data-title">{{page.size_list[0].title_txt}}</h2>
                    </div>  
                    <!-- <div class="portal-data" data-type="fileSize" data-title="{{ page.size_list[0].title_txt }}"></div> -->
                    <p>{{ page.size_list[0].subtitle_txt }}</p>
                {% endif %}
            </div>
        </div>
    </div>

    {% include site/callouts.inc filePath="login_registration_callouts" %}

</div>
