#!/bin/bash
wget https://download.blender.org/release/Blender3.1/blender-3.1.2-linux-x64.tar.xz
tar -xvf blender-3.1.2-linux-x64.tar.xz

touch Blender31.desktop
echo "[Desktop Entry]" >> Blender31.desktop
echo "Name=Blender3.1.2" >> Blender31.desktop
echo "Comment=blender3.1.2" >> Blender31.desktop
echo "Exec=/home/alumno/blender-3.1.2-linux-x64/blender" >> Blender31.desktop
echo "Terminal=False" >> Blender31.desktop
echo "Icon=/home/alumno/blender-3.1.2-linux-x64/blender.svg" >> Blender31.desktop
echo "Type=Application" >> Blender31.desktop
echo "Categories=Graphics" >> Blender31.desktop

sudo chmod +x Blender31.desktop
sudo mv -f Blender31.desktop /usr/share/applications/
