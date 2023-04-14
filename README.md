## Note
change vim plugin manager into vim-plug.

## Usage

### Installation and Requisites:

1. backup `.vim` directory and `.vimrc` first.(IMPORTANT!)

2. `cd ~` to change directory to home directory.

3. copy files to home directory:

```bash
        git clone git://github.com/nunumick/vim.git
```

4. make a symbolic link `.vim` to `vim` that we just cloned.

```bash
        ln -s vim ~/.vim
```

5. link the vimrc

```bash
        ln -s ~/.vim/vimrc ~/.vimrc
```

6. link the gvimrc

```bash
        ln -s ~/.vim/gvimrc ~/.gvimrc
```

7. install `ack`.

```bash
        brew install ack
```


### Install plugins:

Launch `vim`, run `:PlugInstall`

### Update plugins:

Launch `vim`, run `:PlugUpdate`

