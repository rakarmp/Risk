#!/system/bin/sh
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

REPLACE="
"
ui_print " "
ui_print "  ╔═══╗───╔╗"
ui_print "  ║╔═╗║───║║"
ui_print "  ║╚═╝╠╦══╣║╔╗"
ui_print "  ║╔╗╔╬╣══╣╚╝╝"
ui_print "  ║║║╚╣╠══║╔╗╗"
ui_print "  ╚╝╚═╩╩══╩╝╚╝"
ui_print " "
if [ "$KSU" == true ]; then
ui_print "  KernelSu Ver: $KSU_VER"
ui_print "  KernelSu Ver Code: $KSU_VER_CODE"
ui_print "  KernelSu Kernel Ver Code: $KSU_KERNEL_VER_CODE"
else
ui_print "  Magisk Ver: $MAGISK_VER"
ui_print "  Magisk Ver Code: $MAGISK_VER_CODE"
fi
sleep 0.5
ui_print "  Risk is a magisk module open source"
ui_print "  project, you can view the entire code"
ui_print "  to make sure there is no malware or"
ui_print "  viruses that harm your device."
sleep 0.5
ui_print " "
sleep 1
ui_print "- Setup Risk Permission"
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
chmod +x "$MODPATH/system/bin/risk"

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/system/bin 0 0 0777 0755
}