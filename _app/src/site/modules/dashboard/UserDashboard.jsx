import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import { Core, Forms, UMS } from 'oicr-ui-core';
import { isAdminSelector } from 'oicr-ui-core/lib/ums/selectors';

const { Dashboard } = Core.Components;
const { ContentManagementDashboard } = Core.Dashboard;
const {
    AdminSiteConfigDashboard,
    AdminUserDashboard,
    UserAccountDashboard,
} = UMS.Dashboard;
const { AdminCaseManagementDashboard, FormBuilderDashboard } = Forms.Dashboard;

class UserDashboard extends React.Component {
    render() {
        const { intl, isAdmin } = this.props;
        return (
            <Dashboard
                id="forms-user-dashboard"
                className="clearfix"
                defaultActiveKey={7.1}
                rootPath="dashboard"
            >
                <Dashboard.Menus id="user-dashboard-menu">
                    <UserAccountDashboard.Menu eventKey={7} />
                    <ContentManagementDashboard.Menu eventKey={8} />
                    <FormBuilderDashboard.Menu eventKey={3} />
                    <AdminCaseManagementDashboard.Menu eventKey={4} />
                    <AdminSiteConfigDashboard.Menu eventKey={5} />
                    <AdminUserDashboard.Menu eventKey={6} />
                </Dashboard.Menus>
                <Dashboard.Contents id="user-dashboard-content">
                    <UserAccountDashboard.Content eventKey={7} />
                    <ContentManagementDashboard.Content eventKey={8} />
                    <FormBuilderDashboard.Content
                        eventKey={3}
                        caseManagementKey={4}
                    />
                    <AdminCaseManagementDashboard.Content
                        eventKey={4}
                        formBuilderKey={3}
                    />
                    <AdminSiteConfigDashboard.Content eventKey={5} />
                    <AdminUserDashboard.Content eventKey={6} />
                </Dashboard.Contents>
            </Dashboard>
        );
    }
}

export default withRouter(
    connect(state => ({
        isAdmin: isAdminSelector(state),
    }))(UserDashboard),
);
