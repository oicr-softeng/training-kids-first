<div id="portal-stat"></div>

{% comment %}
{% assign summary = site._modules | where:"slug", "portal_summary" | first %}
<div class="portal-stat-grid">
    {% assign stats = summary.stat_list %}
    {% for item in stats %}
    <div class="portal-stat-item col-lg-2 col-xs-4">
        <div class="stat-icon">
            <img src="/assets/site/images/icon-stats-{{ item.label_txt }}.svg" role="presentation" alt="">
        </div>
        <div class="stat-detail">
            <div class="stat-link">
                <span class="stat-link-highlight"><a href= "{{item.link_txt}}">{{ item.count_txt }}</a></span>
                <br/>
                <span class="text-capitalize"><a href= "{{item.link_txt}}">{{ item.label_txt }}</a></span>
            </div>
        </div>
    </div>
    {% endfor %}
</div>
{% endcomment %}