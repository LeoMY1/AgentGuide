#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

node --check "$ROOT_DIR/assets/site.js"

rg -q '<link rel="canonical" href="https://adongwanai.github.io/AgentGuide/">' "$ROOT_DIR/index.html"
rg -q '<meta property="og:image" content="https://adongwanai.github.io/AgentGuide/assets/agentguide-social.png">' "$ROOT_DIR/index.html"
rg -q 'application/ld\+json' "$ROOT_DIR/index.html"
rg -q 'data/resources.json' "$ROOT_DIR/assets/site.js"
rg -q 'data-github-forks' "$ROOT_DIR/index.html"

python3 - "$ROOT_DIR/data/resources.json" <<'PY'
import json
import sys
from pathlib import Path

resources = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
ids = [item["id"] for item in resources]
assert len(resources) >= 120
assert len(ids) == len(set(ids))
assert all(item["category"] and item["type"] and item["level"] for item in resources)
assert any(item["id"] == "external-learn-workbuddy" for item in resources)
PY

rg -q '<loc>https://adongwanai.github.io/AgentGuide/</loc>' "$ROOT_DIR/sitemap.xml"
rg -q '<loc>https://adongwanai.github.io/AgentGuide/research/</loc>' "$ROOT_DIR/sitemap.xml"
rg -q '<loc>https://adongwanai.github.io/AgentGuide/interview/questions/q-1/</loc>' "$ROOT_DIR/sitemap.xml"
