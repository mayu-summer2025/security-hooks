#!/bin/bash
# global-hooks-setup.sh

# Add a git alias for setting up hooks
git config --global alias.setup-hooks '!curl -s https://raw.githubusercontent.com/mayu-summer2025/security-hooks/main/setup-hooks.sh | bash'

echo "You can now run 'git setup-hooks' in any repository to install security hooks."