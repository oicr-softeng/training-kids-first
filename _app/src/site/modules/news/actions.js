/* global fetch, window  */
import { wfuiFetch } from 'wfui-react/lib/util';
import * as Const from '../../constants/config';

export const getNews = withCredentials => (dispatch) => {
    const req = wfuiFetch(
        `//${Const.API_HOST}${Const.API_LIST_NEWS}`,
        {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
                'app-id': Const.APP_ID,
            },
            requestId: 'getNews',
            credentials: withCredentials ? 'include' : 'omit',
        },
        dispatch,
    );
    return req.promise;
};
