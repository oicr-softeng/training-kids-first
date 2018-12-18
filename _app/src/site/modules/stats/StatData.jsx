/* global window */
import React from 'react';
import PropTypes from 'prop-types';
import { LoadingComponent } from 'wfui-react';
import { connect } from 'react-redux';
import { fetchSelector } from 'wfui-react/lib/util';

class StatData extends React.Component {
    render() {
        const { title, type, stats, fetchStats } = this.props;
        let value;
        if (stats && stats.length > 0) {
            stats.forEach((item) => {
                if (item.key === type) {
                    value = item.value;
                }
            });
        }

        if (!value) {
            return (
                <div className={`portal-data-header ${type}-header`}>
                    <h2 className="portal-data-title">{title}</h2>
                </div>
            );
        }

        return (
            <div className={`portal-data-header ${type}-header`}>
                <h2 className="portal-data-title">{title} (</h2>
                <LoadingComponent {...fetchStats}>
                    <h2 className="portal-data-title">
                        {isNaN(value) ? value : value.toLocaleString('en')}
                    </h2>
                </LoadingComponent>
                <h2 className="portal-data-title">)</h2>
            </div>
        );
    }
}

StatData.propTypes = {
    title: PropTypes.string,
    type: PropTypes.string,
    stats: PropTypes.arrayOf(PropTypes.object),
    fetchStats: PropTypes.object,
};

export default connect(state => ({
    stats: state.stats || [],
    fetchStats: fetchSelector('getStats')(state) || {},
}))(StatData);
