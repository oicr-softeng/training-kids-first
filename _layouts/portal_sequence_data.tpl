--- 
layout: inner_preview 
---
<div class="sequence-data-container">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <h2>{{page.sequenceData_list[0].title_txt}}</h2>
                    <p>{% assign c = page.sequenceData_list[0].content_txt %}
                        {% include site/token_replace_vocab.inc content=c %}</p>
                </div>
                <div class="col-md-6 col-sm-12">
                    {% assign img = page.sequenceData_list[0].img_txt %}
                    {% include site/image.inc filePath=img className="sequence-img" %}
                </div>
            </div>
        </div>
    </div>
    <div class="section section-highlight">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-xs-12 centers-header">
                    <h2>{{page.centerBoxesTitle_txt}}</h2>
                </div>
            </div>
           
            <div id="centers-isotopes" class="row card-grid">
                <div class="col-lg-3 col-md-6 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                    <div class="card-box centers-card-box mobile-full-card">
                        <div class="card-box-header">
                            <div class="centers-logo-container">
                                <a href="{{page.hudsonContent_list[0].link_txt}}" class="centers-logo-link" target="blank" rel="nofollow noopener nofererer">
                                    <span class="sr-only">{{page.hudsonContent_list[0].link_txt}}</span>
                                    {% assign img = page.hudsonContent_list[0].img_txt %}
                                    {% include site/image.inc filePath=img className="centers-logo" %}
                                </a>
                            </div>
                        </div>
                        <div class="card-box-content">
                            {% for item in page.hudsonContent_list[0].content_list %}
                            <a href="{{item.link_txt}}" class="centers-logo-link" target="blank" rel="nofollow noopener nofererer">
                                {{item.title_txt}}
                                <span class="ext">
                                    <span class="element-invisible sr-only">(link is external)</span>
                                </span>
                            </a>
                            <ul class="centers-description">
                                {% for person in item.person_list %}
                                <li>{{ person.person_txt }}</li>
                                {% endfor %}
                            </ul>
                            {% endfor %}
                        </div>
                    </div>
                </div>
                {% for item in page.centers_list %}
                <div class="col-lg-3 col-md-6 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                    <div class="card-box centers-card-box mobile-full-card">
                        <div class="card-box-header">
                            <div class="centers-logo-container">
                                <a href="{{item.link_txt}}" class="centers-logo-link" target="blank" rel="nofollow noopener nofererer">
                                    <span class="sr-only">{{item.title_txt}}</span>
                                    {% assign img = item.img_txt %}
                                    {% include site/image.inc filePath=img className="centers-logo" %}
                                </a>
                            </div>
                        </div>
                        <div class="card-box-content">
                            <a href="{{item.link_txt}}" class="centers-logo-link" target="blank" rel="nofollow noopener nofererer">
                                {{item.title_txt}}
                                <span class="ext">
                                    <span class="element-invisible sr-only">(link is external)</span>
                                </span>
                            </a>
                            <ul class="centers-description">
                                {% for person in item.content_list %}
                                <li>{{person.person_txt}}</li>
                                {% endfor %}
                            </ul>
                        </div>
                    </div>
                </div>
                {% endfor %}
                <!-- <div class="col-lg-3 col-md-6 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                    <div class="card-box centers-card-box mobile-full-card">
                        <div class="card-box-header">
                            <div class="centers-logo-container">
                                <a href="#" class="centers-logo-link" target="blank" rel="nofollow noopener nofererer">
                                    <span class="sr-only">"Baylor College of Medicine Human Genome Sequencing Center"</span>
                                    <img src="/assets/site/images/logo-childrens-hospital-of-Philadelphia.svg" class="centers-logo" role="presentation">
                                </a>
                            </div>
                        </div>
                        <div class="card-box-content">
                            <a href="#" class="centers-logo-link" target="blank" rel="nofollow noopener nofererer">
                                "Baylor College of Medicine Human Genome Sequencing Center"
                                <span class="ext">
                                    <span class="element-invisible sr-only">(link is external)</span>
                                </span>
                            </a>
                            <ul class="centers-description">
                                <li>Richard Gibbs</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-xs-12 card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                    <div class="card-box centers-card-box mobile-full-card">
                        <div class="card-box-header">
                            <div class="centers-logo-container">
                                <a href="#" class="centers-logo-link" target="blank" rel="nofollow noopener nofererer">
                                    <span class="sr-only">"McDonnell Genome Institute at Washington University"</span>
                                    <img src="/assets/site/images/logo-childrens-hospital-of-Philadelphia.svg" class="centers-logo" role="presentation">
                                </a>
                            </div>
                        </div>
                        <div class="card-box-content">
                            <a href="#" class="centers-logo-link" target="blank" rel="nofollow noopener nofererer">
                                "McDonnell Genome Institute at Washington University"
                                <span class="ext">
                                    <span class="element-invisible sr-only">(link is external)</span>
                                </span>
                            </a>
                            <ul class="centers-description">
                                <li>Richard Wilson</li>
                            </ul>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
    {% include site/callouts.inc filePath="login_registration_callouts" %}
</div>