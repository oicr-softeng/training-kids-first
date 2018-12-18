/* global window */
import React from 'react';
import PropTypes from 'prop-types';
import { LoadingComponent } from 'wfui-react';
import { connect } from 'react-redux';
import { fetchSelector } from 'wfui-react/lib/util';

class StatContainer extends React.Component {
    render() {
        const { stats, fetchStats } = this.props;

        if (fetchStats && !fetchStats.isFetching && fetchStats.status === 'fail') {
            return (
                <div className="wfui-loading-component">
                    <p className="portal-stat-error">Portal Statistics Temporarily Unavailable</p>
                </div>
            );
        }

        return (
            <LoadingComponent {...fetchStats}>
                <div className="portal-stat-grid">
                    {stats.map((item, i) => (
                        <a
                            key={i}
                            href={`/portal/portal-research/#${item.key}`}
                            className="portal-stat-item col-lg-2 col-xs-4"
                        >
                            <div className="stat-icon">
                                <img
                                    src={`/assets/site/images/icon-stats-${item.title}.svg`}
                                    role="presentation"
                                />
                            </div>
                            <div className="stat-detail">
                                <div className="stat-link">
                                    <span className="stat-link-highlight">
                                        {isNaN(item.value)
                                            ? item.value
                                            : item.value.toLocaleString('en')}
                                    </span>
                                    <br />
                                    <span className="text-capitalize">{item.title}</span>
                                </div>
                            </div>
                        </a>
                    ))}
                </div>
            </LoadingComponent>
        );
    }
}

StatContainer.propTypes = {
    stats: PropTypes.arrayOf(PropTypes.object),
    fetchStats: PropTypes.object,
};

export default connect(state => ({
    stats: state.stats || [],
    fetchStats: fetchSelector('getStats')(state) || {},
}))(StatContainer);
