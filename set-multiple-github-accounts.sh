#!/bin/bash

# Generate SSH keys
ssh-keygen -t ed25519 -C "EMAIL_ADDRESS"

# Add SSH keys to SSH agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/private_key_path_account1
ssh-add ~/.ssh/private_key_path_account2

# Create or modify SSH config file
cat << EOF > ~/.ssh/config
# Account 1
Host github.com-account1
  HostName github.com
  User git
  IdentityFile ~/.ssh/private_key_path_account1

# Account 2
Host github.com-account2
  HostName github.com
  User git
  IdentityFile ~/.ssh/private_key_path_account2
EOF

# Configure Git
git config --global user.name "USERNAME-account1"
git config --global user.email "EMAIL_ADDRESS-account1"
git config --global user.name "USERNAME-account2"
git config --global user.email "EMAIL_ADDRESS-account2"

