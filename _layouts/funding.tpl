---
layout: inner_preview
---

<div class="about-funding">
    <div class="section overview-section">
        <div class="container">
            <div class="row flex-wrap-equal-height overview-row">
                <div class="col-lg-8 col-xs-12">
                    <div class="quote-box">
                        <p><em>{{page.pullQuote_txt}}</em></p>
                    </div>
                    {{page.paragraph_txt | markdownify }}
                    <a href= {{page.link_txt}} class="btn btn-primary text-uppercase arrow-right-white">{{page.button_txt}}</a>
                </div>
                <div class="col-lg-4 col-xs-12">
                    <div class="circular-logo-wrapper">
                        {% include site/image.inc filePath=page.img_txt className="logo-image" %}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>