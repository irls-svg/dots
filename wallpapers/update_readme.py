#!/usr/bin/env python

import os

files = os.listdir("/Users/lili/.dots/wallpapers/")

#image_ext = '".jpg", ".jpeg", ".png", ".bmp", ".gif", ".webm"'

readme_contents = "\n# dots\n\n"

for item in files:
    if item.endswith(".jpg") or item.endswith(".jpeg") or item.endswith(".png") or item.endswith(".bmp") or item.endswith(".gif") or item.endswith(".webm"):
        readme_contents += str(f'## {item}\n\n![{item}]({item})\n\n')
        
with open("/Users/lili/.dots/wallpapers/README.md", "w") as readme:
    readme.write(readme_contents)
    readme.close()

#print(readme_contents)