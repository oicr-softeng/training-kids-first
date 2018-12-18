--- 
layout: inner_preview 
---
<div class="sequence-data-container">
    <div class="section">
        <div class="container">
            <div class="row">
                {% if page.phenotypic_list[0].img_list != '' %}
                    <div class="col-md-12 col-sm-12">
                        <h2>{{page.phenotypic_list[0].title_txt}}</h2>
                        {{ page.phenotypic_list[0].content_txt | markdownify }}
                    </div>
                    {% for item in page.phenotypic_list[0].img_list %}
                    <div class="col-sm-6 col-xs-12 harmonization-image">
                        {% assign img = item.img_txt %}
                        {% include site/image.inc filePath=img %}          
                    </div>
                    {%endfor%}
                {% else %}
                    <div class="col-md-12 col-sm-12">
                        <h2>{{page.phenotypic_list[0].title_txt}}</h2>
                        {{  page.phenotypic_list[0].content_txt | markdownify }}
                    </div>
                {% endif %}        
            </div>
        </div>
    </div>
    <div class="section section-highlight">
        <div class="container">
            <div class="row">
            {% if page.genomic_list[0].img_list != '' %}
                <div class="col-md-12 col-sm-12">
                    <h2>{{page.genomic_list[0].title_txt}}</h2>
                    {{ page.genomic_list[0].content_txt | markdownify }}       
                </div>
                {% for item in page.genomic_list[0].img_list %}
                <div class="col-sm-6 col-xs-12 harmonization-image">
                    {% assign img = item.img_txt %}
                    {% include site/image.inc filePath=img %}
                </div>
                {%endfor%}
            {% else %}
            <div class="col-md-12 col-sm-12">
                    <h2>{{page.genomic_list[0].title_txt}}</h2>
                    {{ page.genomic_list[0].content_txt | markdownify }}
            </div>
            {% endif %}
            </div>
        </div>
    </div>
    {% include site/callouts.inc filePath="login_registration_callouts" %}
</div>