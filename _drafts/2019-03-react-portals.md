---
layout: post
title: Using React portals to help with server-side rendering
category: JavaScript
tags: JavaScript React
excerpt:
---

# Using React portals to help with server-side rendering

One of my biggest gripes about using React as the basis for rendering HTML on the server is the size of the payload that's carried to the user's browser. I feel that it is overkill to put into the page the state and the React code to "rehydrate" the HTML when it has arrived the browser.

I had read about React portals and I wondered if it could be used as a way to replace the HTML that was rendered on the server only **when the state of the UI changes**. One benefit will be the prevention of the "blank screen flash" when there is a momentary delay between static HTML rendered and React rehydrating the DOM.

The web page in question was part of a project to refresh an ageing area of the website. I reasoned that the web page actual had 4 sections to it that comprised 4 different UI states, which were:

1. The header: the authentication state of the user and sub-menu visibility
2. The search box: changes when the users conducts a search
3. The search results: display the matching items of the seach
4. The footer: sub-menu visibility

There is no hard-and-fast rule I believe within the React world that the entire DOM has to be rendered according to one React component tree. These 4 sections have different requirements according to state and can be managed separately; thus they can be mounted onto different DOM nodes with their own state management.

The header and footer can manage state within their component structures; the search box will need to be managed with GraphQL and React Router; the search results depends upon the search box. 

The search results will naturally be modified when a dataset arrives from the back-end via GraphQL. I see this as an opportunity to reduce some of the code that is generated as part of the original HTML payload.

As well as separating these 4 sections it becomes possible to employ code-splitting for some performance gains.

The search results is a component that acts as a wrapper for the search result components that render the data after the search box is used. The search result component, when rendered, is mounted using `ReactDOM.createPortal` i.e.:

```javascript
class SearchResults extends React.Component {
    constructor(props) {
        super(props);

        this.container = document.getElementById('search-results');
        // some state
    }

    render() {
        // When the children change, it will create the DOM tree
        ReactDOM.createPortal(
            this.props.children,
            this.container);
    }
}
```



## Reference

[React Portals](https://reactjs.org/docs/portals.html)
