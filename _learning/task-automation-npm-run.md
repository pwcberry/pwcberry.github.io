Task automation with npm run
============================

[Source](http://substack.net/task_automation_with_npm_run)

Get the most out of `npm run` and the `package.json` "scripts" field.

`npm test` looks for commands set in the `scripts.test` hash, and `npm start` looks for commands set in the `scripts.start` hash of `package.json`.

For example, this command bundles JavaScript files that utilise RequireJS:

```
"build-js": "browserify browser/main.js > static/bundle.js"
```

This example watches CSS:

```
"watch-css": "catw static/pages/*.css tabs/*/*.css -o static/bundle.css"
```

Here are sequential sub-tasks:

```
"build": "npm run build-js && npm run build-css"
```

And here are parallel sub-tasks:

```
"watch": "npm run watch-js & npm run watch-css"
```

And when things become really complicated, a bash or node script can be created and saved in the local `bin` folder of the project.

```
#!/bin/bash
(cd site/main; browserify browser/main.js | uglifyjs -mc > static/bundle.js)
(cd site/xyz; browserify browser.js > static/bundle.js)
```

```
"build-js": "bin/build.sh"
```

This approach is more about employing what's good about Linux, and not having to rely on build tools such as GruntJS. However, this may not work so well on other platforms such as Windows.

