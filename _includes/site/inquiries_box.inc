{% assign inq = site._modules | where:"slug", "inquiries_box" | first %}
<div class="col-lg-12 col-sm-6 col-xs-12 card-container card-with-icon-container media-inquiries-card-container mobile-full-card-container">
    <div class="card-box card-with-icon mobile-full-card media-inquiries-card">
        <div class="card-icon-container">
            {% include site/image.inc filePath = inq.img_txt className="card-icon" %}
        </div>
        <div class="card-box-content">
            <div class="updates-container">
                <h3>{{inq.updates_title}}</h3>
                <hr />
                <p>{{inq.updates_content_txt}}</p>
                <a href="{{ inq.updates_link_txt }}" class="btn btn-primary arrow-right-white">{{inq.updates_button_txt}}</a>
            </div>
            <div class="media-container">
                <h3>{{inq.media_title}}</h3>
                <hr />
                <p>{{inq.media_content_txt}}</p>
                <a href="{{ inq.media_link_txt }}" title="media-inquiries-contact" class="btn btn-primary arrow-right-white">{{inq.media_button_txt}}</a>
            </div>
        </div>
    </div>
</div>
