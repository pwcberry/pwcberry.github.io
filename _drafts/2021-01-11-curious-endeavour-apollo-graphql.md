---
layout: post
title: A curious endeavour when testing with Apollo GraphQL
category: javascript
tags: front-end testing
excerpt:
---

# A curious endeavour when testing with Apollo GraphQL

Key observations:

* When testing with `<MockedProvider>`, the `client` used in the `useQuery` hook must be mocked or not supplied, instead using a higher-level `<ApolloProvider>`

Probably should be investigated further, but it appears that the `<MockedProvider>` component uses a built-in client that is incompatible with the one specified for the hook.

