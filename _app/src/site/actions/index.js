/* global Blob */
import { wfuiFetch } from 'wfui-react/lib/util';
import * as Const from '../constants/config';

/**
 * Fetch page attribute
 */
export const getPageContent = path => (dispatch) => {
    const req = wfuiFetch(
        `//${Const.API_HOST}${Const.API_GET_PAGE}?path=${path}`,
        {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
                'app-id': Const.APP_ID,
            },
            requestId: path,
            credentials: 'include',
        },
        dispatch,
    );

    return req.promise
        .then(({ res, data }) => {
            if (res.ok) {
                dispatch({ type: 'RECEIVE_PAGE_CONTENT', path, attributes: data });
                return Promise.resolve(data);
            }
            return Promise.reject(res.statusText);
        })
        .catch((err) => {
            console.log(err);
        });
};

export const getImages = (paths, withCredentials) => (dispatch) => {
    const req = wfuiFetch(
        `//${Const.API_HOST}${Const.API_LIST_CONTENTS}`.replace(
            '[CONTENT_PATHS]',
            JSON.stringify(paths),
        ),
        {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
                'app-id': Const.APP_ID,
            },
            requestId: 'getNewsImages',
            credentials: withCredentials ? 'include' : 'omit',
        },
        dispatch,
    );
    return req.promise;
};
