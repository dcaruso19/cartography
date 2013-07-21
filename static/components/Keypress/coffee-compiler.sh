#!/bin/bash
cd "$( cd "$( dirname "$0" )" && pwd )"
coffee -c keypress.coffee
java -jar compiler.jar --js keypress.js --js_output_file keypress.min.js
rm keypress.js
mv keypress.min.js keypress.js
echo "/* Keypress version 1.0.8 */"|cat - keypress.js > /tmp/out && mv /tmp/out keypress.js
