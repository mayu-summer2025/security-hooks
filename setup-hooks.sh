#!/bin/bash
# setup-hooks.sh - Team-wide Git hooks installation script

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Setting up Gitleaks pre-commit and pre-push hooks...${NC}"

# Download the latest .gitleaks.toml configuration
curl -s https://raw.githubusercontent.com/mayu-summer2025/security-hooks/main/.gitleaks.toml -o .gitleaks.toml

# Create hooks directory if it doesn't exist
mkdir -p .git/hooks

# Download and install pre-commit hook
echo -e "${YELLOW}Installing pre-commit hook...${NC}"
curl -s https://raw.githubusercontent.com/mayu-summer2025/security-hooks/main/pre-commit -o .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit

# Download and install pre-push hook
echo -e "${YELLOW}Installing pre-push hook...${NC}"
curl -s https://raw.githubusercontent.com/mayu-summer2025/security-hooks/main/pre-push -o .git/hooks/pre-push
chmod +x .git/hooks/pre-push

echo -e "${GREEN}Git hooks successfully installed!${NC}"
echo -e "${YELLOW}These hooks will scan for secrets when you commit and push code.${NC}"