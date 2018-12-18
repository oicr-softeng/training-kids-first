<div class="section inner-title-section">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                {% if page.bannerSentence_txt %}
                    <h1 class="page-title-sentence">{{ page.bannerSentence_txt}}</h1>
                {% else %}
                    <h1 class="page-title">
                        {% if page.bannerTitle_txt %}
                            {{ page.bannerTitle_txt }}
                        {% else %}
                            {{ page.title }}
                        {% endif %}
                    </h1>
                {% endif %}
                {% if page.slug == 'portal' or page.slug == 'portal_data_features' or page.slug == 'portal_about_research' or page.slug == 'portal_harmonization' %}
                    <div class="header-portal-summary">
                        {% include site/portal_summary.inc %}
                    </div>
                {% endif %}

                {% if page.pageType_txt == 'support' %}
                    <!-- <div id="support-search-bar" class="support-search">
                        <form class="form-inline" id="kidsfirst-support-search">
                            <div class="form-group input-with-clear">
                                <label class="sr-only" for="kidsfirst-support-search-keywords"></label>
                                <input type="text" class="form-control" id="kidsfirst-support-search-keywords" placeholder="{{nav.searchBar_txt}}">
                                <span class="input-clear glyphicon glyphicon-remove hide"></span>
                            </div>
                        </form>
                    </div> -->
                {% endif %}
            </div>
        </div>
    </div>
</div>