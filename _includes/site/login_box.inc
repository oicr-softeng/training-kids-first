{% assign login = site._modules | where:"slug", "login_box" | first %}
<div id="loginBoxContainer" class="app-portal-login-content" data-aplc="anonymous">
    <div id="loginBox" class="col-lg-12 col-xs-12 card-container card-with-icon-container login-card-container mobile-full-card-container" >
        <div class="card-box card-with-icon mobile-full-card login-card">
            <div class="card-icon-container">
                {% include site/image.inc filePath = login.img_txt className="card-icon" %}
            </div>
            <div class="card-box-content">
                <h3>{{login.title}}</h3>
                <hr />
                <p>{{login.content_txt}}</p>
                <a href="{{ login.link_txt }}" class="btn btn-primary arrow-right-white">{{login.button_txt}}</a>
            </div>
        </div>
    </div>
</div>