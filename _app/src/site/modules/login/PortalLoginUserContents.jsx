/* global window, localStorage, document */
import React from 'react';
import PropTypes from 'prop-types';
import { userLoggedIn } from './util';

class PortalLoginUserContents extends React.Component {
    constructor(props) {
        super();
        let user;
        let uid;
        let role = 'anonymous';

        const userInfo = userLoggedIn(props.tokenKey);
        if (userInfo) {
            user = userInfo.user;
            uid = userInfo.sub;
            role = 'loggedin';
        }

        this.state = { user, uid, role };
    }
    render() {
        const { viewDOM, contentsFor } = this.props;
        const { role, uid } = this.state;

        if (role === contentsFor) {
            return (
                <div
                    className="visible"
                    dangerouslySetInnerHTML={{
                        __html: viewDOM.replace(/\{uid\}/g, uid),
                    }}
                />
            );
        }
        return null;
    }
}

PortalLoginUserContents.propTypes = {
    tokenKey: PropTypes.string,
    viewDOM: PropTypes.string,
    contentsFor: PropTypes.string,
};

PortalLoginUserContents.defaultProps = {
    tokenKey: 'EGO_JWT',
    contentsFor: 'anonymous',
};

export default PortalLoginUserContents;
