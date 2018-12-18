/* global fetch, window  */
import { wfuiFetch } from 'wfui-react/lib/util';
import * as Const from '../../constants/config';

export const getStats = withCredentials => (dispatch) => {
    const req = wfuiFetch(
        `${Const.API_PORTAL_STAT}`,
        {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
                'app-id': Const.APP_ID,
            },
            requestId: 'getStats',
            credentials: withCredentials ? 'include' : 'omit',
        },
        dispatch,
    );

    return req.promise;
};
