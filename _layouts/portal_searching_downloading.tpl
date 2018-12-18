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
                <a href="/portal/searching-and-downloading/" class="btn-filter active">Searching and Downloading</a>
            </div>
            <div class="col-sm-4 col-xs-12 tab-item">
                <a href="/portal/integrations/" class="btn-filter">Integrations</a>
            </div>      
        </div>
    </div>
</div>
<div class="tab-content">
    <div id="searchingDownloading" class="tab-pane fade in active">
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
    {% include site/callouts.inc filePath="login_registration_callouts" %}
</div>