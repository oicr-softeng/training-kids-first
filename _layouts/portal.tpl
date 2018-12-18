---
layout: inner_preview
---

<div class="about-portal-page">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xs-12 why-portal-content-1">
                    <h2 class="section-title">{{ page.whyPortal_list[0].title_txt }}</h2>
                    {{ page.whyPortal_list[0].paragraph_txt | markdownify}}
                </div>
                <div class="col-lg-6 col-xs-12 why-portal-content-2">
                    <h2>{{ page.quickStartTitle_txt }}</h2>
                    <div class="app-portal-login-content" data-aplc="anonymous">
                        <ol class="quick-start">
                            {% for item in page.quickStartContent_list %}
                            <li>{{ item.item_txt | markdownify}}</li>
                            {% endfor %}
                        </ol>
                    </div>
                    <div class="app-portal-login-content" data-aplc="loggedin">
                        <ol class="quick-start-for-user">
                            {% for item in page.quickStartContentForUser_list %}
                            <li>{{ item.item_txt | markdownify}}</li>
                            {% endfor %}
                        </ol>
                    </div>

                       {% include site/callouts.inc filePath='login_callout' %}
                    
                </div>
            </div>
        </div>
    </div>
    <div class="section section-highlight who-for-section">
        <div class="container dotted-border-bottom">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1 col-xs-12 text-center">
                    <h2 class="section-title">{{ page.whoForTitle_txt }}</h2>
                    <p>{{ page.whoForSubtitle_txt }}</p>
                </div>
            </div>
            <div id="icon-card-isotope" class="row card-grid">
                {% for user in page.whoForUser_list %}
                <div class="col-sm-3 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                    <div class="card-box card-with-icon mobile-full-card">
                        <div class="card-icon-container partners-cards">
                            <a href="{{user.link_txt}}"><img class="card-icon partners-icon" src="{{ user.icon_txt }}" role="presentation" alt="{{user.title_txt}}-image" /></a>
                        </div>
                        <div class="card-box-content">
                            <a href="{{user.link_txt}}"><h3>{{ user.title_txt }}</h3></a>
                            {{ user.subtitle_txt | markdownify }}
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div>
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1 col-xs-12 text-center">
                    <p>{{ page.whoForContent_txt }}</p>
                </div>
            </div>
        </div>
    </div>

    {% include site/callouts.inc filePath = 'portal_callouts' %}

</div>

