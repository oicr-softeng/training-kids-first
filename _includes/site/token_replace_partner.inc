{% assign c = include.content %}

{% comment %}
    This module replace token with image collection.
{% endcomment %}

{% for item in site._images %}
    {% capture token %}[IMAGE{{ item.path }}]{% endcapture %}
    {% capture img %}{% include site/image.inc image=item wrapper="modal-partners-logo pull-right" %}{% endcapture %}
    {% assign c = c | replace: token, img %}
{% endfor %}

{{ c  | normalize_whitespace | remove: '<p> ' | remove: ' </p>'}}