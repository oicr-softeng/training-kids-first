import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import { Glyphicon } from 'wfui-react';
import { isAdminSelector } from 'oicr-ui-core/lib/ums/selectors';

class ImageRedirect extends React.Component {
    render() {
        const { isAdmin, permalink } = this.props;
        if (isAdmin) {
            return (
                <a href={permalink}><span className="icon icon-link"></span></a>
            );
        }
        return null;
    }
}

export default withRouter(
    connect(state => ({
        isAdmin: isAdminSelector(state),
    }))(ImageRedirect),
);
