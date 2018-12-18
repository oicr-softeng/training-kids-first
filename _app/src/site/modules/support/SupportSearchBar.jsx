/* global window, $, document */
import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { FormControl } from 'wfui-react';
import { Core } from 'oicr-ui-core';
import { fetchSelector } from 'wfui-react/lib/util';
import Search from 'wfui-react/lib/util/searchUtil';
import MarkdownIt from 'markdown-it';

const { infoSelector } = Core.selectors;
const md = new MarkdownIt();

class SupportSearchBar extends React.Component {
    constructor(props) {
        super();
        this.onHandleInputChange = this.onHandleInputChange.bind(this);
        this.state = { bodyTokens: undefined, resultWithDetail: {} };
        this.generateBodyToken(props);
        this.setWrapperRef = this.setWrapperRef.bind(this);
        this.handleClickOutside = this.handleClickOutside.bind(this);
    }
    componentDidMount() {
        document.addEventListener('mousedown', this.handleClickOutside);
    }
    componentWillUnmount() {
        document.removeEventListener('mousedown', this.handleClickOutside);
    }
    setWrapperRef(node) {
        this.wrapperRef = node;
    }
    handleClickOutside(event) {
        if (this.wrapperRef && !this.wrapperRef.contains(event.target)) {
            this.setState({ active: false });
        }
    }
    onHandleInputChange(e) {
        const {
            page,
            textMaxLength,
            wholeWord,
            wholeWords,
            searchLogic,
        } = this.props;
        const { bodyTokens } = this.state;
        const newResultWithDetail = {};
        const keyword = e.target.value;
        this.setState({
            active: true,
            resultWithDetail: {},
            searchingKeyword: keyword,
        });

        if (keyword && keyword.length > 1 && page && page.data) {
            const { body } = page.data;

            const result = Search.simpleSearch(
                bodyTokens,
                keyword,
                ['content'],
                wholeWord,
                searchLogic,
                wholeWords,
            );

            if (result.length > 0) {
                result.map(token => {
                    const tokenIdx = bodyTokens.findIndex(tk => tk === token);
                    const headerTokens = bodyTokens
                        .slice(0, tokenIdx)
                        .filter(
                            token =>
                                token.type === 'heading_open' &&
                                (token.tag === 'h3' || token.tag === 'h4'),
                        );

                    if (headerTokens.length > 0) {
                        // Sanitize text content
                        let tokenContent = token.content;
                        tokenContent = $(`<div>${tokenContent}</div>`).get(0)
                            .textContent;
                        tokenContent = tokenContent.replace(
                            '{::nomarkdown}',
                            '',
                        );

                        const isHeaderItself =
                            bodyTokens[tokenIdx - 1].type === 'heading_open';

                        // Get a closest header before keyword.
                        const headerToken =
                            headerTokens[headerTokens.length - 1];
                        const headerTokenIdx = bodyTokens.findIndex(
                            tk => tk === headerToken,
                        );
                        const inlineContent = bodyTokens[headerTokenIdx + 1];

                        // Find anchor id from contents. e.g. <h3 id="---">inlineContent.content</h3>
                        const header = $(
                            headerToken.tag,
                            '.support-guides-body',
                        ).filter(
                            (i, el) => el.innerHTML === inlineContent.content,
                        )[0];

                        // Find a beginning of sentence and formulate a text.
                        const keywordIdx = tokenContent
                            .toLowerCase()
                            .indexOf(keyword.toLowerCase());
                        const sentenceIdx = tokenContent
                            .substring(0, keywordIdx)
                            .lastIndexOf('. ');
                        let text = `${tokenContent.substring(
                            sentenceIdx + 1,
                            sentenceIdx + 1 + textMaxLength,
                        )}`;
                        if (!isHeaderItself) text += '...';

                        // If first text is too long and doesn't include a keyword, formulate a text just around the keyword.
                        if (
                            !text
                                .toLowerCase()
                                .includes(e.target.value.toLowerCase())
                        ) {
                            // Find a beginning of a word right before the text range.
                            const wordStartIdx = tokenContent
                                .substring(0, keywordIdx - textMaxLength / 2)
                                .lastIndexOf(' ');
                            const gap =
                                wordStartIdx - (keywordIdx - textMaxLength / 2);

                            text = tokenContent.substring(
                                wordStartIdx,
                                wordStartIdx +
                                    textMaxLength +
                                    gap +
                                    keyword.length,
                            );

                            if (!isHeaderItself) text = `...${text}...`;
                        }

                        if (header) {
                            const headerId = `#${header.id}`;

                            if (!newResultWithDetail[headerId])
                                newResultWithDetail[headerId] = {
                                    headerText: inlineContent.content,
                                    items: [],
                                };
                            newResultWithDetail[headerId].items.push({
                                content: tokenContent,
                                text: text.replace(
                                    new RegExp(`(${e.target.value})`, 'ig'),
                                    '<em>$1</em>',
                                ),
                                isHeaderItself,
                            });
                        }
                    }
                    return null;
                });
            }

            this.setState({
                resultWithDetail: newResultWithDetail,
            });
        }
    }
    componentWillReceiveProps(nextProps) {
        this.generateBodyToken(nextProps);
    }
    generateBodyToken(props) {
        const { bodyTokens } = this.state;

        if (props.page && props.page.data && !bodyTokens) {
            this.setState({ bodyTokens: md.parse(props.page.data.body, {}) });
        }
    }
    render() {
        const { page } = this.props;
        const { resultWithDetail, active } = this.state;

        if (Object.keys(page).length) {
            return (
                <div
                    className="support-search-bar-box"
                    ref={this.setWrapperRef}
                >
                    <FormControl
                        className="support-keyword-search-input"
                        type="text"
                        name="search"
                        onChange={this.onHandleInputChange}
                        placeholder="Search for a topic"
                        onFocus={() => this.setState({ active: true })}
                    />
                    {Object.keys(resultWithDetail).length > 0 &&
                        active && (
                            <ul className="search-result">
                                {Object.keys(resultWithDetail).map(
                                    (href, i) => (
                                        <li key={i}>
                                            <a
                                                href={`${
                                                    window.location.pathname
                                                }${href}`}
                                                onClick={e => {
                                                    e.preventDefault();
                                                    window.stickySubmenuScroll(
                                                        href,
                                                    );
                                                    this.setState({
                                                        active: false,
                                                    });
                                                }}
                                            >
                                                <h4>
                                                    {
                                                        resultWithDetail[href]
                                                            .headerText
                                                    }
                                                </h4>
                                                {resultWithDetail[href].items
                                                    .length > 0 &&
                                                    resultWithDetail[href].items
                                                        .slice(0, 5)
                                                        .map(item => (
                                                            <p
                                                                dangerouslySetInnerHTML={{
                                                                    __html:
                                                                        item.text,
                                                                }}
                                                            />
                                                        ))}
                                                {resultWithDetail[href].items
                                                    .length > 5 && (
                                                    <p className="more">...</p>
                                                )}
                                            </a>
                                        </li>
                                    ),
                                )}
                            </ul>
                        )}
                </div>
            );
        }
        return null;
    }
}

SupportSearchBar.propTypes = {
    path: PropTypes.string,
    page: PropTypes.object,
    fetchPage: PropTypes.object,
    wholeWord: PropTypes.bool,
    wholeWords: PropTypes.bool,
    searchLogic: React.PropTypes.oneOf(['and', 'or']),
    textMaxLength: PropTypes.number,
};

SupportSearchBar.defaultProps = {
    wholeWord: false,
    wholeWords: true,
    page: PropTypes.object,
    fetchPage: PropTypes.object,
    searchLogic: 'and',
    textMaxLength: 80,
};

export default connect((state, props) => ({
    fetchPage: fetchSelector(props.path)(state) || {},
    page: infoSelector(props.path)(state) || {},
}))(SupportSearchBar);
