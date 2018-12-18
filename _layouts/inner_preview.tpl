---
layout: default
---
<main>
    {% include site/breadcrumb.inc %}
    {% if page.layout != 'news' %}{% include site/inner_title.inc %}{% endif %}
    <div class="main-content gradient-border-top-default">
        {{ content }}
    </div>
</main>