import { transformNews, transformNewsImages } from './utils';

/**
 * Reducer for News
 */
export const newsReducer = (state = [], action) => {
    switch (action.type) {
        case 'RECEIVE_FETCH_DATA':
            if (action.requestId === 'getNews') return transformNews(action.data);
            return state;
        default:
            return state;
    }
};

/**
 * Reducer for NewsImages
 */
export const newsImagesReducer = (state = {}, action) => {
    switch (action.type) {
        case 'RECEIVE_FETCH_DATA':
            if (action.requestId === 'getNewsImages') { return Object.assign({}, state, transformNewsImages(action.data)); }
            return state;
        default:
            return state;
    }
};
