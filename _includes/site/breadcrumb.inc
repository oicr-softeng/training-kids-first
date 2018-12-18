{% assign nav = site._modules | where:"slug", "nav" | first %}
<div class="section breadcrumb-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="breadcrumb-list">
                    <li class="breadcrumb-item">
                        <a class="breadcrumb-link" href="/">
                            <span class="breadcrumb-label">Home</span>
                        </a>
                    </li>
                    {% assign found = false %}
                    {% if page.layout == 'news' %}
                        <li class="breadcrumb-item">
                            <a class="breadcrumb-link" href="/news/">
                                <span class="breadcrumb-label">News & Events</span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">
                            <span class="breadcrumb-label breadcrumb-current">{{ page.title }}</span>
                        </li>
                        {% assign found = true %}
                    {% else %}
                        {% for item in nav.nav_list %}
                            {% if page.permalink == item.link_txt %}
                                <li class="breadcrumb-item">
                                    <span class="breadcrumb-label breadcrumb-current">{{ item.title_txt }}</span>
                                </li>
                                {% assign found = true %}
                            {% else %}
                                {% if item.dropdown_list %}
                                    {% assign links = item.dropdown_list | map: 'link_txt' %}
                                    {% for drop in item.dropdown_list %}
                                        {% if page.permalink == drop.link_txt %}
                                            <li class="breadcrumb-item">
                                                <a class="breadcrumb-link" href="{{ item.link_txt }}">
                                                    <span class="breadcrumb-label">{{ item.title_txt }}</span>
                                                </a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <span class="breadcrumb-label breadcrumb-current">{{ drop.title_txt }}</span>
                                            </li>
                                            {% assign found = true %}
                                        {% endif %}
                                    {% endfor %}
                                {% endif %}
                            {% endif %}
                        {% endfor %}
                    {% endif %}
                    {% unless found %}
                        <li class="breadcrumb-item">
                            <span class="breadcrumb-label breadcrumb-current">{{ page.title }}</span>
                        </li>
                    {% endunless %}
                </ul>
            </div>
        </div>
    </div>
</div>