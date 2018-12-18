/* global window, document, $ */
import React from 'react';
import ReactDOM from 'react-dom';
import { Core, Provider as CoreProvider } from 'oicr-ui-core';
import { Route, Router, hashHistory } from 'react-router';
import store from './store';
import ImageRedirect from './modules/images/ImageRedirect';

/**
 * Render React components when document is ready.
 */
document.addEventListener('DOMContentLoaded', () => {
    const config = Core.getConfig();
    /**
     * Render view/edit tab for admin user.
     * This will be rendered after pubmed publications are rendered.
     */
    if (config.CMUI_ENABLED) {
        const targetEditable = document.getElementById('editButton');
        if (targetEditable) {
            ReactDOM.render(
                <Core.Provider store={store}>
                    <Core.Components.ContentPageWrapper
                        viewDOM={targetEditable.innerHTML}
                        rootPath={'/user/#/dashboard'}
                        eventKey={8}
                        path={targetEditable.getAttribute('data-path')}
                        isPublic={targetEditable.getAttribute('data-is-public')}
                />
                </Core.Provider>,
                targetEditable,
                () => {
                    const event = document.createEvent('Event');
                    event.initEvent('edit_btn_rendered', true, true);
                    window.dispatchEvent(event);
                },
            );
        }
    }

    const targetImages = document.getElementsByClassName('embedded-image-collection');
    if (targetImages.length) {
        for (let i=0; i < targetImages.length; i++) {
            const element = document.createElement('div');
            element.setAttribute('class', 'link-page-image');
            ReactDOM.render(
                <Core.Provider store={store}>
                    <ImageRedirect permalink={targetImages[i].getAttribute('data-permalink')} />
                </Core.Provider>,
                element,
            );
            targetImages[i].appendChild(element);
        }
    }
});

/**
 * Content Redirection Example
 */
const contents = document.getElementById('app-contents');
if (contents) {
    ReactDOM.render(
        <CoreProvider store={store}>
            <Router history={hashHistory}>
                <Route
                    path="/preview/"
                    component={Core.Components.ContentPreview}
                />
                <Route path="*" component={Core.Components.PageNotFound} />
            </Router>
        </CoreProvider>,
        contents,
    );
}