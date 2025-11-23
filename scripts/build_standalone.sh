#!/bin/bash
set -e

# 1. Ensure pyinstaller is installed
if ! command -v pyinstaller &> /dev/null; then
    echo "Installing pyinstaller..."
    pip install pyinstaller
fi

# 2. Create the aider.py entrypoint file
cat > aider.py <<EOF
import sys
import traceback

print("Debug: Aider standalone startup", flush=True)

try:
    from aider.main import main
except Exception:
    print("Debug: Import failed", flush=True)
    traceback.print_exc()
    sys.exit(1)

if __name__ == "__main__":
    try:
        main()
    except Exception:
        print("Debug: Exception during main execution", flush=True)
        traceback.print_exc()
        sys.exit(1)
EOF

# 3. Execute the build
# Determine path separator (semicolon for Windows, colon for others)
sep=$(python -c "import os; print(os.pathsep)")

pyinstaller --onefile --add-data "aider/resources${sep}aider/resources" --name aider aider.py
