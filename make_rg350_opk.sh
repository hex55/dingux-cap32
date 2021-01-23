#!/bin/sh

OPK_NAME='dingux-cap32.opk'

chmod +x dingux-cap32/dingux-cap32

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=Dingux Cap32
Comment=Amstrad CPC Emulator
Exec=dingux-cap32 %f
Icon=dingux-cap32
Categories=emulators;
X-OD-Manual=dingux-cap32.man.txt
X-OD-Filter=.dsk,.sna
Terminal=false
Type=Application
StartupNotify=true
Name[es_ES]=default.gcw0.desktop
EOF

# Files to be included in OPK
FLIST="default.gcw0.desktop"
FLIST="${FLIST} dingux-cap32/bios"
FLIST="${FLIST} dingux-cap32/graphics"
FLIST="${FLIST} dingux-cap32/background.png"
FLIST="${FLIST} dingux-cap32/dingux-cap32"
FLIST="${FLIST} dingux-cap32/dingux-cap32.man.txt"
FLIST="${FLIST} dingux-cap32/dingux-cap32.png"
FLIST="${FLIST} dingux-cap32/splash.png"
FLIST="${FLIST} dingux-cap32/thumb.png"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} releases/${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

rm -f default.gcw0.desktop

echo ""
echo ${OPK_NAME} created in releases.
