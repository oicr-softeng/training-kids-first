---
layout: inner_preview
---

<div class="partners-landing">
    <div class="section">
        <!-- <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div class="feature-text">
                        <h2>{{page.title_txt}}</h2>
                        <p>{{page.subtitle_txt}}</p> 
                    </div>
                </div>
            </div>
        </div> -->
        <div class="container dotted-border-bottom">
            <div id="icon-card-isotope" class="row card-grid">
                <h2 class="sr-only">{{page.title}}</h2>
                {% for partnerPage in page.partnersTop_list %}
                <div class="col-md-4 col-sm-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container partners-stack-cards">
                    <div class="card-box card-with-icon mobile-full-card partners-card">
                        <div class="card-icon-container">
                            <a href="{{partnerPage.link_txt}}"><img src="{{partnerPage.icon_txt}}" class="card-icon partners-icon" alt="{{partnerPage.title_txt}}-icon"></a>
                        </div>
                        <div class="card-box-content partners-landing-body">
                            <a href="{{partnerPage.link_txt}}"><h3>{{partnerPage.title_txt}}</h3></a>
                            <hr/>
                            {{partnerPage.paragraph_txt | markdownify}}
                            <!-- {%if partnerPage.externalLink_list %}
                            <ul>
                                {% for item in partnerPage.externalLink_list %}
                                <li><a href="{{item.link_txt}}">{{item.button_txt}}</a></li>
                                {% endfor %}
                            </ul>
                            {%endif%}

                            {%if partnerPage.content_list %}
                            <ul>
                                {% for item in partnerPage.content_list %}
                                <li>{{item.item_txt}}</li>
                                {% endfor %}
                            </ul>
                            {%endif%} -->
                            
                        </div>
                        <div class="link-bottom">
                        <a href= {{partnerPage.link_txt}} title="{{partnerPage.title_txt}}-link" class="btn btn-primary arrow-right-white">{{partnerPage.button_txt}}</a>
                        </div>
                    </div>
                </div>
                {%endfor%}
                {% assign counter = 0 %}
                {% for partnerPage in page.partnersBottom_list %}
                <div class=" {% if counter == 0 %}col-md-offset-2{% endif %} col-md-4 col-sm-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container partners-stack-cards">
                    <div class="card-box card-with-icon mobile-full-card partners-card">
                        <div class="card-icon-container">
                            <a href="{{partnerPage.link_txt}}"><img src="{{partnerPage.icon_txt}}" class="card-icon partners-icon" alt="{{partnerPage.title_txt}}-icon"></a>
                        </div>
                        <div class="card-box-content partners-landing-body">
                            <a href="{{partnerPage.link_txt}}"><h3>{{partnerPage.title_txt}}</h3></a>
                            <hr/>
                            {{partnerPage.paragraph_txt | markdownify}}
                            <!-- {%if partnerPage.externalLink_list %}
                            <ul>
                                {% for item in partnerPage.externalLink_list %}
                                <li><a href="{{item.link_txt}}">{{item.button_txt}}</a></li>
                                {% endfor %}
                            </ul>
                            {%endif%}

                            {%if partnerPage.content_list %}
                            <ul>
                                {% for item in partnerPage.content_list %}
                                <li>{{item.item_txt}}</li>
                                {% endfor %}
                            </ul>
                            {%endif%} -->
                            
                        </div>
                        <div class="link-bottom">
                        <a href= {{partnerPage.link_txt}} title="{{partnerPage.title_txt}}-link" class="btn btn-primary arrow-right-white">{{partnerPage.button_txt}}</a>
                        </div>
                    </div>
                </div>
                {% assign counter = counter | plus: 1 %}
                {%endfor%}
            </div>
        </div>
    </div>
</div>
