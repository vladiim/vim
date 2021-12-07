# Prerequisits

* Link to vim file: `ln -s vimrc ~/.vimrc`

* brew install fzf ripgrep

* Add below to ~/.zshrc

```
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
```

***

# Dependancies

* `curl -fLo '~/.vim/autoload/plug.vim' --create-dirs \
    'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

* curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

* curl -LSso ~/.vim/colors/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/onedark.vim

* Open file `vi vimrc`

* Run :so ./vimrc

* ...and install plugs `:PlugInstall`
