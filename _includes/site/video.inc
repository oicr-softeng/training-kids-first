{% if include.video %}
    {% assign video = include.video %}
{% elsif include.filePath %}
    {% assign video = site._video | where: "path", include.filePath | first %}
{% else %}
    {% assign video = site._video | where: "slug", include.fileSlug | first %}
{% endif %}

{% if include.wrapper or video.headlineCaption_txt and video.headlineCaption_txt != '' %}
    <div class="{{ include.wrapper }}">
        <div class="video-wrapper">
            <iframe title="{{ video.title }}" width="560" height="349" src="https://www.youtube.com/embed/{{ video.videoId_txt }}" frameborder="0" allowfullscreen></iframe>
        </div>
        {% if video.headlineCaption_txt and video.headlineCaption_txt!= '' %}
            <div class="video-caption">
                {{ video.headlineCaption_txt | markdownify }}
            </div>
        {% endif %}
    </div>
{% else %}
    <div class="video-wrapper">
        <iframe title="{{ video.title }}" width="560" height="349" src="https://www.youtube.com/embed/{{ video.videoId_txt }}" frameborder="0" allowfullscreen></iframe>
    </div>
{% endif %}
