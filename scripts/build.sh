#!/bin/bash
python3 scripts/generate_cheat.py
jupyter nbconvert --to=html --output=index.html --log-level WARN en.ipynb
