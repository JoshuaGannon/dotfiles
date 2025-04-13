#!/bin/bash

echo "📦 Bootstrapping dotfiles setup..."

# Define the dotfiles repo location
DOTFILES_REPO="https://github.com/JoshuaGannon/dotfiles.git"
GIT_DIR="$HOME/.dotfiles"
WORK_TREE="$HOME"

# Step 1: Clone the dotfiles repo as a bare repo
echo "📥 Cloning dotfiles repo..."
git clone --bare "$DOTFILES_REPO" "$GIT_DIR"

# Step 2: Define the alias
echo "⚙️  Adding dotfiles alias to ~/.bashrc"
echo "alias dotfiles='git --git-dir=$GIT_DIR --work-tree=$WORK_TREE'" >> ~/.bashrc
source ~/.bashrc

# Step 3: Try checking out files
echo "📁 Checking out dotfiles..."
dotfiles checkout

if [ $? != 0 ]; then
    echo "⚠️  WARNING: Some files already exist and may conflict."
    echo "Manually back them up and re-run: dotfiles checkout"
else
    echo "✅ Dotfiles checked out successfully."
fi

# Step 4: Set config to hide untracked files
dotfiles config --local status.showUntrackedFiles no

echo "✅ Bootstrap complete! You can now use 'dotfiles' like regular Git."
