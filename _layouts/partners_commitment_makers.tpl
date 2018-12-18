--- 
layout: inner_preview 
---
{% assign commitmentGroupCategories = site._partners | where: "type_txt", "commitment-makers" | group_by: "commitmentCategory_txt" | sort: "name" %}

<div class="commitment-makers">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div class="feature-text">
                        <h2>{{page.title_txt}}</h2>
                        <p>{{page.subtitle_txt}}</p>
                    </div>
                </div>
            </div>
            {% for category in commitmentGroupCategories %}
                <div class="commitment-makers-section">
                    <div class="row">
                        <div class="col-xs-12 text-center commitment-makers-header">
                            <div class="header-body">
                                {{category.name}}
                            </div>
                        </div>
                    </div>
                    {% for commitmentGroup in category.items %}
                        <div class="row commitment-makers-entry">
                            <div class="col-md-3 col-sm-12">
                                <div class="commitment-makers-logo">
                                    {% if commitmentGroup.img_txt and commitmentGroup.img_txt != '' %}
                                    {% assign img = commitmentGroup.img_txt %}
                                    {% include site/image.inc filePath=img %}
                                    {% else %}
                                    {% include site/image.inc filePath="__images/icon-default-community.md" %}
                                    {% endif %}
                                </div>
                            </div>
                            <div class="col-md-9 col-sm-12">
                                <div class="commitment-makers-body">
                                    <h3>
                                        <a href="{{commitmentGroup.link_txt}}">{{commitmentGroup.title_txt}}</a>
                                    </h3>
                                    {% if commitmentGroup.partnershipGoal_txt != "" %}
                                    <h4>Partnership Goal:
                                        <span class="accent-dark">{{commitmentGroup.partnershipGoal_txt}}</span>
                                    </h4>
                                    {% endif %}
                                    {{commitmentGroup.content | markdownify }}
                                    {% if commitmentGroup.project_list %}
                                    <div class="project-header">
                                        <h4>Supports Projects:</h4>
                                    </div>
                                    <ul>
                                        {% for project in commitmentGroup.project_list %}
                                        <li><a href="{{project.link_txt}}">{{project.title_txt}}</a></li>
                                        {%endfor%}
                                    </ul>
                                    {%endif%}
                                </div>
                            </div>
                        </div>
                    {% endfor %}
                </div>
            {% endfor %}
            {% comment %} <div class="commitment-makers-section">
                <div class="row">
                    <div class="col-xs-12 text-center commitment-makers-header">
                        <div class="header-body">
                            {{page.consortiaBoxTitle_txt}}
                        </div>
                    </div>
                </div>
                {% for item in page.consortiaBoxContent_list %}
                <div class="row commitment-makers-entry">
                    <div class="col-md-3 col-sm-12">
                        <div class="commitment-makers-logo">
                            {% if item.img_txt and item.img_txt != '' %}
                            {% assign img = commitmentGroup.img_txt %}
                            {% include site/image.inc filePath=img %}
                            {% else %}
                            {% include site/image.inc filePath="__images/icon-default-community.md" %}
                            {% endif %}
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12">
                        <div class="commitment-makers-body">
                            <h3>
                                <a href="{{item.link_txt}}">{{item.title_txt}}</a>
                            </h3>
                            {% if item.partnershipGoal_txt %}
                            <h4>Partnership Goal:
                                <span class="accent-dark">{{item.partnershipGoal_txt}}</span>
                            </h4>
                            {% endif %}
                            {{item.description_txt | markdownify }}
                            {% if item.project_list %}
                            <div class="project-header">
                                <h4>Supports Projects:</h4>
                            </div>
                            <ul>
                                {% for project in item.project_list %}
                                <li><a href="{{project.link_txt}}">{{project.title_txt}}</a></li>
                                {%endfor%}
                            </ul>
                            {%endif%}
                        </div>
                    </div>
                </div>
                {% endfor %}
                
            </div>
            <div class="commitment-makers-section">
                <div class="row">
                    <div class="col-xs-12 text-center commitment-makers-header">
                        <div class="header-body">
                                {{page.corporateSupportBoxTitle_txt}}
                        </div>
                    </div>
                </div>
                {% for item in page.corporateSupportBoxContent_list %}
                <div class="row commitment-makers-entry">
                    <div class="col-md-3 col-sm-12">
                        <div class="commitment-makers-logo">
                            {% if item.img_txt and item.img_txt != '' %}
                            {% assign img = commitmentGroup.img_txt %}
                            {% include site/image.inc filePath=img %}
                            {% else %}
                            {% include site/image.inc filePath="__images/icon-default-community.md" %}
                            {% endif %}
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12">
                        <div class="commitment-makers-body">
                            <h3>
                                <a href="{{item.link_txt}}">{{item.title_txt}}</a>
                            </h3>
                            {% if item.partnershipGoal_txt %}
                            <h4>Partnership Goal:
                                <span class="accent-dark">{{item.partnershipGoal_txt}}</span>
                            </h4>
                            {% endif %}
                            {{item.description_txt | markdownify }}
                            {% if item.project_list %}
                            <div class="project-header">
                                <h4>Supports Projects:</h4>
                            </div>
                            <ul>
                                {% for project in item.project_list %}
                                <li><a href="{{project.link_txt}}">{{project.title_txt}}</a></li>
                                {%endfor%}
                            </ul>
                            {%endif%}
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div> {% endcomment %}
        </div>
    </div>
</div>
