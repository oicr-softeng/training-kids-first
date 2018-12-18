/* global window, document, $ */
import React from 'react';
import ReactDOM from 'react-dom';
import { Provider as CoreProvider } from 'oicr-ui-core';
import { Route, Router, hashHistory } from 'react-router';
import store from './store';
import SupportSearchBar from './modules/support/SupportSearchBar';

/**
 * Content Redirection Example
 */
const contents = document.getElementById('support-keyword-search');
if (contents) {
    ReactDOM.render(
        <CoreProvider store={store}>
            <SupportSearchBar path={contents.getAttribute('data-path')} />
        </CoreProvider>,
        contents,
    );
}
