import React from 'react';
import PropTypes from 'prop-types';

import { FormattedMessage, FormattedDate } from 'react-intl';

class SpotlightCard extends React.PureComponent {
    render() {
        const {
            item: { category, spotlight, permalink, thumbnail, teaser, releaseDate, title, page },
        } = this.props;

        return (
            <div
                className={`card-box news-card-box spotlight-card ${spotlight}-spotlight-card`}
                data-category={category}
                data-page={page}
            >
                <div className="card-box-header spotlight-header">
                    <h3 className="spotlight-title text-capitalize">
                        {spotlight} {category}
                    </h3>
                </div>
                <div className="card-box-header spotlight-thumbnail-header">
                    <div className="news-thumbnail-container spotlight-thumbnail">
                        <a href={permalink} className="news-image-link">
                            <img
                                src={thumbnail || '/assets/site/images/icon-kids-first.png'}
                                className={`news-thumbnail ${thumbnail ? '' : 'news-thumbnail-default'}`}
                                role="presentation"
                            />
                        </a>
                    </div>
                </div>
                <div className="card-box-content news-card-content">
                    <div className="news-card-details">
                        <span className="news-details-date">
                            <FormattedDate
                                value={releaseDate || new Date()}
                                year="numeric"
                                month="long"
                            />
                        </span>
                        <h3 className="spotlight-title">{title}</h3>
                        {teaser &&
                            teaser.affiliation_txt && (
                                <p className="investigator-affiliation">
                                    {teaser.affiliation_txt}
                                </p>
                            )}
                        {teaser && teaser.headline_txt && <p>{teaser.headline_txt}</p>}
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

SpotlightCard.propTypes = {
    item: PropTypes.shape({
        category: PropTypes.string,
        categoryIndexer: PropTypes.number,
        permalink: PropTypes.string,
        title: PropTypes.string,
        page: PropTypes.number,
    }),
};

export default SpotlightCard;
