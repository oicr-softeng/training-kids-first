/* global window, localStorage */
import React from 'react';
import PropTypes from 'prop-types';
import { FormattedMessage } from 'react-intl';

const PortalLoginViewSmall = (props) => {
    const { portalURL, joinNowPath, user, userImagePath, userProfilePath } = props;

    if (user) {
        return (
            <div id="profile-link-mobile">
                <div className="col-xs-6 collapse-dashboard">
                    <div className="dashboard-link-container">
                        <a href={`//${portalURL}`}>
                            <FormattedMessage id="dashboard_txt" defaultMessage="Dashboard" />
                        </a>
                    </div>
                </div>
                <div className="col-xs-6 collapse-profile">
                    <div className="profile-image">
                        {userImagePath && <img src={userImagePath} />}
                    </div>
                    <div className="profile-text">
                        <a href={userProfilePath}>
                            <FormattedMessage id="myProfile_txt" defaultMessage="My Profile" />
                        </a>
                    </div>
                </div>
            </div>
        );
    }

    return (
        <div id="join-now-mobile">
            <div className="col-xs-6 collapse-join-text">
                <a href={`//${portalURL}${joinNowPath}`}>
                    <span className="arrow-right-default">
                        <FormattedMessage id="joinNow_txt" defaultMessage="Join now" />
                    </span>
                </a>
            </div>
            <div className="col-xs-6 collapse-join-text">
                <a href={`//${portalURL}`} className="btn btn-primary">
                    <FormattedMessage id="portalLogin_txt" defaultMessage="Portal Login" />
                </a>
            </div>
        </div>
    );
};

PortalLoginViewSmall.propTypes = {
    user: PropTypes.object,
    gravatarImageURL: PropTypes.string,
    userImagePath: PropTypes.string,
    userProfilePath: PropTypes.string,
    portalURL: PropTypes.string,
    joinNowPath: PropTypes.string,
    portalProfilePath: PropTypes.string,
    imageSize: PropTypes.number,
};

PortalLoginViewSmall.defaultProps = {
    gravatarImageURL: 'https://www.gravatar.com/avatar/{hash}',
    portalURL: 'beta.portal.kids-first.io',
    joinNowPath: '/join',
    portalProfilePath: '/user/{sub}',
    imageSize: 200,
};

export default PortalLoginViewSmall;
