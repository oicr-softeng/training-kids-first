{% assign nav = site._modules | where:"slug", "nav" | first %}
{% assign support_menu = nav.nav_list | where:"title_txt", "Support" | first %}
{% assign counter = 0 %}
{% for item in support_menu.dropdown_list %}
    {% assign item_slug = item.title_txt | downcase | replace: ' ', '-' %}
    {% assign active = false %}
    {% if page.permalink == item.link_txt or page.url == item.link_txt %}
    {% assign active = true %}
    {% endif %}
    <div class="accordion-tab {% if active == true %}accordion-tab-active{% endif %}">
        <div class="tab-heading {% if active == true %}tab-heading-active{% endif %}">
            <h2 class="sr-only">{{item.title_txt}}-header-two</h2>
            <h3 class="sr-only">{{item.title_txt}}-header-three</h3>
            <a class="panel-title {% if active == true %}panel-title-active{% endif %}" {% if active == false %} href="{{ item.link_txt }}" {% else %} data-toggle="collapse" href="#{{ item_slug }}" {% endif %}>
                <h4 class="accordion-toggle {% if active != true %}collapsed{% endif %}">
                    {{ item.title_txt }}
                </h4>
            </a>
        </div>
        <div class="panel-collapse {% if active == true %}collapse in{% endif %}" id="{{ item_slug }}">
            <div class="accordion-body">
            </div>
        </div>
    </div>
{% endfor %}
