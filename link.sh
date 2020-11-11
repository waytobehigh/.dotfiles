set -e
cd "$(dirname "$(realpath "$0")")"

ln -s $@ "$(pwd)/.tmux.conf" ~/.tmux.conf
ln -s $@ "$(pwd)/.vimrc" ~/.vimrc
ln -s $@ "$(pwd)/.aliases" ~/.aliases

if [ ! -f ~/.bash_profile ]; then
	ln -s $@ "$(pwd)/.bash_profile" ~/.bash_profile;
fi

