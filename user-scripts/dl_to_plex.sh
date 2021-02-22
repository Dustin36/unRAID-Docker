#!/bin/bash
# ======= FUNCTIONS
echo "=== Moving files..."
echo "==================================="
echo "=========== rsync logs ==========="
echo ""
rsync -r --progress --remove-source-files /mnt/user/Data/Downloads/2.\ jDL/_done_plex/ /mnt/user/Plex/
echo ""
echo "==================================="
echo ""
echo "=== Cleaning up..."
rm /mnt/user/Data/Downloads/2.\ jDL/_done_plex/* -r
echo "=== Creating folder..."
mkdir /mnt/user/Data/Downloads/2.\ jDL/_done_plex/Anime
mkdir /mnt/user/Data/Downloads/2.\ jDL/_done_plex/Serien
mkdir /mnt/user/Data/Downloads/2.\ jDL/_done_plex/Serien.nsl
mkdir /mnt/user/Data/Downloads/2.\ jDL/_done_plex/Filme
mkdir /mnt/user/Data/Downloads/2.\ jDL/_done_plex/Filme/x_not.so.legal
echo "=== Done!"
