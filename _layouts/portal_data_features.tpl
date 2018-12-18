---
layout: inner_preview
---
    <div id="tabNavHref" class="data-tab section">
        <div class="container">
            <div class="row tab-wrapper">
                <div class="col-sm-4 col-xs-12 tab-item">
                    <button data-toggle="tab" href="#dataAccess" class="btn-filter active">{{page.dataAccess_list[0].title_txt}}</button>
                </div>
                <div class="col-sm-4 col-xs-12 tab-item">
                    <button data-toggle="tab" href="#searchingDownloading" class="btn-filter">{{page.searchingAndDownloading_list[0].title_txt}}</button>
                </div>
                <div class="col-sm-4 col-xs-12 tab-item">
                    <button data-toggle="tab" href="#integrations" class="btn-filter">{{page.integrationsTitle_txt}}</button>
                </div>      
            </div>
        </div>
    </div>
    <div class="tab-content">
        <div id="dataAccess" class="tab-pane fade in active">
            <div class="container dotted-border-bottom">
                <h2>{{page.dataAccess_list[0].title_txt}}</h2>
                <div class="row">
                    <div class="col-lg-6 col-xs-12">
                        <p>{{page.dataAccess_list[0].subtitle_txt}}</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-xs-12">
                        <ol>
                            {% for item in page.dataAccessTier_list %}
                            <li>
                                <h3>{{ item.title_txt }}</h3>
                                <p>{{ item.content_txt }}</p>
                            </li>
                            {% endfor %}
                        </ol>
                        <a href="{{page.dataAccess_list[0].link_txt}}" class="btn btn-primary arrow-right-white documentation-button">{{page.dataAccess_list[0].button_txt}}</a>
                    </div>
                    <div class="col-lg-6 col-xs-12">
                        <div class="access-tier-wrapper">
                            {% assign img = page.dataAccess_list[0].img_txt %}
                            {% include site/image.inc filePath=img className="access-tier-image" %}
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="searchingDownloading" class="tab-pane fade in">
            <div class="container dotted-border-bottom">
                <h2>{{ page.searchingAndDownloading_list[0].title_txt }}</h2>
                <div class="row searching-downloading-container">
                    <div class="col-lg-6 col-xs-12">
                        <p>{{ page.searchingAndDownloading_list[0].content_txt }}</p>
                    </div>
                    <div class="col-lg-6 col-xs-12">
                        {% assign icon = page.searchingAndDownloading_list[0].img_txt  %}
                        {% include site/image.inc filePath=icon className="searching-downloading-image" modal=true %}
                    </div>
                </div>
            </div>
        </div>

        <div id="integrations" class="tab-pane fade">
            <div class="container dotted-border-bottom">
                <h2>{{ page.integrationsTitle_txt }}</h2>
                {% for integration in page.integrations_list %}
                {% if  integration.img_txt != '' %}
                <div class="row">
                    <div class="col-lg-6 col-xs-12">
                        <div class="integration-img-container">
                            {% if integration.icon_txt != '' %}
                            {% assign icon = integration.icon_txt %}
                            {% include site/image.inc filePath=icon className="integration-logo"%}
                            {% endif %}
                        </div>
                        {{ integration.paragraph_txt | markdownify }}
                        {% for item in integration.button_list %}
                        <a href="{{ item.link_txt }}" class="btn btn-primary arrow-right-white documentation-button">{{ item.button_txt}}</a>
                        {% endfor %}
                    </div>
                    <div class="col-lg-6 col-xs-12">
                       
                            {% assign image = integration.img_txt %}
                            {% include site/image.inc filePath=image className="integrations-screenshot" modal=true %}
                        
                    </div>
                </div>
                {% else %}
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <div class="integration-img-container">
                            {% if integration.icon_txt != '' %}
                            {% assign icon = integration.icon_txt %}
                            {% include site/image.inc filePath=icon className="integration-logo"%}
                            {% endif %}
                        </div>
                        {{ integration.paragraph_txt | markdownify }}
                        {% for item in integration.button_list %}
                        <a href="{{ item.link_txt }}" class="btn btn-primary arrow-right-white documentation-button">{{ item.button_txt}}</a>
                        {% endfor %}
                    </div>
                </div>
                {% endif %}
                {% endfor %}
            </div>
        </div>

        {% include site/callouts.inc filePath="login_registration_callouts" %}
    </div>
