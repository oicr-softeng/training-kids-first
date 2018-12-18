{% assign inq = site._modules | where:"slug", "technical_support_box" | first %}
<div class="col-lg-12 col-xs-12 card-container card-with-icon-container technical-support-card-container mobile-full-card-container">
    <div class="card-box card-with-icon mobile-full-card technical-support-card">
        <div class="card-icon-container">
            {% include site/image.inc filePath = inq.img_txt className="card-icon" %}
        </div>
        <div class="card-box-content">
            <h3>{{inq.title}}</h3>
            <hr />
            <p>{{inq.content_txt}}</p>
            <a href="{{ inq.link_txt }}" class="btn btn-primary arrow-right-white">{{inq.button_txt}}</a>
        </div>
    </div>
</div>
