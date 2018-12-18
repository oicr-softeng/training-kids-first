--- 
layout: inner_preview 
---

<div class="support-guides {{ page.slug | replace: '_', '-' }}">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-xs-12 support-guides-menu">
                    <div class="row card-grid">
                        <div class="col-xs-12" id="support-keyword-search" data-path="{{ page.path }}"></div>
                        <div class="col-xs-12 card-container mobile-full-card-container support-accordion-container" id="support-accordion-container">
                            <div class="card-box mobile-full-card">
                                <div id="support-accordion">
                                    {% include site/support_menu.inc page=page %}
                                </div>
                            </div>
                        </div>
                        {% include site/technical_support_box.inc %}
                        {% include site/login_box.inc %}
                    </div>
                </div>
                <div class="col-lg-9 col-xs-12 support-guides-body {{ page.slug | replace: '_', '-' }}-body">
                    {% include site/token_replace_support.inc content=content %}

                    <div class="row">
                        <div class="col-xs-12">
                            {% assign nav = site._modules | where: "slug","nav" | first %}
                            {% assign supportNav = nav.nav_list | where: "title_txt", "Support" | first %}
                            {% assign d = supportNav.dropdown_list %}
                            {% assign index = 0 %}
                            {% for article in d %}
                                {% if article.link_txt == page.permalink %}
                                {% break %}
                                {% endif %}
                                {% assign index = index | plus: 1 %}
                            {% endfor %}
                            <div class="support-navigation-controls flex-no-wrap">
                                {% assign lastInd = d.size | minus: 2 %}
                                {% assign firstElement = "false" %}
                                {% assign lastElement = "false" %}

                                {% if index == lastInd %}
                                    {% assign lastElement = "true" %}
                                {% elsif index == 0 %}
                                    {% assign firstElement = "true" %}
                                {% endif %}

                                {% if firstElement == "true" %}
                                <a class="btn left btn-support support-left not-active" href="">Previous Section</a>
                                {% endif %}

                                {% if index > 0 %}
                                    {% assign prevIndex = index | minus: 1 %}
                                        <a class="btn left btn-support support-left" href="{{ d[prevIndex].link_txt }}">Previous Section</a>
                                {% endif %}

                                <a class="btn btn-support support-back" href="/support/getting-started/"></a>
                                
                                {% if index < lastInd %}
                                    {% assign nextIndex = index | plus: 1 %}
                                        <a class="btn right btn-support support-right" href="{{ d[nextIndex].link_txt }}">Next Section</a>
                                {% endif %}

                                {% if lastElement == "true" %}
                                        <a class="btn right btn-support support-right not-active" style="pointer-events: none" href="">Next Section</a>
                                {% endif %}

                            </div>
                        </div>
                    </div>

                </div>
                
            </div>
        </div>
    </div>
</div>
