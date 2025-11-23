#!/bin/bash
set -e

# 1. Ensure pyinstaller is installed
if ! command -v pyinstaller &> /dev/null; then
    echo "Installing pyinstaller..."
    pip install pyinstaller
fi

# 2. Create the aider.py entrypoint file
cat > aider.py <<EOF
from aider.main import main

if __name__ == "__main__":
    main()
EOF

# 3. Execute the build
# Determine path separator (semicolon for Windows, colon for others)
sep=$(python -c "import os; print(os.pathsep)")
pyinstaller --onefile --add-data "aider/resources${sep}aider/resources" --name aider aider.py
