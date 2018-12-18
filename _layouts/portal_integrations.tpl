--- 
layout: inner_preview 
---
<div class="data-tab section">
    <div class="container">
        <div class="row tab-wrapper">
            <div class="col-sm-4 col-xs-12 tab-item">
                <a href="/portal/data-access/" class="btn-filter">Data Access</a>
            </div>
            <div class="col-sm-4 col-xs-12 tab-item">
                <a href="/portal/searching-and-downloading/" class="btn-filter">Searching and Downloading</a>
            </div>
            <div class="col-sm-4 col-xs-12 tab-item">
                <a href="/portal/integrations/" class="btn-filter active">Integrations</a>
            </div>      
        </div>
    </div>
</div>
<div class="tab-content">
    <div id="integrations" class="tab-pane fade in active">
        <div class="container dotted-border-bottom">
            <h2>{{ page.integrations_list[0].title_txt }}</h2>
            <div class="row">
                <div class="col-lg-6 col-xs-12">
                    <div class="integration-img-container">
                        {% assign icon = page.integrations_list[0].icon_txt %}
                        {% include site/image.inc filePath=icon className="integration-logo"%}
                    </div>
                    {{ page.integrationsParagraph_txt | markdownify }}
                    {% for item in page.integrations_list[0].button_list %}
                    <a href="{{ item.link_txt }}" class="btn btn-primary arrow-right-white documentation-button">{{ item.button_txt}}</a>
                    {% endfor %}
                </div>
                <div class="col-lg-6 col-xs-12">
                        {% assign image = page.integrations_list[0].img_txt %}
                        {% include site/image.inc filePath=image className="integrations-screenshot" modal=true %}
                </div>
            </div>
        </div>
    </div>
    {% include site/callouts.inc filePath="login_registration_callouts" %}
</div>