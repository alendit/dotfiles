#!/usr/bin/env python
import os

ANACONDA_PATH = os.path.expanduser("~/anaconda3/bin")

def switch():
    path = os.environ['PATH']
    pos = path.find(ANACONDA_PATH)

    if pos == -1:
        print("%s:%s" % (ANACONDA_PATH, os.environ['PATH']))
    else:
        print(os.environ['PATH'][pos+len(ANACONDA_PATH)+1:])

if __name__ == "__main__":
    switch()

