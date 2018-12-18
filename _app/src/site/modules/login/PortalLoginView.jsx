/* global window, localStorage */
import React from 'react';
import PropTypes from 'prop-types';
import { FormattedMessage } from 'react-intl';

const PortalLoginView = (props) => {
    const {
        intl,
        portalURL,
        joinNowPath,
        user,
        userImagePath,
        userProfilePath,
        dashboardPath,
        fetchContent,
    } = props;

    if (user) {
        return (
            <div className="inner">
                <div className="nav-dashboard sticky-hide-md">
                    <div className="dashboard-container">
                        <a href={`//${portalURL}${dashboardPath}`}>
                            <FormattedMessage id="dashboard_txt" defaultMessage="Dashboard" />
                        </a>
                    </div>
                </div>
                <div className="nav-profile sticky-hide-md">
                    <div className="profile-image">
                        {userImagePath && <img src={userImagePath} />}
                    </div>
                    <div className="profile-container">
                        <a href={userProfilePath}>
                            <FormattedMessage id="myProfile_txt" defaultMessage="My Profile" />
                        </a>
                    </div>
                </div>
            </div>
        );
    }

    return (
        <div className="inner">
            <div key="join-message" className="join-message sticky-hide-md">
                {fetchContent &&
                !fetchContent.isFetching &&
                intl &&
                intl.messages &&
                intl.messages.newToKF_txt ? (
                    <div className="new-to-kf">
                        <FormattedMessage id="newToKF_txt" />
                    </div>
                ) : null}
                {fetchContent && !fetchContent.isFetching ? (
                    <div className="join-now sticky-hide-md">
                        <a href={`//${portalURL}${joinNowPath}`}>
                            <span className="arrow-right-default">
                                <FormattedMessage id="joinNow_txt" defaultMessage="Join now" />
                            </span>
                        </a>
                    </div>
                ) : null}
            </div>
            <div key="portal-loginz" className="portal-login sticky-hide-md">
                <a href={`//${portalURL}`} className="btn btn-primary">
                    <FormattedMessage id="portalLogin_txt" defaultMessage="Portal Login" />
                </a>
            </div>
        </div>
    );
};

PortalLoginView.propTypes = {
    user: PropTypes.object,
    gravatarImageURL: PropTypes.string,
    userImagePath: PropTypes.string,
    userProfilePath: PropTypes.string,
    portalURL: PropTypes.string,
    joinNowPath: PropTypes.string,
    portalProfilePath: PropTypes.string,
    imageSize: PropTypes.number,
    dashboardPath: PropTypes.string,
    fetchContent: PropTypes.object,
    intl: PropTypes.object,
};

PortalLoginView.defaultProps = {
    gravatarImageURL: 'https://www.gravatar.com/avatar/{hash}',
    portalURL: 'beta.portal.kids-first.io',
    dashboardPath: '/dashboard',
    joinNowPath: '/join',
    portalProfilePath: '/user/{sub}#aboutMe',
    imageSize: 200,
};

export default PortalLoginView;
