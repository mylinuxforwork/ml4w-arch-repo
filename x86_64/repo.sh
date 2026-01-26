#!/usr/bin/env bash

if [ -f ml4w-arch-repo.db ]; then
    rm ml4w-arch-repo.db
fi

if [ -f ml4w-arch-repo.files ]; then
    rm ml4w-arch-repo.files
fi

if [ -f ml4w-arch-repo.db.tar.zst ]; then
    rm ml4w-arch-repo.tar.zst
fi

if [ -f ml4w-arch-repo.files.tar.zst ]; then
    rm ml4w-arch-repo.files.tar.zst
fi

repo-add ml4w-arch-repo.db.tar.zst *.pkg.tar.zst 

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
