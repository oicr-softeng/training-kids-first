{% assign twit = site._modules | where:"slug", "twitter_box" | first %}
<div id="twitter-posts" class="col-lg-12 col-sm-6 col-xs-12 card-container twitter-card-container mobile-full-card-container">
    <div class="card-box twitter-card mobile-full-card">
        <div class="card-box-header twitter-header">
            <h3 class="twitter-card-title">{{twit.title}}</h3>
            <p class="twitter-account">{{twit.conjunction_txt}} <a href="{{twit.link_txt}}" class="twitter-link">{{twit.twitterLink_txt}}</a></p>
            <button class="btn btn-link twitter-popover" type="button"  data-toggle="popover" data-placement="bottom" data-content="{{ twit.description_txt }}">
                <span class="glyphicon glyphicon-info-sign"></span>
            </button>
        </div>
        <div class="card-box-content">
            <div id="react-twitter-insert"></div>
        </div>
    </div>
</div>