#!/bin/sh

timestamp=$(date +%s)

BUILDROOT=$(pwd)
PYTHON=$(whereis -qb python2.7)

#Building VSCODE 1.26.0
# electron v2.0.1
echo "Building VSCODE"
cd $BUILDROOT
if [ -f electron-v2.0.1-freebsd-x64.zip ]
then
    mv electron-v2.0.1-freebsd-x64.zip electron-v2.0.1-freebsd-x64.zip.${timestamp}.bak
fi
wget https://github.com/prash-wghats/Electron-VSCode-Atom-For-FreeBSD/releases/download/electron_v2.0.1/electron-v2.0.1-freebsd-x64.zip

if [ -d ./electron ]
then
    mv ./electron ./electron_${timestamp}_bak
fi
mkdir -p electron
tar -xvf electron-v2.0.1-freebsd-x64.zip -C electron/

if [ -d ./vscode ]
then
    mv ./vscode ./vscode_${timestamp}_bak
fi

git clone https://github.com/microsoft/vscode
cd vscode/
git checkout 1.26.0
patch -p1 < ../vscode1.26.diff

export PYTHON=${PYTHON}
yarn add natives@1.1.6

yarn
tar -xvf ../vscode-ripgrep.tar.gz -C node_modules/
yarn compile
../electron/electron . &

### install file VSCode-freebsd-x64.tar.xz
#patch -p1 < ../vscode1.26.package.diff
#./node_modules/.bin/gulp vscode-linux-x64 --max_old_space_size=4096
#cd ..
#mv VSCode-linux-x64 VSCode-freebsd-x64
#cp -R electron/blink_image_resources_200_percent.pak electron/content_resources_200_percent.pak electron/content_shell.pak electron/icudtl.dat electron/libffmpeg.so electron/libnode.so electron/locales electron/natives_blob.bin electron/pdf_viewer_resources.pak electron/snapshot_blob.bin electron/ui_resources_200_percent.pak electron/views_resources_200_percent.pak VSCode-freebsd-x64/
#cp electron/electron VSCode-freebsd-x64/code-oss
#cp electron/resources/electron.asar VSCode-freebsd-x64/resources/electron.asar
#tar -cvf VSCode-freebsd-x64-1.26.0.tar VSCode-freebsd-x64/
#xz VSCode-freebsd-x64-1.26.0.tar

