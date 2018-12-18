{% assign calloutBox = site._modules | where:"slug", include.filePath | first %}
<div class="section">
{% if include.filePath != "login_callout" %}
    <div class="container">
        <div class="row card-grid">
            {% for item in calloutBox.aboutCalloutBoxes_list %}
            <div class="col-lg-6 col-xs-12 card-container">
                <div class="gradient-border-top-default"></div>
                <div class="card-box gradient-top-card {{item.tag_txt}}-card">
                    <div class="card-box-content">
                        <h3>{{item.title_txt}}</h3>
                        <p>{{item.content_txt}}</p>
                        <a href= "{{item.link_txt}}" title="{{item.title_txt}}-link" class="btn btn-primary arrow-right-white">{{item.button_txt}}</a>
                    </div>
                </div>
            </div>
            {% endfor %}
        </div>
{% else %}
            <div class="row card-grid">
            {% for item in calloutBox.aboutCalloutBoxes_list %}
            <div class="col-lg-12 col-xs-12 card-container">
                <div class="gradient-border-top-default"></div>
                <div class="card-box gradient-top-card {{item.tag_txt}}-card">
                    <div class="card-box-content">
                        <h3>{{item.title_txt}}</h3>
                        <p>{{item.content_txt}}</p>
                        <a href= "{{item.link_txt}}" title="{{item.title_txt}}-link" class="btn btn-primary arrow-right-white">{{item.button_txt}}</a>
                    </div>
                </div>
            </div>
            {% endfor %}
            {% endif %}
    </div>
</div>