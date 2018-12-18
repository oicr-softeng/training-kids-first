--- 
layout: inner_preview 
---
<div class="support">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h2 class="section-title">{{page.userGuidesBoxtitle_txt}}</h2>
                </div>
            </div>
            <div id="icon-card-isotope" class="row card-grid">
                {% for box in page.userGuidesBox_list %}
                <div class="col-sm-4 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                    <div class="card-box card-with-icon mobile-full-card">
                        <div class="card-icon-container">
                            {% assign img = box.img_txt%}
                            {% include site/image.inc filePath=img className="card-icon"  %}
                        </div>
                        <div class="card-box-content">
                            <h3>{{box.title_txt}}</h3>
                            <p>
                            {% assign count=0 %}
                                {% for item in box.content_list %}
                                    {% if count==0 %}
                                        {{item.item_txt}}
                                        {% assign count = count | plus:1 %}
                                    {% else %}
                                        <br>{{item.item_txt}}
                                    {%endif%}
                                {%endfor%}
                            </p>
                            <a href="{{ box.link_txt }}" class="btn btn-primary arrow-right-white documentation-button">{{page.userGuidesBoxButton_txt}}</a>
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div>
        </div>
    </div>
    <div class="section developers-technical-section">
        <div class="container">
            <div class="row row-eq-height">
                {% for section in page.additionalResources_list %}
                <div class="col-md-6 col-xs-12 support-tabs">
                    <div class="tab-header {{section.tag_txt}}">
                        <h3>{{section.title_txt}}</h3>
                    </div>
                    <div class="tab-contents">
                        <p>{{section.description_txt}}</p>
                        <div class="link-list">
                            {% for item in section.link_list %}
                            <a href="{{item.link_txt}}">{{item.button_txt}}</a>
                            {% endfor %}
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div>
        </div>
    </div>
</div>
