import React from 'react';
import PropTypes from 'prop-types';
import { TwitterFeed } from 'wfui-react';

class TwitterCard extends React.PureComponent {
    render() {
        const { indx, intl } = this.props;

        return (
            <div
                className="card-box news-card-box"
                id="twitter-news-card"
                data-category="twitter"
                data-page={1}
            >
                <div className="card-box-header twitter-header">
                    <h3 className="twitter-card-title">
                        {intl.formatMessage({ id: `category_list.${indx}.value_txt` })}
                    </h3>
                    <p className="twitter-account">
                        {intl.formatMessage({ id: `category_list.${indx}.conjunction_txt` })}
                        <a
                            href={`https://twitter.com/${intl.formatMessage({
                                id: `category_list.${indx}.account_txt`,
                            })}`}
                            className="twitter-link"
                            rel="nofollow noopener noreferrer"
                            target="_blank"
                        >
                            {intl.formatMessage({ id: `category_list.${indx}.account_txt` })}
                        </a>
                    </p>
                </div>
                <div className="twitter-box">
                    <div id="react-twitter-insert">
                        <TwitterFeed twitterAccount="kidsfirstDRC" width="100%" limit="4" />
                    </div>
                </div>
            </div>
        );
    }
}

TwitterCard.propTypes = {
    indx: PropTypes.number,
    intl: PropTypes.object,
};

export default TwitterCard;
