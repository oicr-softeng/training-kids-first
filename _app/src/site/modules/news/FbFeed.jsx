/* global document, FB, window, $ */
import React from 'react';

class FbFeed extends React.Component {
    constructor(props) {
        super(props);

        this.changeFBPagePlugin = this.changeFBPagePlugin.bind(this);
    }

    componentDidMount() {
        if (!document.getElementById('facebook-jssdk')) {
            const js = document.createElement('script');
            const fjs = document.getElementsByTagName('script')[0];
            js.id = 'facebook-jssdk';
            js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0';
            fjs.parentNode.insertBefore(js, fjs);
        }

        setTimeout(() => {
            this.changeFBPagePlugin();
            $(window).resize(this.changeFBPagePlugin);
        }, 1500);
    }

    changeFBPagePlugin() {
        const containerWidth = Math.min(Number($('.fb-box').width()).toFixed(0), 500);
        const containerHeight = Number($('.fb-box').height()).toFixed(0);
        if (!isNaN(containerWidth) && !isNaN(containerHeight)) {
            $('.fb-page')
                .attr('data-width', containerWidth)
                .attr('data-height', containerHeight);
        }
        if (typeof FB !== 'undefined') {
            FB.XFBML.parse();
        }
    }

    render() {
        return (
            <div className="card-box news-card-box" data-category="facebook" data-page={1}>
                <div className="fb-box">
                    <div
                        className="fb-page"
                        data-href="https://www.facebook.com/kidsfirstdrc"
                        data-tabs="timeline"
                        data-width="500"
                        data-small-header="true"
                        data-adapt-container-width="true"
                        data-hide-cover="false"
                        data-show-facepile="false"
                    >
                        <blockquote
                            cite="https://www.facebook.com/kidsfirstdrc"
                            className="fb-xfbml-parse-ignore"
                        >
                            <a href="https://www.facebook.com/kidsfirstdrc">Kids First DRC</a>
                        </blockquote>
                    </div>
                </div>
            </div>
        );
    }
}

FbFeed.propTypes = {};

FbFeed.defaultProps = {};

export default FbFeed;
