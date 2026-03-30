#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
OUTPUT="$ROOT/output"

mkdir -p "$OUTPUT"

echo "Building Paleo Hebrew Birkonim..."

typst compile --root "$ROOT" "$ROOT/typst/paleo-only.typ" "$OUTPUT/paleo-only.pdf"
echo "  -> output/paleo-only.pdf"

typst compile --root "$ROOT" "$ROOT/typst/separated.typ" "$OUTPUT/separated.pdf"
echo "  -> output/separated.pdf"

typst compile --root "$ROOT" "$ROOT/typst/bentschers.typ" "$OUTPUT/bentschers.pdf"
echo "  -> output/bentschers.pdf"

echo "Done."
