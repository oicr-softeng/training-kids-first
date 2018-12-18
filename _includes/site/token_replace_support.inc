{% assign c = include.content %}

{% comment %}
    This module replace token with image collection.
{% endcomment %}

{% for item in site._images %}
    {% capture token %}[IMAGE{{ item.path }}]{% endcapture %}
    {% capture img %}{% include site/image.inc image=item wrapper="full-width" modal=true %}{% endcapture %}
    {% assign c = c | replace: token, img %}

    {% capture token %}[IMAGE_CENTER{{ item.path }}]{% endcapture %}
    {% capture img %}{% include site/image.inc image=item wrapper="img-center-wrapper" %}{% endcapture %}
    {% assign c = c | replace: token, img %}

    {% comment %}Float RIGHT Image{% endcomment %}
    {% capture token %}[IMAGE_RIGHT{{ item.path }}]{% endcapture %}
    {% capture img %}{% include site/image.inc image=item wrapper="image-float-right" modal=true %}{% endcapture %}
    {% assign c = c | replace: token, img %}

    {% comment %}Float LEFT Image{% endcomment %}
    {% capture token %}[IMAGE_LEFT{{ item.path }}]{% endcapture %}
    {% capture img %}{% include site/image.inc image=item wrapper="image-float-left" modal=true %}{% endcapture %}
    {% assign c = c | replace: token, img %}
{% endfor %}

{% for item in site._weblinks %}
    {% capture token %}[LINK{{ item.path }}]{% endcapture %}
    {% capture weblink %}{% include core/weblink.inc weblink=item %}{% endcapture %}
    {% assign c = c | replace: token, weblink %}
{% endfor %}

{% for item in site._videos %}
    {% capture token %}[VIDEO{{ item.path }}]{% endcapture %}
    {% capture vid %}{% include site/video.inc video=item wrapper="full-width" %}{% endcapture %}
    {% assign c = c | replace: token, vid %}

    {% capture token %}[VIDEO_{{ item.videoId_txt }}]{% endcapture %}
    {% capture vid %}{% include site/video.inc video=item wrapper="full-width" %}{% endcapture %}
    {% assign c = c | replace: token, vid %}
{% endfor %}

{% capture tokenStart %}[NOTE_START]{% endcapture %}
{% capture noteStart %} <div class="note-container"><div class="note-text"><p>{% endcapture %}
{% capture tokenEnd %}[NOTE_END]{% endcapture %}  
{% capture noteEnd %}</p></div></div> {% endcapture %}  
{% assign c = c | replace: tokenStart, noteStart | replace: tokenEnd, noteEnd %}

{% capture tokenStart %}[WARNING_START]{% endcapture %}
{% capture warningStart %} <div class="warning-container"><div class="warning-text"><p>{% endcapture %}
{% capture tokenEnd %}[WARNING_END]{% endcapture %}  
{% capture warningEnd %}</p></div></div> {% endcapture %}  
{% assign c = c | replace: tokenStart, warningStart | replace: tokenEnd, warningEnd %}

{{ c | normalize_whitespace | remove: '<p> ' | remove: ' </p>'}}