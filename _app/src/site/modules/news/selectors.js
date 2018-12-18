import { createSelector } from 'reselect';
import * as Const from '../../constants/news';

const _newsSelector = state => state.news;
const _newsImagesSelector = state => state.newsImages;
const _visibilityCategorySelector = state => state.visibilityFilter.category;

export const newsSelector = createSelector(
    _newsSelector,
    _newsImagesSelector,
    _visibilityCategorySelector,
    (news, newsImages, query) => {
        if (!news || news.length === 0) return [];

        const filter = query.filter || '';
        const searchTerm = query.searchTerm ? query.searchTerm.toLowerCase().trim() : '';
        const reg = searchTerm ? RegExp(`${searchTerm}`, 'i') : '';
        let setSizer = false;

        if (filter || searchTerm) {
            const filteredNews = news.filter(
                item =>
                    (!filter || item.category === filter) &&
                    (!searchTerm || reg.test(item.itemStringify || '')),
            );

            const dataLength = filteredNews.length;
            const reg1 = new RegExp(Const.TWITTER, 'i');
            const reg2 = new RegExp(Const.FACEBOOK, 'i');
            let offset = 0;
            if (reg1.test(filter) || reg1.test(searchTerm)) offset += 1;
            if (reg2.test(filter) || reg2.test(searchTerm)) offset += 1;

            return filteredNews
                .sort((a, b) => {
                    if (a.category.toLowerCase() === Const.TWITTER) return -1;
                    if (b.category.toLowerCase() === Const.TWITTER) return 1;
                    if (a.category.toLowerCase() === Const.FACEBOOK) return -1;
                    if (b.category.toLowerCase() === Const.FACEBOOK) return 1;
                    if (a.rank === b.rank) {
                        return new Date(b.releaseDate) - new Date(a.releaseDate);
                    }
                    return a.rank - b.rank;
                })
                .map((item, idx) => {
                    let sizer = false;
                    if (
                        !setSizer &&
                        ((item.categoryIndexer > 1 && item.categoryIndexer < 6) ||
                            idx === dataLength - 1)
                    ) {
                        sizer = true;
                        setSizer = true;
                    }
                    return {
                        ...item,
                        sizer,
                        page: Math.floor((idx + offset) / Const.ARTICLE_PER_PAGE) + 1,
                        thumbnail:
                            item.teaser && item.teaser.thumbnail_txt
                                ? newsImages[item.teaser.thumbnail_txt]
                                : null,
                    };
                });
        }

        const dataLength = news.length;

        return news
            .sort((a, b) => {
                if (a.category.toLowerCase() === Const.TWITTER) return -1;
                if (b.category.toLowerCase() === Const.TWITTER) return 1;
                if (a.category.toLowerCase() === Const.FACEBOOK) return 1;
                if (b.category.toLowerCase() === Const.FACEBOOK) return -1;
                if (a.rank === b.rank) {
                    return new Date(b.releaseDate) - new Date(a.releaseDate);
                }
                return a.rank - b.rank;
            })
            .map((item, idx) => {
                let sizer = false;
                if (
                    !setSizer &&
                    ((item.categoryIndexer > 1 && item.categoryIndexer < 6) ||
                        idx === dataLength - 1)
                ) {
                    sizer = true;
                    setSizer = true;
                }
                return {
                    ...item,
                    sizer,
                    page: Math.floor((idx + 1) / Const.ARTICLE_PER_PAGE) + 1,
                    thumbnail:
                        item.teaser && item.teaser.thumbnail_txt
                            ? newsImages[item.teaser.thumbnail_txt]
                            : null,
                };
            });
    },
);
