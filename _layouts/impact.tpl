---
layout: inner_preview
---

<div class="impact-page">
    <div class="section impact-section overview-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xs-12">
                    <h2 class="section-title no-margin-top">{{page.leftContentTitle_txt}}</h2>
                    <p>
                        {{page.leftContentParagraph_txt}}
                    </p>
                    <ol class="why-drc-list">
                        {% for item in page.leftContent_list%}
                        <li>
                            {{item.item_txt | markdownify}}
                        </li>
                        {% endfor %}
                    </ol>
                </div>
                <div class="col-lg-6 col-xs-12 info-update-wrapper impact-info-wrapper">
                    <div class="info-box impact-info-box">
                        <div class="info-box-header">
                            <h2 class="text-center"><span>{{page.rightBox_list[0].title_txt}}</span></h2>
                        </div>
                        <div class="info-box-content-container">
                            <div class="info-box-content">
                                <p>{{page.rightBox_list[0].paragraph_txt}}</p>
                                <!--div class="info-box-highlight-1">
                                    <p class="text-highlight">{ <span class="text-research">Research</span> + <span class="text-patient">Patient</span> + <span class="text-health">Health</span> }</p>
                                    <p class="text-highlight">Communities</p>
                                </div>
                                <p>Researchers will be able to easily combine/compare datasets for cross-dataset analyses to identify the genetic pathways that underlie:</p>
                                <div class="info-box-highlight-2">
                                    <p class="text-highlight">{ <span class="text-childhood">Childhood Cancer</span> + <span class="text-structural">Structural Birth Defects</span> }</p>
                                </div-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section section-highlight">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xs-12 fair-data-image">         
                    {% assign img=page.fairData_list[0].img_txt %}    
                    {% include site/image.inc filePath=img %}
                </div>
                <div class="col-lg-6 col-xs-12">
                    <h2 class="section-title">{{page.fairData_list[0].title_txt}}</h2>
                    <p>{{page.fairData_list[0].content_txt}}</p>
                    {% comment %}<p><a class="btn btn-default text-uppercase btn-partners arrow-right-white" href= {{page.fairData_list[0].link_txt}}>{{page.fairData_list[0].button_txt}}</a></p>{% endcomment %}
                </div>
            </div>
        </div>
    </div>
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-xs-12 data-sharing-content-1">
                    <h2 class="section-title">{{page.benefits_list[0].title_txt}}</h2>
                    <p>{{page.benefits_list[0].leftParagraph_txt}}</p>
                </div>
                <div class="col-lg-6 col-xs-12 data-sharing-content-2">
                    <p>{{page.benefits_list[0].rightParagraph_txt}}</p>
                </div>
            </div>
            <div class="row dotted-border-top">
                <div class="col-xs-12">
                    <div class="data-sharing">
                        <ul class="data-sharing-list">
                            <li class="data-sharing-title">
                                {{ page.sharingDataTitle_txt }}
                            </li>
                            {% for item in page.sharingData_list %}
                                <li class="data-sharing-item icon-{{item.tag_txt}}">
                                    {{ item.item_txt }}
                                </li>
                            {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 text-center">
                    <a href= {{page.sharingDataLink_txt}} class="btn btn-primary arrow-right-white">{{page.sharingDataButton_txt}}</a>
                </div>
            </div>
        </div>
    </div>
</div> 
