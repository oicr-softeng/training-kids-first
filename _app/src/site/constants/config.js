/* global window, UMS_CONFIG, CONFIG */
export const APP_ID = window.APP_CONFIG.APP_ID;
export const CONTACT_LINK = window.APP_CONFIG.CONTACT_LINK;
export const API_HOST = window.APP_CONFIG.API_HOST;

export const API_GET_PAGE = '/content/page/attribute';
export const API_LIST_NEWS = '/content/contents?filter={"type":"news"}';
export const API_LIST_CONTENTS =
    '/content/contents?filter={"path": { "$in": [CONTENT_PATHS]}}';
export const API_PORTAL_STAT = 'https://arranger.kidsfirstdrc.org/statistics';
