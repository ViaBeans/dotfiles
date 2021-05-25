echo "Installing apt packages:\n";

sudo apt-get install curl git vim zsh tmux;

echo "Replacing config files:\n";

cp ./{.zshrc, .tmux.conf, .vimrc, antigen.zsh} ~; 

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;

echo "Installing vim workflow\n:";

vim --cmd ':PlugInstall' \
     -c 'qa!';

echo "Run Ctrl-A then I (caps) to install nord theme for tmux\n:";

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;

echo "Rerunning terminal to run zsh(configure p10k\n";

exec zsh;