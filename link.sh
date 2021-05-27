set -e
if [ "$(uname)" == "Darwin" ]; then
	brew install coreutils bash-completion miniconda	
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi
cd "$(dirname "$(realpath "$0")")"

ln -s $@ "$(pwd)/.zshrc" ~/.zshrc || :
conda init zsh
ln -s $@ "$(pwd)/.tmux.conf" ~/.tmux.conf || :
ln -s $@ "$(pwd)/.vimrc" ~/.vimrc || :
ln -s $@ "$(pwd)/.aliases" ~/.aliases || :
ln -s $@ "$(pwd)/.bash_profile" ~/.bash_profile || :
ln -s $@ "$(pwd)/.git-prompt.sh" ~/.git-prompt.sh || :

