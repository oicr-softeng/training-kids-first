import { transformStats } from './utils';

/**
 * Reducer for Stat
 */

export const statsReducer = (state = [], action) => {
    switch (action.type) {
        case 'RECEIVE_FETCH_DATA':
            if (action.requestId === 'getStats') {
                return transformStats(action.data);
            }
            return state;
        default:
            return state;
    }
};
