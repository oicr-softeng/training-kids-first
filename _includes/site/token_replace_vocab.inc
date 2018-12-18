{% assign c = include.content %}

{% comment %}
    This module replace token with tooltip.
{% endcomment %}

{% assign c_list = c | split: '[[' %}
{% for tok in c_list %}
    {% if forloop.index > 1 %}
        {% assign temp = tok | split: ']]((' %}
        {% if temp.size > 1 %}
            {% assign voc = temp[0] %}
            {% if temp[1] contains '))' %}
                {% assign temp2 = temp[1] | split: '))' %}
                {% assign defi = temp2[0] %}
                {% capture token %}[[{{ voc }}]](({{ defi }})){% endcapture %}
                {% capture tooltip %}<a class="vocab-tooltip" data-toggle="tooltip" data-placement="bottom" data-html="true" data-trigger="hover focus" data-original-title="{{ defi | markdownify }}">{{ voc }}</a>{% endcapture %}
                {% assign c = c | replace: token, tooltip %}
            {% endif %}
        {% endif %}
    {% endif %}
{% endfor %}

{{ c }}

