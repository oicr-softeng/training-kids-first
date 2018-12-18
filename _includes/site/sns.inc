{% assign sns = site._modules | where: "slug", "sns" | first %}

<div id="portal-login"></div>

<div class="menu-social-menu sticky-hide-md">
    <ul class="menu">
        {% for item in sns.sns_list %}
            <li class="leaf {% if forloop.first == true %}first{% endif %}">
                <a href="{{ item.link_txt }}" title="{{item.tag_txt}}-one" class="link-social link-{{ item.tag_txt }}">
                    {{ item.text_txt }}
                </a>
            </li>
        {% endfor %}
    </ul>
</div>