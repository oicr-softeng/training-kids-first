--- 
layout: inner_preview 
---
<div class="partners-working-group">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-xs-12 text-center">
                    <h2>{{page.title_txt}}</h2>
                    <p>{{page.subtitle_txt}}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 text-center working-group-header header-bottom-border">
                    <div class="header-body">
                        {{page.institutionsTitle_txt}}
                    </div>
                </div>
                <div class="col-xs-12 text-center">
                    <p>{{page.institutionsSubtitle_txt}}</p>
                </div>
            </div>
            <!-- <div class="row card-grid group-card-container">
                {% assign institutions = site._partners | where: "type_txt", "working-groups" | where: "workingGroupCategory_txt", "institutions" %}

                {% for group in institutions %}
                <div class="col-md-3 col-sm-6 col-xs-12 card-container card-with-icon-container mobile-full-card-container">
                    <div class="card-box mobile-full-card">
                        <div class="card-box-header">
                            <div class="group-logo-container">
                                <a href="{{ group.link_txt }}" class="group-logo-link">
                                    <span class="sr-only">{{ group.title_txt }}</span>
                                    <img src="{{group.img_txt}}" class="group-logo" role="presentation">
                                </a>
                            </div>
                        </div>
                        <div class="card-box-content">
                            <a href="{{group.link_txt}}" class="group-name">
                                {{group.title_txt}}
                            </a>
                            <p class="group-description">
                                {{group.content}}
                            </p>
                        </div>
                    </div>
                </div>
                {% endfor %}
            </div> -->
            <div id="icon-card-isotope" class="row card-grid">
                {% assign institutions = site._partners | where: "type_txt", "working-groups" | where: "workingGroupCategory_txt", "institutions" | sort: 'order' %}
                {% for group in institutions %}
                    <div class="col-md-3 col-sm-6 col-xs-12 card-container working-members-card-container card-with-icon-container card-icon-overlap-container mobile-full-card-container">
                        <div class="card-box card-with-icon mobile-full-card">
                            <div class="card-content-container working-group-card-link">
                                <a href="{{group.link_txt}}" class="group-name {{group.tag_txt}}"><h3 class="{{group.tag_txt}}">{{group.title_txt}}</h3></a>
                            </div>
                            <div class="card-box-content">
                                {{group.content}}
                            </div>
                        </div>
                    </div>
                {% endfor %}
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="row group-list-container">
                <div class="col-xs-12 list-header">
                    <h3>{{page.institutionOtherContentTitle_txt}}</h3>
                </div>
                    {% assign institutionsOther = site._partners | where: "type_txt", "working-groups" | where: "workingGroupCategory_txt", "institutionsOther" %}
                    {% assign count = 0 %}
                    {% assign numberOfInstitutions = institutionsOther | size %}
                    {% assign numberOfInstitutions = numberOfInstitutions | minus: 1 %}
                    {% for group in institutionsOther %}
                    {% assign remainder = count | modulo: 6 %}
                    {% if remainder == 0 %}
                    <div class="col-md-6 col-xs-12 link-list">
                    <ul>
                        <li>
                            <a href="{{group.link_txt}}">{{group.title_txt}}</a>
                        </li>
                        {% if count == numberOfInstitutions %}
                        </ul>
                    </div>
                    {% endif %}
                    {% assign count = count | plus:1 %}
                    {% elsif remainder == 5 or count == numberOfInstitutions %}
                        <li>
                            <a href="{{group.link_txt}}">{{group.title_txt}}</a>
                        </li>
                        </ul>
                    </div>
                    {% assign count = count | plus:1 %}
                    {% else %}
                        <li>
                            <a href="{{group.link_txt}}">{{group.title_txt}}</a>
                        </li>
                    {% assign count = count | plus:1 %}
                    {%endif%}
                    {%endfor%}
                    
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center working-group-header">
                    <div class="header-body">
                        {{page.coChairsTitle_txt}}
                    </div>
                </div>
            </div>

            <div class="row row-eq-height group-row">
                {% assign coChairs = site._partners | where: "type_txt", "working-groups" | where: "workingGroupCategory_txt", "coChairs" %}
                {% for group in coChairs %}
                {% if group.email_txt != "" %}       
                <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                    <div class="group-member-body">
                            <h3><a class="group-member-mail" href="mailto:{{group.email_txt}}">{{group.name_txt}}, [C]</a></h3>
                        <p>
                            <span class="subtitle-accent">{{group.primaryRole_txt}}</span>
                            {%if group.secondaryRole_txt != "" %}
                            <br>{{group.secondaryRole_txt}}
                            {% endif %}
                            {%if group.division_txt != "" %}
                            <br>{{group.division_txt}}
                            {%endif%}
                            <br>{{group.organization_txt}}
                        </p>
                    </div>
                </div>
                {%else%}
                <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                    <div class="group-member-body">
                            <h3>{{group.name_txt}}</h3>
                        <p>
                            <span class="subtitle-accent">{{group.primaryRole_txt}}</span>
                            {%if group.secondaryRole_txt != "" %}
                            <br>{{group.secondaryRole_txt}}
                            {% endif %}
                            {%if group.division_txt != "" %}
                            <br>{{group.division_txt}}
                            {%endif%}
                            <br>{{group.organization_txt}}
                        </p>
                    </div>
                    </div>
                    {%endif%}
                {% endfor %}
            </div>

            <div class="row">
                <div class="col-xs-12 text-center working-group-header">
                    <div class="header-body">
                        {{page.leadershipGroupTitle_txt}}
                    </div>
                </div>
            </div>
            <div class="row row-eq-height group-row">
                {% assign leadershipGroup = site._partners | where: "type_txt", "working-groups" | where: "workingGroupCategory_txt", "leadershipGroup" %}
                {% for group in leadershipGroup %}
                {% if group.email_txt != "" %}       
                <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                    <div class="group-member-body">
                            <h3><a class="group-member-mail" href="mailto:{{group.email_txt}}">{{group.name_txt}}, [C]</a></h3>
                        <p>
                                <span class="subtitle-accent">{{ group.primaryRole_txt}}</span>
                                {%if group.secondaryRole_txt != "" %}
                                <br>{{group.secondaryRole_txt}}
                                {% endif %}
                                {%if group.division_txt != "" %}
                                <br>{{group.division_txt}}
                                {% endif %}
                                <br>{{group.organization_txt}}
                            </p>
                    </div>
                </div>
                {%else%}
                <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                    <div class="group-member-body">
                        <h3>{{group.name_txt}}</h3>
                        <p>
                                <span class="subtitle-accent">{{group.primaryRole_txt}}</span>
                                {%if group.secondaryRole_txt != "" %}
                                <br>{{group.secondaryRole_txt}}
                                {% endif %}
                                {%if group.division_txt != "" %}
                                <br>{{group.division_txt}}
                                {% endif %}
                                <br>{{group.organization_txt}}
                            </p>
                    </div>
                </div>
                {%endif%}
                {% endfor %}
            </div>

            <div class="row">
                <div class="col-xs-12 text-center working-group-header">
                    <div class="header-body">
                        {{page.nihGroupTitle_txt}}
                    </div>
                </div>
            </div>
            <div class="row row-eq-height group-row">
                {% assign nihGroup = site._partners | where: "type_txt", "working-groups" | where: "workingGroupCategory_txt", "nihGroup" %}
                {% for group in nihGroup %}
                {% if group.email_txt != "" %}       
                <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                    <div class="group-member-body">
                            <h3><a class="group-member-mail" href="mailto:{{group.email_txt}}">{{group.name_txt}}, [C]</a></h3>
                        <p>
                                <span class="subtitle-accent">{{ group.primaryRole_txt}}</span>
                                {%if group.secondaryRole_txt != "" %}
                                <br>{{group.secondaryRole_txt}}
                                {% endif %}
                                {%if group.division_txt != "" %}
                                <br>{{group.division_txt}}
                                {% endif %}
                                <br>{{group.organization_txt}}
                            </p>
                    </div>
                </div>
                {%else%}
                <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                    <div class="group-member-body">
                        <h3>{{group.name_txt}}</h3>
                        <p>
                                <span class="subtitle-accent">{{group.primaryRole_txt}}</span>
                                {%if group.secondaryRole_txt != "" %}
                                <br>{{group.secondaryRole_txt}}
                                {% endif %}
                                {%if group.division_txt != "" %}
                                <br>{{group.division_txt}}
                                {% endif %}
                                <br>{{group.organization_txt}}
                            </p>
                    </div>
                </div>
                {%endif%}
                {% endfor %}
            </div>

            <div class="row">
                <div class="col-xs-12 text-center working-group-header">
                    <div class="header-body">
                        {{page.membersTitle_txt}}
                    </div>
                </div>
            </div>
            <div class="row row-eq-height group-row">
                {% assign members = site._partners | where: "type_txt", "working-groups" | where: "workingGroupCategory_txt", "members" %}
                {% for group in members %}
                {% if group.email_txt != "" %}       
                <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                    <div class="group-member-body">
                            <h3><a class="group-member-mail" href="mailto:{{group.email_txt}}">{{group.name_txt}}, [C]</a></h3>
                        <p>
                                <span class="subtitle-accent">{{group.primaryRole_txt}}</span>
                                {%if group.secondaryRole_txt != "" %}
                                <br>{{group.secondaryRole_txt}}
                                {% endif %}
                                {%if group.division_txt != "" %}
                                <br>{{group.division_txt}}
                                {% endif %}
                                <br>{{group.organization_txt}}
                            </p>
                    </div>
                </div>
                {%else%}
                <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                    <div class="group-member-body">
                        <h3>{{group.name_txt}}</h3>
                        <p>
                                <span class="subtitle-accent">{{group.primaryRole_txt}}</span>
                                {%if group.secondaryRole_txt != "" %}
                                <br>{{group.secondaryRole_txt}}
                                {% endif %}
                                {%if group.division_txt != "" %}
                                <br>{{group.division_txt}}
                                {% endif %}
                                <br>{{group.organization_txt}}
                            </p>
                    </div>
                </div>
                {%endif%}
                {% endfor %}
            </div>

            <div class="row">
                <div class="col-xs-12 text-center working-group-header">
                    <div class="header-body">
                        {{page.exOfficioTitle_txt}}
                    </div>
                </div>
            </div>
            <div class="row row-eq-height group-row">
                {% assign exOfficio = site._partners | where: "type_txt", "working-groups" | where: "workingGroupCategory_txt", "exOfficio" %}
                {% for group in exOfficio %}
                    {% if group.email_txt != "" %}
                    <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                        <div class="group-member-body">
                            <h3><a class="group-member-mail" href="mailto:{{group.email_txt}}">{{group.name_txt}}, [C]</a></h3>
                            <p>
                                    <span class="subtitle-accent">{{group.primaryRole_txt}}</span>
                                    {%if group.secondaryRole_txt != "" %}
                                    <br>{{group.secondaryRole_txt}}
                                    {% endif %}
                                    {%if group.division_txt != "" %}
                                    <br>{{group.division_txt}}
                                    {% endif %}
                                    <br>{{group.organization_txt}}
                                </p>
                        </div>
                    </div>
                    {%else%}
                    <div class="col-md-3 col-sm-6 col-xs-12 group-member-container">
                        <div class="group-member-body">
                            <h3>{{group.name_txt}}</h3>
                            <p>
                                    <span class="subtitle-accent">{{group.primaryRole_txt}}</span>
                                    {%if group.secondaryRole_txt != "" %}
                                    <br>{{group.secondaryRole_txt}}
                                    {% endif %}
                                    {%if group.division_txt != "" %}
                                    <br>{{group.division_txt}}
                                    {% endif %}
                                    <br>{{group.organization_txt}}
                                    
                                </p>
                        </div>
                    </div>
                    {%endif%}
                {% endfor %}
            </div>
            
        </div>
    </div>
</div>
