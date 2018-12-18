/* global document, window UMS_CONFIG */
import React from 'react';
import ReactDOM from 'react-dom';
import { Router, hashHistory } from 'react-router';
import { UMS, Provider as CoreProvider } from 'oicr-ui-core';
import UserDashboard from './modules/dashboard/UserDashboard';

// Load store.
const store = require('../site/store').default;

// Get User Session, Invoke once
UMS.getUserInfo()(store.dispatch);

// Render UMS
const target = document.getElementById('app-user-services');
if (target) {
    ReactDOM.render(
        <CoreProvider store={store}>
            <Router history={hashHistory}>
                <UMS.Route path="/dashboard" component={UserDashboard} />
                <UMS.BaseRoutes />
            </Router>
        </CoreProvider>,
        target,
    );
}

// Render User Menu
const targetUserMenu = document.getElementById('app-user-nav');
if (targetUserMenu) {
    ReactDOM.render(
        <CoreProvider store={store}>
            <UMS.Components.UserNavMenu rootPath="/user" />
        </CoreProvider>,
        targetUserMenu,
    );
}

