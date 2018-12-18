{% assign sns = site._modules | where: "slug", "news_social_media" | first %}
<div class="menu-social-menu">
    <ul class="menu">
        {% for item in sns.sns_list %}
            <li class="leaf {% if forloop.first == true %}first{% endif %}">
                <a href="{{ item.link_txt }}" title="{{item.tag_txt}}-three" class="link-social link-{{ item.tag_txt }}">
                    {{ item.text_txt }}
                </a>
            </li>
        {% endfor %}
    </ul>
</div>