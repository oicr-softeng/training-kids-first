/* global window, document, $ */
import React from 'react';
import ReactDOM from 'react-dom';
import { Core, Provider as CoreProvider } from 'oicr-ui-core';
import store from './store';
import { getStats } from './modules/stats/actions';
import StatContainer from './modules/stats/StatContainer';
import StatData from './modules/stats/StatData';
import PortalLogin from './modules/login/PortalLogin';
import PortalLoginUserContents from './modules/login/PortalLoginUserContents';

// Core.verifyAPIAccess(store);

/* Navigation Search */
$(() => {
    $('#kidsfirst-nav-search').submit(() => {
        const keyword = $('#kidsfirst-nav-search-keywords')
            .val()
            .trim();
        if (keyword) {
            window.location = `/search/#/${keyword}`;
        }
        return false;
    });
});

// Portal Stat
const targetStat = document.getElementById('portal-stat');
const targetData = document.getElementsByClassName('portal-data');
if ((targetData && targetData.length > 0) || targetStat) {
    getStats()(store.dispatch);

    if (targetData && targetData.length > 0) {
        for (let i = 0; i < targetData.length; i++) {
            const item = targetData[i];
            ReactDOM.render(
                <CoreProvider store={store}>
                    <StatData
                        title={item.dataset.title}
                        type={item.dataset.type}
                    />
                </CoreProvider>,
                item,
            );
        }
    }

    if (targetStat) {
        ReactDOM.render(
            <CoreProvider store={store}>
                <StatContainer />
            </CoreProvider>,
            targetStat,
        );
    }
}

// Portal Login
const pageModulePortalLogin = '__modules/portal_login.md';
const targetPortalLogin = document.getElementById('portal-login');
Core.actions.getPageContent(pageModulePortalLogin)(store.dispatch);
if (targetPortalLogin) {
    ReactDOM.render(
        <CoreProvider
            store={store}
            selector={state =>
                Core.selectors.attributesSelector([pageModulePortalLogin])(
                    state,
                )
            }
        >
            <PortalLogin portalURL={window.APP_CONFIG.PORTAL_URL} />
        </CoreProvider>,
        targetPortalLogin,
    );
}

// Portal Login for responsive
const targetPortalLoginSm = document.getElementById('nav-collapse-profile');
if (targetPortalLoginSm) {
    ReactDOM.render(
        <CoreProvider
            store={store}
            selector={state =>
                Core.selectors.attributesSelector([pageModulePortalLogin])(
                    state,
                )
            }
        >
            <PortalLogin portalURL={window.APP_CONFIG.PORTAL_URL} smallScreen />
        </CoreProvider>,
        targetPortalLoginSm,
    );
}

const targetPortalLoginContents = document.getElementsByClassName(
    'app-portal-login-content',
);
if (targetPortalLoginContents.length) {
    for (let j = 0; j < targetPortalLoginContents.length; j++) {
        const item = targetPortalLoginContents[j];
        ReactDOM.render(
            <CoreProvider store={store}>
                <PortalLoginUserContents
                    viewDOM={item.innerHTML}
                    contentsFor={item.getAttribute('data-aplc')}
                />
            </CoreProvider>,
            item,
        );
    }
}
