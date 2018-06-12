---
layout: post
title: The meaning of NaN in JavaScript
category: javascript
tags: javascript oddities languages
excerpt:
---

# The meaning of `NaN` in JavaScript

I was writing code to detect if an array element was a number or not. Typically code looks like this:

```js
if (!isNaN(list[0])) {
    // list[0] is a number
}
```

However, if `list[0]` is `null`, then `isNaN` returns false. Spurred on by curiosity, I discovered this:

| `value` | `isNaN(value)` | `Number(value)` |
| --- | --- | --- |
| `0` | false | 0 |
| `null` | false | 0 |
| `""` (empty string) | false | 0 |
| `undefined` | true | `NaN` |
| `{}` (object) | true | `NaN` |

Well that's interesting. What does the spec say?
