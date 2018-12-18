/* global document, window, twttr */
import React from 'react';
import ReactDOM from 'react-dom';

import { TwitterFeed } from 'wfui-react';

const twitterInsert = document.getElementById('react-twitter-insert');
if (twitterInsert) {
    ReactDOM.render(
        <TwitterFeed twitterAccount="kidsfirstDRC" width="100%" limit="4" />,
        twitterInsert,
    );
}
