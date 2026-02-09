#!/usr/bin/env bash

# Remove old files
rm ml4w-arch-repo.*

# Create the repo database and files file
repo-add ml4w-arch-repo.db.tar.zst *.pkg.tar.zst 

# Remove Symlinks and rename files
if [ -f ml4w-arch-repo.db ]; then
    rm ml4w-arch-repo.db
fi

if [ -f ml4w-arch-repo.files ]; then
    rm ml4w-arch-repo.files
fi

if [ -f ml4w-arch-repo.db.tar.zst ]; then
    mv ml4w-arch-repo.db.tar.zst ml4w-arch-repo.db
fi

if [ -f ml4w-arch-repo.files.tar.zst ]; then
    mv ml4w-arch-repo.files.tar.zst ml4w-arch-repo.files
fi
