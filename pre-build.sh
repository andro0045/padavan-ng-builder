# script is run before the build
# e.g.:
# sudo apt install <pkg>

cp padavan_logo.png loading_bg.png itoggle.png glyphicons-halflings-white.png \
   glyphicons-halflings.png dark-bg.jpg arrow-right.png ajax-loader.gif \
   padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/img/

cp engage.itoggle.css main.css padavan-ng/trunk/user/www/n56u_ribbon_fixed/bootstrap/css/

set -e

TARGET_DIR="padavan-ng/trunk/user/zapret/zapret2"
TMP_DIR="$(mktemp -d)"

unzip -q zapret2.zip -d "$TMP_DIR"

rm -f "$TARGET_DIR/Makefile"
rm -f "$TARGET_DIR/zapret2-1.0.1.tar.gz"

cp -f "$TMP_DIR/Makefile" "$TARGET_DIR/"
cp -f "$TMP_DIR/zapret2-1.0.2.tar.gz" "$TARGET_DIR/"

rm -rf "$TMP_DIR"
