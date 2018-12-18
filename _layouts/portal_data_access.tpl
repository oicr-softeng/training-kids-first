--- 
layout: inner_preview 
---

<div class="data-tab section">
   <div class="container">
       <div class="row tab-wrapper">
           <div class="col-sm-4 col-xs-12 tab-item">
               <a href="/portal/data-access/" class="btn-filter active">Data Access</a>
           </div>
           <div class="col-sm-4 col-xs-12 tab-item">
               <a href="/portal/searching-and-downloading/" class="btn-filter">Searching and Downloading</a>
           </div>
           <div class="col-sm-4 col-xs-12 tab-item">
               <a href="/portal/integrations/" class="btn-filter">Integrations</a>
           </div>      
       </div>
   </div>
</div>
<div class="tab-content">
   <div id="dataAccess" class="tab-pane fade in active">
       <div class="container dotted-border-bottom">
           <h2>{{page.dataAccess_list[0].title_txt}}</h2>
           <div class="row">
               <div class="col-lg-6 col-xs-12">
                   <p>{{page.dataAccess_list[0].subtitle_txt}}</p>
               </div>
           </div>
           <div class="row">
               <div class="col-lg-6 col-xs-12">
                   <ol>
                       {% for item in page.dataAccessTier_list %}
                       <li>
                           <h3>{{ item.title_txt }}</h3>
                           <p>{{ item.content_txt }}</p>
                       </li>
                       {% endfor %}
                   </ol>
                   <a href="{{page.dataAccess_list[0].link_txt}}" class="btn btn-primary arrow-right-white documentation-button">{{page.dataAccess_list[0].button_txt}}</a>
               </div>
               <div class="col-lg-6 col-xs-12">
                   <div class="access-tier-wrapper">
                       {% assign img = page.dataAccess_list[0].img_txt %}
                       {% include site/image.inc filePath=img className="access-tier-image" %}
                   </div>
               </div>
           </div>
       </div>
   </div>
   {% include site/callouts.inc filePath="login_registration_callouts" %}
</div>