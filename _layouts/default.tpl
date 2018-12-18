<!DOCTYPE html>
<html lang="{{ page.lang | default: site.lang | default: "en" }}">
<head>
{% include site/head.inc %}
</head>
<body class="page-default {% if page.layout %}page-{{ page.layout }}{% endif %} {% if page.category %} category-{{ page.category }}{% endif %}{% if page.classname %} post-{{ page.classname }}{% endif %} {{ page.title | downcase | replace:' ','-' | replace:',','' | strip_html }}">
    {% include site/nav.inc %}
    <div id="editButton" data-path="{{ page.path }}" data-is-public="{{ page.isPublic_b }}"></div>
    {{ content }}
    {% include site/back_to_top.inc %}
    {% include site/footer.inc %}
    {% include core/footer_scripts.inc %}
    {% include dist/footer_scripts.inc %}
    {% include site/footer_scripts.inc %}
</body>
</html>