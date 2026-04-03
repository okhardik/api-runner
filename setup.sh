#!/bin/bash
# ─────────────────────────────────────────────
# API Runner — One-time setup
# ─────────────────────────────────────────────

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo ""
echo "  ⚡ API Runner — Setup"
echo "  ─────────────────────"
echo ""

# Create virtual environment
if [ ! -d "venv" ]; then
    echo "  Creating virtual environment..."
    python3 -m venv venv
    echo "  ✓ Virtual environment created"
else
    echo "  ✓ Virtual environment already exists"
fi

# Activate and install deps
echo "  Installing dependencies..."
source venv/bin/activate

pip install --upgrade pip -q

if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt -q
else
    pip install flask flask-cors requests -q
fi

echo "  ✓ Dependencies installed"

echo ""
echo "  ✅ Setup complete!"
echo "  Run: ./start.sh"
echo ""