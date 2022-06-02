#!/bin/bash

### OLIVE ####
link="https://github.com/olive-editor/olive/releases/download/0.1.0/Olive-1e3cf53-x86_64.AppImage"
wget $link
sudo chmod +x Olive-1e3cf53-x86_64.AppImage
mkdir -p $PWD/AppImages/
mv -f Olive-1e3cf53-x86_64.AppImage $PWD/AppImages/

touch OliveEditor.desktop
echo "[Desktop Entry]" >> OliveEditor.desktop
echo "Name=Olive-Editor" >> OliveEditor.desktop
echo "Comment=olive-editor" >> OliveEditor.desktop
echo "Exec=$PWD/AppImages/Olive-1e3cf53-x86_64.AppImage" >> OliveEditor.desktop
echo "Terminal=False" >> OliveEditor.desktop
echo "Icon=$PWD/AppImages/Olive.png" >> OliveEditor.desktop
echo "Type=Application" >> OliveEditor.desktop
echo "Categories=Graphics" >> OliveEditor.desktop

sudo chmod +x OliveEditor.desktop
sudo mv -f OliveEditor.desktop /usr/share/applications/

#### BLENDER ####
wget https://download.blender.org/release/Blender3.1/blender-3.1.2-linux-x64.tar.xz
tar -xvf blender-3.1.2-linux-x64.tar.xz

touch Blender31.desktop
echo "[Desktop Entry]" >> Blender31.desktop
echo "Name=Blender3.1.2" >> Blender31.desktop
echo "Comment=blender3.1.2" >> Blender31.desktop
echo "Exec=$PWD/blender-3.1.2-linux-x64/blender" >> Blender31.desktop
echo "Terminal=False" >> Blender31.desktop
echo "Icon=$PWD/blender-3.1.2-linux-x64/blender.svg" >> Blender31.desktop
echo "Type=Application" >> Blender31.desktop
echo "Categories=Graphics" >> Blender31.desktop

sudo chmod +x Blender31.desktop
sudo mv -f Blender31.desktop /usr/share/applications/

