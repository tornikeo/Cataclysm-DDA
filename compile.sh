#!/bin/bash
git config --global --add safe.directory /cdda
echo "Do astyle =================="
make astyle
echo "Make style-json =================="
# make style-json
# echo "List git files to be styled =================="
# echo $(git diff master --diff-filter=AM --name-only '*.json')
# make style-all-json RELEASE=1 
echo "Actually do styling ====================="
# git diff master --diff-filter=AM --name-only '*.json' | xargs -P 0 -L 1 json_formatter
git diff master --diff-filter=AM --name-only '*.json' | xargs -P 0 -L 1 tools/format/json_formatter.cgi

echo "Do compile ======================="
make -j4 TILES=1 RELEASE=1 USE_HOME_DIR=1 CCACHE=1