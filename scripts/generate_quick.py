#!/usr/bin/env python3
from pathlib import Path

import markdown

template = Path("quick_template.html")
md_path = Path("quick.md")
directory = Path("quick")
output_path = directory / "index.html"


directory.mkdir(exist_ok=True)
html = template.read_text().replace(
    "[content]",
    markdown.markdown(md_path.read_text(), extensions=["tables"]),
)
html = html.replace("<table>", '<table class="table table-bordered">')
output_path.write_text(html)
