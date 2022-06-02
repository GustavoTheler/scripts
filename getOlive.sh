#!/bin/bash
link="https://github.com/olive-editor/olive/releases/download/0.1.0/Olive-1e3cf53-x86_64.AppImage"
wget $link
sudo chmod +x Olive-1e3cf53-x86_64.AppImage
mkdir -p ~/AppImages/
mv -f Olive-1e3cf53-x86_64.AppImage ~/AppImages/

touch OliveEditor.desktop
echo "[Desktop Entry]" >> OliveEditor.desktop
echo "Name=Olive-Editor" >> OliveEditor.desktop
echo "Comment=olive-editor" >> OliveEditor.desktop
echo "Exec=~/AppImages/Olive-1e3cf53-x86_64.AppImage" >> OliveEditor.desktop
echo "Terminal=False" >> OliveEditor.desktop
echo "Icon=~/AppImages/Olive.png" >> OliveEditor.desktop
echo "Type=Application" >> OliveEditor.desktop
echo "Categories=Graphics" >> OliveEditor.desktop

sudo chmod +x OliveEditor.desktop
sudo mv OliveEditor.desktop /usr/share/applications/

#./Olive-1e3cf53-x86_64.AppImage

