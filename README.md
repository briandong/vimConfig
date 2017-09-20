# Introduction

This is the vim configuration package including the necessary plugins and .vimrc file.

# Install
1. git clone to local:
```
  git clone git@github.com:briandong/vimConfig.git ~/.vim
```
2. create symbol link for ~/.vimrc:
```
  ln -s ~/.vim/vimrc ~/.vimrc
```
3. sync out the plugins:
```
  ~/.vim$ git submodule init
  ~/.vim$ git submodule update
```
# Modify
How to add plugins:
```
  git submodule add https://github.com/tpope/vim-git.git bundle/vim-git
  git submodule init
  git submodule update
  git submodule foreach git submodule init
  git submodule foreach git submodule update
```

# Commit
```
  ~/.vim$ git status
  ~/.vim$ git add <files>
  ~/.vim$ git commit -m "updated files"
  ~/.vim$ git push
```

