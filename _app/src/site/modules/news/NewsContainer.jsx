/* global window, document */
import React from 'react';
import { locationShape } from 'react-router';
import PropTypes from 'prop-types';
import { FilterItem, FilterFields, IsotopeGrid, LoadingComponent } from 'wfui-react';
import { connect } from 'react-redux';
import { injectIntl, FormattedMessage } from 'react-intl';
import { fetchSelector } from 'wfui-react/lib/util';
import { changeFilter } from 'wfui-react/lib/util/visibilityFilter';
import _ from 'lodash';

import NewsCard from './NewsCard';
import TwitterCard from './TwitterCard';
import SpotlightCard from './SpotlightCard';

import * as Const from '../../constants/news';
import { getImages } from '../../actions';
import { newsSelector } from './selectors';

import FbFeed from './FbFeed';

const { renderTextFilter } = FilterFields;

class NewsContainer extends React.Component {
    constructor() {
        super();
        this.state = { numOfItems: 0 };
        this.onHandleFilterClick = this.onHandleFilterClick.bind(this);
        this.onChangePage = this.onChangePage.bind(this);
    }

    componentWillMount() {
        const {
            location: { query },
        } = this.props;

        const newFilter = [];

        if (query.filter) {
            newFilter.push({
                key: 'filter',
                value: query.filter || '',
            });
        }

        newFilter.push({
            key: 'page',
            value: query.page || 1,
        });

        this.props.changeFilter(newFilter);
    }

    componentWillReceiveProps(nextProps) {
        const {
            location: { query },
            news,
            newsImages,
        } = this.props;

        if (query.filter && !nextProps.location.query.filter) {
            this.props.changeFilter([
                {
                    key: 'filter',
                    value: '',
                },
                {
                    key: 'page',
                    value: nextProps.location.query.page || 1,
                },
            ]);
        } else if (nextProps.location.query.filter !== query.filter) {
            this.props.changeFilter([
                {
                    key: 'filter',
                    value: decodeURI(nextProps.location.query.filter),
                },
                {
                    key: 'page',
                    value: nextProps.location.query.page || 1,
                },
            ]);
        } else if (
            (query.page && !nextProps.location.query.page) ||
            nextProps.location.query.searchTerm !== query.searchTerm
        ) {
            this.props.changeFilter([
                {
                    key: 'page',
                    value: 1,
                },
            ]);
        } else if (
            query.page &&
            nextProps.location.query.page &&
            nextProps.location.query.page !== query.page
        ) {
            this.props.changeFilter([
                {
                    key: 'page',
                    value: nextProps.location.query.page,
                },
            ]);
        }

        if (JSON.stringify(news) !== JSON.stringify(nextProps.news)) {
            const paths = nextProps.news
                .filter(
                    p =>
                        p &&
                        p.teaser &&
                        p.teaser.thumbnail_txt &&
                        !newsImages[p.teaser.thumbnail_txt],
                )
                .map(p => p.teaser.thumbnail_txt);
            if (paths && paths.length > 0) nextProps.getImages(paths);
        }
    }

    onHandleFilterClick(e) {
        e.preventDefault();
        this.props.changeFilter([
            {
                key: 'filter',
                value: e.target.getAttribute('data-value'),
            },
            {
                key: 'page',
                value: 1,
            },
        ]);
    }

    onChangePage(e) {
        e.preventDefault();
        this.props.changeFilter([
            {
                key: 'page',
                value: e.target.getAttribute('data-value'),
            },
        ]);
        window.scrollBy(
            0,
            document.getElementById('news-filter').getBoundingClientRect().top -
                document.getElementById('navigation').getBoundingClientRect().height,
        );
    }

    getFilters() {
        const { page } = this.props.visibilityFilter.category;
        return [
            (item, props) =>
                item.querySelector('.news-card-box') &&
                Number(item.querySelector('.news-card-box').dataset.page) ===
                    Number(props.category.page || 1),
        ];
    }

