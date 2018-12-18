{% assign footer = site._modules | where:"slug", "footer" | first %}
<footer class="site-footer">
    <div class="section footer-wrapper">
        <div class="container">
            <div class="footer-highlight-container">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 footer-title-container">
                            <h2 class="sr-only">{{footer.title}}-footer-h2</h2>
                            <h3 class="footer-title">{{footer.title}}</h3>
                        </div>
                        <div class="col-xs-12 footer-detail-container">
                            <p class="footer-detail">{{footer.subtitle_txt}}</p>
                        </div>
                        <div class="col-sm-10 col-sm-offset-1 col-xs-12 footer-content-links-container">
                            {% for item in footer.button_list %}
                            <div class="footer-email">
                                <a class="btn btn-primary text-uppercase arrow-right-white btn-email" href="{{item.link_txt}}"><span>{{item.button_txt}}</span></a>
                            </div>
                           {% endfor %}
                            <div class="footer-social">
                                <div class="footer-social-label">
                                    <span>Follow us:</span>
                                </div>
                                <div id="follow-us-footer">
                                    {% include site/news_social_media.inc %}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row footer-footer">
                <div class="footer-copyright-wrapper">
                    <span class="footer-copyright">
                        {{footer.copyright_txt}}
                    </span>
                </div>
                <div class="footer-links-wrapper">
                    <ul class="footer-links">
                        {% for item in footer.lowerFooterLinks_list %}
                        <li>
                            <a class="footer-link" title="{{item.button_txt}}-link" href="{{item.link_txt}}" >{{item.button_txt}}</a>
                        </li>
                       {% endfor %}
                    </ul>
                </div>
            </div>
        </div>
        <div class="container footer-background"></div>
    </div>
</footer>