#!/bin/bash

# Install chezmoi if it doesn't exist so that we can actually install dotfiles
# echo "chezmoi install"
# [[ ! -f ~/bin/chezmoi ]] && sh -c "$(curl -fsLS chezmoi.io/get)"

# Install some deps if they're not there
# if ! command -v nvim &> /dev/null
# then
#   echo "deps install"
#   sudo add-apt-repository -y ppa:neovim-ppa/unstable
#   sudo add-apt-repository -y ppa:aos1/diff-so-fancy
#   sudo apt-get update -qq && \
#   sudo apt-get install -o Dpkg::Options::=--force-confdef -yq --no-install-recommends \
#   diff-so-fancy \
#   neovim \
#   tmux \
#   tmuxinator && \
#   sudo apt-get install -y -o Dpkg::Options::="--force-overwrite" \
#   bat \
#   zstd \
#   ripgrep && \
#   sudo rm -rf /var/lib/apt/lists/*
# fi

# echo "chezmoi init"
# ~/bin/chezmoi init

# pushd ~/.local/share/chezmoi
#   git remote add origin $SUPERVISOR_DOTFILE_REPO
#   git branch -M main
#   git pull origin main
# popd

# echo "chezmoi apply"
# ~/bin/chezmoi apply

# source ~/.bashrc

# Script to duplicate/clone repos
# function vsdup() {
# 	set -eu;
# 	if test -z "${1:-}"; then {
# 		# We could generate a random string but that might not be intuitive to work with
# 		printf 'error: %s\n' 'Please provide a string';
# 		exit 1;
# 	} fi

# 	local main_workdir="$GITPOD_REPO_ROOT";
# 	local dup_dir="${GITPOD_REPO_ROOT%/*}/$1";

# 	printf 'info: Copying %s into %s ...\n' "$main_workdir" "$dup_dir";
# 	rm -rf "$dup_dir";
# 	cp -ar "$main_workdir" "$dup_dir";

# 	printf 'info: Starting a new VSCode instance from %s\n' "$dup_dir";
# 	printf 'info: If it stays stuck here, try to reload the browser window and re-run this command\n';
# 	gp ports await 23000 1>/dev/null;
# 	code "$dup_dir";
# 	printf 'info: Successful\n'
# 	set +eu
# }

# target_bin="$HOME/.local/bin/vsdup"

# printf '%s\n' '#!/usr/bin/bash' \
# 				"$(declare -f vsdup)" \
# 				'vsdup "$@"' > "$target_bin"
# chmod +x "$target_bin";

# Install packer dependencies
# echo "packersync"
# nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
# echo "packersync"
# nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' # Yep, twice


# Install git alias
git config --global push.default current
git config --global alias.co commit
git config --global alias.ch checkout
git config --global alias.st status
git config --global pull.rebase false
git config --global push.autoSetupRemote true


