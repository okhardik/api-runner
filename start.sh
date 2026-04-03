#!/bin/bash
# ─────────────────────────────────────────────
# API Runner — Start the server
# ─────────────────────────────────────────────

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Auto-run setup if venv doesn't exist
if [ ! -d "venv" ]; then
    echo "  First run detected — running setup..."
    bash setup.sh
fi

source venv/bin/activate

echo ""
echo "  🚀 Starting API Runner..."
echo "  → http://localhost:5123"
echo ""

python app.py