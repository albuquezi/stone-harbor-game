#!/bin/sh

# Start the local webserver, available on port 8000
python3.9 -m http.server --cgi 8000 &

# If you have only Python 2, comment out the previous line and
# replace with:
# python -m SimpleHTTPServer 8000

# Watch for changes to the build
node_modules/webpack/bin/webpack.js -w &
