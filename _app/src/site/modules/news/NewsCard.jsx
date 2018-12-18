import React from 'react';
import PropTypes from 'prop-types';

import { FormattedMessage, FormattedDate } from 'react-intl';

class NewsCard extends React.PureComponent {
    render() {
        const {
            item: {
                category,
                categoryIndexer,
                permalink,
                thumbnail,
                teaser,
                releaseDate,
                title,
                page,
            },
        } = this.props;

        return (
            <div className="card-box news-card-box" data-category={category} data-page={page}>
                <div className="card-box-header">
                    <div className="news-thumbnail-container">
                        <a href={permalink} className="news-image-link">
                            <img
                                src={thumbnail || '/assets/site/images/icon-kids-first.png'}
                                className={`news-thumbnail ${
                                    thumbnail ? '' : 'news-thumbnail-default'
                                }`}
                                role="presentation"
                            />
                        </a>
                    </div>
                </div>
                <div className="card-box-content news-card-content">
                    <div className="icon-news-type-container">
                        <span className={`icon-news-type icon-${category}`} />
                        <div className="news-type-txt">
                            <FormattedMessage
                                id={`category_list.${categoryIndexer || 0}.value_txt`}
                            />
                        </div>
                    </div>
                    <div className="news-card-details">
                        <span className="news-details-date">
                            <FormattedDate
                                value={releaseDate || new Date()}
                                year="numeric"
                                month="long"
                                day="numeric"
                            />
                        </span>
                        <h3 className="news-details-title">
                            <a href={permalink}>{title}</a>
                        </h3>
                        {teaser && <p className="news-details-desc">{teaser.headline_txt}</p>}
                        <a className="news-read-more" href={permalink}>
                            <FormattedMessage
                                id="labels_list.readMore_txt"
                                defaultMessage="Read More"
                            />
                        </a>
                    </div>
                </div>
            </div>
        );
    }
}

NewsCard.propTypes = {
    item: PropTypes.shape({
        category: PropTypes.string,
        categoryIndexer: PropTypes.number,
        permalink: PropTypes.string,
        title: PropTypes.string,
        page: PropTypes.number,
    }),
};

export default NewsCard;
