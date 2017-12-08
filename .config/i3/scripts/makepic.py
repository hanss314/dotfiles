#!/bin/python3

import sys
from PIL import Image, ImageDraw

wallpaper = sys.argv[1]
dims = []
curr = []
for n, arg in enumerate(sys.argv[2:]):
    curr.append(int(arg))
    if n%5 == 4:
        curr[1] -= 22
        curr[2] += curr[0]
        curr[3] += curr[1]+22
        dims.append(tuple(curr))
        curr = []

dims.append((0, 745, 1366, 768, 256))
base = Image.open(wallpaper).resize((1366, 768), Image.LINEAR)
screen = Image.open('/tmp/screen.png')
for dim in dims:
    alpha = dim[4]
    win = screen.crop(dim[:4])
    w, h = win.size
    win = win.resize((w//20, h//20), Image.LINEAR).resize((w, h), Image.NEAREST)
    mask=Image.new('L', win.size, color=255)
    ImageDraw.Draw(mask).rectangle((0, 22, *win.size), fill=alpha)
    win.putalpha(mask)
    base.paste(win, dim[0:2], win)

if len(dims) == 1:
    w, h = base.size
    base = base.resize((w//20, h//20), Image.LINEAR).resize((w, h), Image.NEAREST)
 

base.save('/tmp/screen.png')

