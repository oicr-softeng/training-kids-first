import { createSelector } from 'reselect';

/**
 * Selector for pageAttributes
 */
const _attributesSelector = state => state.pageAttributes;
export const attributesSelector = paths =>
    createSelector(_attributesSelector, (pages) => {
        const allPages = {};
        if (paths && Array.isArray(paths) && paths.length > 0) {
            paths.forEach(path => Object.assign(allPages, pages[path]));
        }
        return allPages;
    });
