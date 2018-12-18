/* global window, localStorage, document */
import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import md5 from 'md5';
import { injectIntl } from 'react-intl';
import { fetchSelector } from 'wfui-react/lib/util';
import PortalLoginView from './PortalLoginView';
import PortalLoginViewSmall from './PortalLoginViewSmall';
import { userLoggedIn } from './util';

class PortalLogin extends React.Component {
    constructor(props) {
        super();
        let user;
        let userImagePath;
        let userProfilePath;

        const userInfo = userLoggedIn(props.tokenKey);
        if (userInfo) {
            user = userInfo.user;
            userImagePath = `${props.gravatarImageURL.replace('{hash}', md5(user.email))}?s=${
                props.imageSize
            }`;
            userProfilePath = `//${props.portalURL}${props.portalProfilePath.replace(
                '{sub}',
                userInfo.sub,
            )}`;
        }

        this.state = { user, userImagePath, userProfilePath };
    }
    render() {
        const { smallScreen } = this.props;
        const { user, userImagePath, userProfilePath } = this.state;

        if (smallScreen) {
            return (
                <PortalLoginViewSmall
                    {...this.props}
                    user={user}
                    userImagePath={userImagePath}
                    userProfilePath={userProfilePath}
                />
            );
        }

        return (
            <PortalLoginView
                {...this.props}
                user={user}
                userImagePath={userImagePath}
                userProfilePath={userProfilePath}
            />
        );
    }
}

PortalLogin.propTypes = {
    tokenKey: PropTypes.string,
    gravatarImageURL: PropTypes.string,
    imageSize: PropTypes.number,
    portalURL: PropTypes.string,
    portalProfilePath: PropTypes.string,
    smallScreen: PropTypes.bool,
};

PortalLogin.defaultProps = {
    tokenKey: 'EGO_JWT',
    gravatarImageURL: 'https://www.gravatar.com/avatar/{hash}',
    portalURL: 'beta.portal.kids-first.io',
    joinNowPath: '/join',
    portalProfilePath: '/user/{sub}#aboutMe',
    imageSize: 200,
};

export default connect(state => ({
    fetchContent: fetchSelector('__modules/portal_login.md')(state) || {},
}))(injectIntl(PortalLogin));