    generateFilterUI() {
        const {
            intl,
            visibilityFilter: {
                category: { filter },
            },
        } = this.props;

        return (
            <div id="news-filter" className="section">
                <div className="container">
                    <div className="row filter-wrapper">
                        <div className="col-lg-3 col-sm-6 filter-item">
                            <button
                                className={`btn-filter ${filter ? '' : 'active'}`}
                                data-value=""
                                onClick={this.onHandleFilterClick}
                            >
                                <span data-value="" className="icon icon-news" />
                                {intl.formatMessage({
                                    id: 'category_list.0.value_txt',
                                    defaultMessage: 'News',
                                })}
                            </button>
                        </div>
                        <div className="col-lg-3 col-sm-6 filter-item">
                            <button
                                className={`btn-filter ${filter === 'events' ? 'active' : ''}`}
                                data-value="events"
                                onClick={this.onHandleFilterClick}
                            >
                                <span data-value="events" className="icon icon-events" />
                                {intl.formatMessage({
                                    id: 'category_list.5.value_txt',
                                    defaultMessage: 'Events',
                                })}
                            </button>
                        </div>
                        <div className="col-lg-3 col-sm-6 filter-item">
                            <button
                                className={`btn-filter ${filter === 'studies' ? 'active' : ''}`}
                                data-value="studies"
                                onClick={this.onHandleFilterClick}
                            >
                                <span data-value="studies" className="icon icon-studies" />
                                {intl.formatMessage({
                                    id: 'category_list.2.value_txt',
                                    defaultMessage: 'Studies',
                                })}
                            </button>
                        </div>
                        <div className="col-lg-3 col-sm-6 filter-item">
                            <button
                                className={`btn-filter ${filter === 'media' ? 'active' : ''}`}
                                data-value="media"
                                onClick={this.onHandleFilterClick}
                            >
                                <span data-value="media" className="icon icon-media" />
                                {intl.formatMessage({
                                    id: 'category_list.4.value_txt',
                                    defaultMessage: 'Media',
                                })}
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
    render() {
        const {
            visibilityFilter: {
                category: { filter, page },
            },
            intl,
            location,
            news,
            fetchNewsImages,
            fetchNews,
            fetchTags,
        } = this.props;
        const { numOfItems } = this.state;

        const countOffset = (page - 1) * Const.ARTICLE_PER_PAGE;

        if (fetchTags.isFetching || fetchTags.status !== 'success') {
            return <LoadingComponent {...fetchTags} />;
        }

        const currentPage = Number(page);
        const maxPage = Math.floor(news.length / Const.ARTICLE_PER_PAGE) + 1;
        const paginations = _.range(
            currentPage > 2 ? currentPage - 2 : 1,
            currentPage + 2 < maxPage ? currentPage + 3 : maxPage + 1,
        );

        return (
            <div>
                {this.generateFilterUI()}
                <LoadingComponent {...fetchNews}>
                    <LoadingComponent {...fetchNewsImages}>
                        <div id="news-summary" className="section">
                            <div className="container">
                                <div className="row summary-wrapper">
                                    <div className="col-lg-9 col-md-7 col-sm-6 col-xs-12 filter-summary">
                                        <h2 className="filter-summary-type">
                                            {intl.formatMessage({
                                                id: `category_list.${
                                                    filter ? Const.CATEGORY_INDEXER[filter] : '0'
                                                }.value_txt`,
                                            })}
                                        </h2>
                                        <div className="filter-summary-showing">
                                            <FormattedMessage
                                                id="labels_list.showing_txt"
                                                defaultMessage="Showing {starting}-{ending} of {total}"
                                                values={{
                                                    starting:
                                                        countOffset + (numOfItems > 0 ? 1 : 0),
                                                    ending: numOfItems + countOffset,
                                                    total: news.length,
                                                }}
                                            />
                                        </div>
                                    </div>
                                    <div
                                        id="filter-search"
                                        className="col-lg-3 col-md-5 col-sm-6 col-xs-12"
                                    >
                                        <div className="wfui-search-container">
                                            <form
                                                id="genomics-search-filter"
                                                className="form-inline webform-search"
                                            >
                                                <FilterItem
                                                    name="searchTerm"
                                                    label={intl.formatMessage({
                                                        id: 'labels_list.search_txt',
                                                        defaultMessage: 'Filter',
                                                    })}
                                                    location={location}
                                                    component={renderTextFilter}
                                                    placeholder={intl.formatMessage({
                                                        id: 'labels_list.searchPlaceholder_txt',
                                                        defaultMessage: 'Filter News',
                                                    })}
                                                />
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="news-article" className="section">
                            <div className="container">
                                {news &&
                                    news.length > 0 && (
                                        <IsotopeGrid
                                            xs={12}
                                            sm={6}
                                            md={6}
                                            lg={4}
                                            id="news-box-isotope"
                                            className="card-grid"
                                            searchTerm={''}
                                            filterList={this.getFilters()}
                                            onArrangeComplete={(items) => {
                                                this.setState({
                                                    numOfItems: items.length,
                                                });
                                            }}
                                        >
                                            {news.map((item, i) => {
                                                if (item.category === 'spotlight') {
                                                    return (
                                                        <IsotopeGrid.Item
                                                            key={i}
                                                            className={`card-container ${
                                                                item.sizer
                                                                    ? ' wfui-isotope-grid-sizer'
                                                                    : ''
                                                            }`}
                                                            item={item}
                                                            itemDisplay={<SpotlightCard />}
                                                            specifySizer
                                                            disableItemStringify
                                                        />
                                                    );
                                                }
                                                if (item.category === 'facebook') {
                                                    return (
                                                        <IsotopeGrid.Item
                                                            key="fbFeed"
                                                            className={`card-container${
                                                                item.sizer
                                                                    ? ' wfui-isotope-grid-sizer'
                                                                    : ''
                                                            }`}
                                                            itemDisplay={<FbFeed />}
                                                            specifySizer
                                                            disableItemStringify
                                                        />
                                                    );
                                                }
                                                if (item.category === 'twitter') {
                                                    return (
                                                        <IsotopeGrid.Item
                                                            key="twitterFeed"
                                                            className={`card-container${
                                                                item.sizer
                                                                    ? ' wfui-isotope-grid-sizer'
                                                                    : ''
                                                            }`}
                                                            itemDisplay={
                                                                <TwitterCard
                                                                    intl={intl}
                                                                    indx={item.categoryIndexer}
                                                                />
                                                            }
                                                            specifySizer
                                                            disableItemStringify
                                                        />
                                                    );
                                                }
                                                return (
                                                    <IsotopeGrid.Item
                                                        className={`card-container${
                                                            item.sizer
                                                                ? ' wfui-isotope-grid-sizer'
                                                                : ''
                                                        }`}
                                                        key={i}
                                                        item={item}
                                                        itemDisplay={<NewsCard />}
                                                        specifySizer
                                                        disableItemStringify
                                                    />
                                                );
                                            })}
                                        </IsotopeGrid>
                                    )}
                            </div>
                        </div>
                        {news.length > Const.ARTICLE_PER_PAGE && (
                            <div className="section">
                                <div className="container">
                                    <div className="row">
                                        <div className="col-xs-12">
                                            <nav aria-label="Page navigation">
                                                <ul className="pagination news-pagination">
                                                    {currentPage > 1 && (
                                                        <li>
                                                            <a
                                                                onClick={this.onChangePage}
                                                                aria-label="First"
                                                                data-value={1}
                                                            >
                                                                <span aria-hidden="true">
                                                                    &laquo;
                                                                </span>
                                                            </a>
                                                        </li>
                                                    )}
                                                    {paginations.map(i => (
                                                        <li
                                                            key={i}
                                                            className={`${
                                                                currentPage === i ? 'active' : ''
                                                            }`}
                                                        >
                                                            <a
                                                                onClick={this.onChangePage}
                                                                data-value={i}
                                                            >
                                                                {i}
                                                            </a>
                                                        </li>
                                                    ))}
                                                    {currentPage < maxPage && (
                                                        <li>
                                                            <a
                                                                onClick={this.onChangePage}
                                                                aria-label="Last"
                                                                data-value={maxPage}
                                                            >
                                                                <span aria-hidden="true">
                                                                    &raquo;
                                                                </span>
                                                            </a>
                                                        </li>
                                                    )}
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        )}
                    </LoadingComponent>
                </LoadingComponent>
            </div>
        );
    }
}

NewsContainer.propTypes = {
    visibilityFilter: PropTypes.object,
    fetchNewsPage: PropTypes.object,
    changeFilter: PropTypes.func,
    intl: PropTypes.object,
    newsImages: PropTypes.object,
    news: PropTypes.arrayOf(PropTypes.object),
    fetchNews: PropTypes.object,
    fetchNewsImages: PropTypes.object,
    fetchTags: PropTypes.object,
    location: locationShape,
    getImages: PropTypes.func,
};
NewsContainer.defaultPropTypes = {
    changeFilter: f => f,
};

export default connect(
    state => ({
        news: newsSelector(state),
        newsImages: state.newsImages,
        visibilityFilter: state.visibilityFilter,
        fetchNews: fetchSelector('getNews')(state) || {},
        fetchNewsImages: fetchSelector('getNewsImages')(state) || {},
        fetchTags: fetchSelector('__tags/news_tags.md')(state) || {},
    }),
    { changeFilter, getImages },
)(injectIntl(NewsContainer));
