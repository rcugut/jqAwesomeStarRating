#!/bin/bash

# npm install coffee-script -g
# npm install uglify-js -g


echo "Compiling ..."
coffee --compile --output ./ src/jqAwesomeStarRating.coffee

echo "Minimizing ..."
uglifyjs jqAwesomeStarRating.js --comments --mangle --compress --output jqAwesomeStarRating.min.js

echo "done."
