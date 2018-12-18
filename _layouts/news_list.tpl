---
layout: inner_preview
---

<!--[if lte IE 9]>
<div id="news-list-ie-older">
    <div data-reactroot>
        <div id="news-filter" clas="section">
            <div class="container">
                <div class="row filter-wrapper">
                    {% for item in page.newsFilter_list %}
                    <div class="col-lg-2 col-sm-4 col-xs-6 filter-item">
                        <button class="btn-filter">
                            <span class="icon icon-{{item.tag_txt}}"></span>
                            <span>{{item.title_txt}}</span>
                        </button>
                    </div>
                    {% endfor %}
                </div>
            </div>
        </div>
        <div id="news-summary" class="section">
            <div class="container">
                <div class="row summary-wrapper">
                    <div class="col-lg-9 col-md-7 col-sm-6 col-xs-12 filter-summary">
                        <h2 class="filter-summary-type"><span>{{page.newsSummary_list[0].type_txt}}</span></h2>
                        <div class="filter-summary-showing"><span>{{page.newsSummary_list[0].showing_txt}}</span></div>
                    </div>
                    <div id="filter-search" class="col-lg-3 col-md-5 col-sm-6 col-xs-12">
                        <div class="wfui-search-container">
                            <form id="genomics-search-filter" class="form-inline webform-search">
                                <div class="wfui-filters-item wfui-filters-item form-group">
                                    <label class="control-label">{{page.newsSummary_list[0].filter_txt}}</label>
                                    <div class="form-group">
                                        <input type="text" name="searchTerm" value="" placeholder="Filter News" id="searchTerm" class="form-control">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="news-articles" class="section">
            <div class="container">
                <div id="news-box-isotope" class="row card-grid">
                    {% assign tags = site._tags | where: 'slug', 'news_tags' | first %}
                    {% assign cards = site._news | sort: 'releaseDate_tdt' | reverse %}
                    {% for item in cards %}
                        {% if item.category_txt == 'spotlight' %}
                            {% if item.spotlightType_txt == 'foundation' %}
                            <div class="col-lg-8 col-xs-12 card-container">
                                <div class="card-box news-card-box spotlight-card foundation-spotlight-card">
                                    <div class="card-box-header spotlight-header">
                                        <h3 class="spotlight-title"><span>Foundation Spotlight</span></h3>
                                    </div>
                                    <div class="card-box-content news-card-content">
                                        <div class="news-card-details">
                                            <div class="spotlight-picture-container">
                                                <div class="spotlight-picture-wrapper">
                                                    {% if item.teaser_list[0].thumbnail_txt %}
                                                        {% assign img = item.teaser_list[0].thumbnail_txt %}
                                                        {% include site/image.inc filePath=img className="spotlight-picture" %}
                                                    {% else %}
                                                        {% include site/image.inc filePath="__images/icon-spotlight-grey.md" className="news-thumbnail news-circular-thumbnail news-icon-thumbnail" %}
                                                    {% endif %}
                                                </div>
                                            </div>
                                            <div class="spotlight-detail-container">
                                                <span class="news-details-date">{{item.releaseDate_tdt | date: "%B %e, %Y"}}</span>
                                                <h3 class="foundation-name"><span>{{item.title}}</span></h3>
                                                <p>{{item.teaser_list[0].headline_txt}}</p>
                                                <a class="news-read-more" href="{{item.teaser_list[0].link_txt}}">{{item.teaser_list[0].button_txt}}</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>        
                            </div>
                            {% else %}
                                <div class="col-lg-8 col-xs-12 card-container">
                                    <div class="card-box news-card-box spotlight-card investigator-spotlight-card">
                                        <div class="card-box-header spotlight-header">
                                            <h3 class="spotlight-title"><span>Investigator Spotlight</span></h3>
                                        </div>
                                        <div class="card-box-content news-card-content">
                                            <div class="news-card-details">
                                                <div class="spotlight-picture-container">
                                                    <div class="spotlight-picture-wrapper">
                                                        {% if item.teaser_list[0].thumbnail_txt %}
                                                            {% assign img = item.teaser_list[0].thumbnail_txt %}
                                                            {% include site/image.inc filePath=img className="spotlight-picture" %}
                                                        {% else %}
                                                            {% include site/image.inc filePath="__images/icon-spotlight-grey.md" className="news-thumbnail news-circular-thumbnail news-icon-thumbnail" %}
                                                        {% endif %}
                                                    </div>
                                                </div>
                                                <div class="spotlight-detail-container">
                                                    <span class="news-details-date">{{item.releaseDate_tdt | date: "%B %e, %Y"}}</span>
                                                    <h3 class="investigator-name"><span>{{item.title}}</span></h3>
                                                    <p class="investigator-affiliation">{{item.teaser_list[0].affiliation_txt}}</p>
                                                    <p class="investigator-research">{{item.teaser_list[0].focus_txt}}</p>
                                                    <p>{{item.teaser_list[0].headline_txt}}</p>
                                                    <a class="news-read-more" href="{{item.teaser_list[0].link_txt}}">{{item.teaser_list[0].button_txt}}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {% endif %}
                        {% else %}
                            <div class="col-lg-4 col-sm-6 col-xs-12 card-container">
                                <div class="card-box news-card-box">
                                    <div class="card-box-header">
                                        <div class="news-thumbnail-container">
                                            <a href="{{item.teaser_list[0].link_txt}}">
                                                {% if item.teaser_list[0].thumbnail_txt %}
                                                    {% assign img = item.teaser_list[0].thumbnail_txt %}
                                                    {% include site/image.inc filePath=img className="news-thumbnail" %}
                                                {% else %}
                                                    {% assign icon = "__images/icon-" | append: item.category_txt | append: '-grey.md '%}
                                                    {% include site/image.inc filePath=icon className="news-thumbnail news-circular-thumbnail news-icon-thumbnail" %}
                                                {% endif %}
                                            </a>    
                                        </div>
                                    </div>
                                    <div class="card-box-content news-card-content">
                                        <div class="icon-news-type-container">
                                            <span class="icon-news-type icon-{{item.category_txt}}"></span>
                                            <div class="news-type-txt">
                                                <span>
                                                    {% for category in tags.category_list %}
                                                        {% if category.key_txt == item.category_txt %}
                                                            {{ category.value_txt }}
                                                            {% break %}
                                                        {% endif %}
                                                    {% endfor %}
                                                </span>
                                            </div>  
                                        </div>
                                        <div class="news-card-details">
                                            <span class="news-details-date">{{item.releaseDate_tdt | date: "%B %e, %Y"}}</span>
                                            <h3 class="news-details-title"><span>{{item.title}}</span></h3>
                                            <p class="news-details-desc">{{item.teaser_list[0].headline_txt}}</p>
                                            <a class="news-read-more" href="{{item.teaser_list[0].link_txt}}">{{item.teaser_list[0].button_txt}}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {% endif %}
                    {% endfor %}
                </div>
                    <!--div class="col-lg-4 col-sm-6 col-xs-12 card-container">
                        <div class="card-box news-card-box">
                            <div class="card-box-header">
                                <div class="news-thumbnail-container">
                                    <a href="#">
                                        <img class="news-thumbnail" src="/assets/site/images/smashing-walnuts-obama.jpg" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="card-box-content news-card-content">
                                <div class="icon-news-type-container">
                                    <span class="icon-news-type icon-events"></span>
                                    <div class="news-type-txt"><span>Events</span></div>
                                </div>
                                <div class="news-card-details">
                                    <span class="news-details-date">April 15, 2018</span>
                                    <h3 class="news-details-title"><span>DRC Study Updates</span></h3>
                                    <p class="news-details-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <a class="news-read-more" href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12 card-container">
                        <div class="card-box news-card-box">
                            <div class="card-box-header">
                                <div class="news-thumbnail-container">
                                    <a href="#">
                                        <img class="news-thumbnail" src="/assets/site/images/smashing-walnuts-obama.jpg" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="card-box-content news-card-content">
                                <div class="icon-news-type-container">
                                    <span class="icon-news-type icon-news"></span>
                                    <div class="news-type-txt"><span>News</span></div>
                                </div>
                                <div class="news-card-details">
                                    <span class="news-details-date">April 15, 2018</span>
                                    <h3 class="news-details-title"><span>DRC Study Updates</span></h3>
                                    <p class="news-details-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <a class="news-read-more" href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12 card-container">
                        <div class="card-box news-card-box">
                            <div class="card-box-header">
                                <div class="news-thumbnail-container">
                                    <a href="#">
                                        <img class="news-thumbnail" src="/assets/site/images/smashing-walnuts-obama.jpg" alt="" />
                                    </a>
                                </div>
                            </div>
                            <div class="card-box-content news-card-content">
                                <div class="icon-news-type-container">
                                    <span class="icon-news-type icon-press"></span>
                                    <div class="news-type-txt"><span>In the press</span></div>
                                </div>
                                <div class="news-card-details">
                                    <span class="news-details-date">April 15, 2018</span>
                                    <h3 class="news-details-title"><span>DRC Study Updates</span></h3>
                                    <p class="news-details-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <a class="news-read-more" href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                
                <div class="row">
                    <div class="col-xs-12 news-pagination">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="First">
                                        <span aria-hidden-"true" class="pagination-to-first"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden-"true" class="pagination-previous"></span>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden-"true" class="pagination-next"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" aria-label="Last">
                                        <span aria-hidden-"true" class="pagination-to-last"></span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<![endif]-->
<!--[if gt IE 9]>
<div id="news-list"></div>
<![endif]-->
<!--[if !IE]><!-->
<div id="news-list"></div>
<![endif]-->
<div id="fb-root"></div>