import { createStore, combineReducers, applyMiddleware, compose } from 'redux';
import coreReducers from '../core/reducers';
import coreMiddlewares from '../core/middlewares';

import { newsReducer, newsImagesReducer } from './modules/news/reducers';
import { statsReducer } from './modules/stats/reducers';

const initialState = {
    // Initial Values
};

const combinedReducers = combineReducers(
    Object.assign({}, coreReducers, {
        news: newsReducer,
        newsImages: newsImagesReducer,
        stats: statsReducer,
    }),
);

const composedMiddlewares = compose(
    applyMiddleware(...coreMiddlewares),
    process.env.NODE_ENV === 'production'
        ? f => f
        : window.devToolsExtension ? window.devToolsExtension() : f => f,
);

export default createStore(combinedReducers, initialState, composedMiddlewares);