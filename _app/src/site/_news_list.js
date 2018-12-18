/* global document, fetch */
import React from 'react';
import ReactDOM from 'react-dom';
import { Router, Route, hashHistory } from 'react-router';
import { Provider as CoreProvider } from 'oicr-ui-core';

import store from './store';
import { getPageContent, getImages } from './actions';
import { getNews } from './modules/news/actions';
import { attributesSelector } from './selectors/';

import News from './modules/news/NewsContainer';

const targetNews = document.getElementById('news-list');
if (targetNews) {
    // Get news
    getNews()(store.dispatch);
    getPageContent('__pages/news.md')(store.dispatch);
    getPageContent('__tags/news_tags.md')(store.dispatch);

    ReactDOM.render(
        <CoreProvider
            store={store}
            selector={state =>
                attributesSelector(['__tags/news_tags.md', '__pages/news.md'])(state)
            }
        >
            <Router history={hashHistory}>
                <Route path="/" component={News} />
            </Router>
        </CoreProvider>,
        targetNews,
    );
}
