/* global document, window UMS_CONFIG */
import React from 'react';
import ReactDOM from 'react-dom';
import { Router, hashHistory } from 'react-router';
import { Forms } from 'oicr-ui-core';
import {
    Provider as CoreProvider,
    getUserInfo,
    Route as RouteWithAuth,
} from 'oicr-ui-core/lib/ums';

/**
 * Set UMS
 */
// Load store.
const store = require('../site/store').default;

// Get User Session, Invoke once
getUserInfo()(store.dispatch);

// Forms
const targetForms = document.getElementById('app-forms');
if (targetForms) {
    ReactDOM.render(
        <CoreProvider store={store}>
            <Router history={hashHistory}>
                <Forms.BaseRoutes store={store} />
            </Router>
        </CoreProvider>,
        targetForms,
    );
}

// Embed
const targetEmbedForms = document.getElementsByClassName('app-forms-embed');
if (targetEmbedForms.length) {
    for (var i = 0; i < targetEmbedForms.length; i++) {
        ReactDOM.render(
            <CoreProvider store={store}>
                <Forms.Components.RenderForm
                    params={{
                        nid: targetEmbedForms[i].getAttribute('data-formid'),
                        lang: targetEmbedForms[i].getAttribute('data-lang'),
                    }}
                />
            </CoreProvider>,
            targetEmbedForms[i],
        );
    }
}
