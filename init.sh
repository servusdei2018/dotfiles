# Initial configurations to apply to a fresh system

# Ignore lifecycle scripts by default (https://www.nodejs-security.com/blog/npm-ignore-scripts-best-practices-as-security-mitigation-for-malicious-packages)
npm config set ignore-scripts true

# Git config
git config --global user.name "Nate Bracy"
git config --global user.email "nate@bracy.dev"
