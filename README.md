# Support Forum Plugin

In a nutshell, this plugin allows a forum admin to configure one category as a "Support Forum". The category will then differ in one significant way: **Topics created by regular users can only be seen and accessed by replied to by the topic creator**

As normal, administrators have access to all topics created in the chosen forum. This allows a forum to become a private "support forum", where private information can be shared freely.

## Installation

Install via NodeBB Admin Panel, or `npm install nodebb-plugin-support-forum`

## Testing

Tests follow the [official NodeBB plugin pattern](https://github.com/NodeBB/nodebb-plugin-quickstart/blob/master/test/index.js) — they run under NodeBB's mocha harness against a real (test) database.

1. Add to NodeBB's `config.json`:
   ```json
   "test_database": {
       "host": "127.0.0.1",
       "port": "6379",
       "password": "",
       "database": "1"
   },
   "test_plugins": [
       "nodebb-plugin-support-forum"
   ]
   ```
   Adjust `test_database` for your database of choice; it must differ from the production DB.

2. Link the plugin into your NodeBB install:
   ```bash
   cd /path/to/nodebb-plugin-support-forum && npm link
   cd /path/to/NodeBB && npm link nodebb-plugin-support-forum
   ```

3. Run the tests from the NodeBB root:
   ```bash
   npx mocha test/plugins-installed.js
   ```
   (NodeBB's `test/plugins-installed.js` auto-discovers and runs the `test/` folder of every plugin listed in `test_plugins`. Running `npm test` from the NodeBB root works too but executes the full core suite.)