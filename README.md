# Introduction

This is the vim configuration package including the necessary plugins and vimrc file.

# Install

1. git clone to local:

```shell
  git clone https://github.com/briandong/vimConfig.git ~/.vim
```

2. sync out all the plugins:
```shell
  cd .vim
  git submodule init
  git submodule update
```

# Modify

## Add Plugin

```shell
  git submodule add https://github.com/tpope/vim-git.git bundle/vim-git
```
## Remove Plugin

```shell
  git submodule deinit bundle/vim-git
  git rm --cached bundle/vim-git
```

## Commit

```shell
  git status
  git add <files>
  git commit -m "updated files"
  git push
```

# Markdown

1. install Node.js and curl
1. run `node -v` / `npm -v` and `curl` to check
1. install the mini-server
   * linux: `[sudo] npm -g install instant-markdown-d`
   * windows: `npm -g install instant-markdown-d`
1. open up a markdown file

# Python Support

## jedi-vim

jedi-vim supports the following commands
```shell
* Completion <C-Space>
* Goto assignment <leader>g (typical goto function)
* Goto definition <leader>d (follow identifier as far as possible, includes imports and statements)
* Goto (typing) stub <leader>s
* Show Documentation/Pydoc K (shows a popup with assignments)
* Renaming <leader>r
* Usages <leader>n (shows all the usages of a name)
* Open module, e.g. :Pyimport os (opens the os module)
```

