/* global document */
import cookie from 'cookie';
import jwtDecode from 'jwt-decode';

export const userLoggedIn = (tokenKey) => {
    const cookies = cookie.parse(document.cookie) || {};
    const token = cookies[tokenKey];
    if (token) {
        try {
            const decoded = jwtDecode(token);
            if (decoded.exp * 1000 < new Date().getTime()) {
                console.warn('Token is expired');
                return false;
            }
            if (decoded.context && decoded.context.user) {
                return { user: decoded.context.user, sub: decoded.sub };
            } else {
                console.warn('User info does not exist in the token.');
                return false;
            }
        } catch (err) {
            console.warn(err);
            return false;
        }
    }
};
