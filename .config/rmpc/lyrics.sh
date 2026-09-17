#!/bin/bash
TITLE="$1"
ARTIST="$2"
cd /home/seven/.lyrics
/home/seven/.local/bin/syncedlyrics "$TITLE $ARTIST" -p lrclib
