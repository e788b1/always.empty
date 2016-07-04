#!/usr/bin/env python
# encoding: utf-8

import urllib.request
import re

url = "http://www.baidu.com/s?wd=tom+and+jerry"

f = open("data.html", "r")
data = f.read()

# data = urllib.request.urlopen(url).read()
# data = data.decode('UTF-8')

lists = ""
pattern = re.compile('http://www.iqiyi.com/dongman/.*?vfm=', re.S)
items = re.findall(pattern, data)
for item in items:
	lists += item + '\n'

f = open("list.txt", "w+")
f.write(lists)