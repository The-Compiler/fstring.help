#!/bin/bash
cd ~/proj/fstring.help/
source .venv/bin/activate
git pull --quiet --ff-only
scripts/build.sh
cp -R img index.html /var/www/virtual/bruhinsw/fstring.help/
