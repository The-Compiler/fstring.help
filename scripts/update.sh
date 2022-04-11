#!/bin/bash
git pull --ff-only
scripts/build.sh
cp -R img index.html /var/www/virtual/bruhinsw/fstring.help/
