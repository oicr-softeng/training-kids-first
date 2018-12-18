import * as Const from '../../constants/news';
import { stringifyValues } from 'wfui-react/lib/util/stringifyValues';
import { removeHTMLTags } from 'wfui-react/lib/util/removeHTMLTags';

export const transformNews = (data) => {
    if (!data || !Array.isArray(data) || data.length === 0) return [];

    return data.filter(p => !!p.data.attributes && p.data.attributes.category_txt).map((p) => {
        const attr = p.data.attributes;
        let itemStringify = '';
        if (attr.category_txt === Const.TWITTER || attr.category_txt === Const.FACEBOOK) {
            itemStringify = attr.category_txt;
        } else {
            itemStringify = removeHTMLTags(stringifyValues(p));
        }

        return {
            title: attr.title,
            releaseDate: attr.releaseDate_tdt || new Date().toDateString(),
            permalink: attr.link_txt || attr.permalink,
            category: attr.category_txt,
            categoryIndexer: Const.CATEGORY_INDEXER[attr.category_txt],
            spotlight: attr.spotlightType_txt || '',
            spotlightIndexer: attr.spotlightType_txt
                ? Const.SPOTLIGHT_INDEXER[attr.spotlightType_txt]
                : null,
            body: p.data.body_html || p.data.body,
            teaser: attr.teaser_list && attr.teaser_list.length > 0 ? attr.teaser_list[0] : null,
            rank: attr.rank_ti && !isNaN(attr.rank_ti) ? attr.rank_ti : 0,
            itemStringify,
        };
    });
};

export const transformNewsImages = (data) => {
    if (!data || !Array.isArray(data) || data.length === 0) return [];
    const imgs = {};
    data.filter(p => !!p.data.attributes).forEach((p) => {
        const attr = p.data.attributes;
        if (attr.file.src) {
            imgs[p.path] = attr.file.src;
        }
    });

    return imgs;
};
