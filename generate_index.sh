#!/bin/bash

echo "<!DOCTYPE html>" > index.html
echo "<html><head><title>Index</title></head><body>" >> index.html
echo "<h1>Index of HTML Files</h1><ul>" >> index.html

for file in *.html; do
    if [ "$file" != "index.html" ]; then
        echo "<li><a href=\"$file\">$file</a></li>" >> index.html
    fi
done

echo "</ul></body></html>" >> index.html
