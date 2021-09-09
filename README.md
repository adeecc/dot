# Dotfiles (BSPWM | Polybar | Rofi)

* Author: [adeecc](https://github.com/adeecc/)
* Date: Aug 30, 2021


## Requirements

<details>
    <summary> Essentials </summary>
    
    - bspwm
    - sxhkd
    - picom (ibhagwan-git)
    - polybar
    - xrandr
    - dunst 
    - network-manager-applet
    - rofi
    - feh
    - pavucontrol, pactl
</details>

<details>
    <summary> Non-Essential (may be removed manually) </summary>

    - alacritty
    - zsh
    - starship
    - neovim
</details>

<details>
    <summary> Optional </summary>

    - plug (nvim)
    - exa
    - tree
    - neofetch
    - ripgrep
    - bat
</details>



## Usage

1. Clone to a git bare repo in the `$HOME` directory.

```sh
git clone --bare https://github.com/adeecc/dot.git $HOME/.dot
```

2. Checkout the contents from bare repository to `$HOME`

```sh
git --git-dir=$HOME/.dot --work-tree=$HOME checkout
```

> In case the above command fails, it might be due to pre-existing files. Delete the conflicting files and try again

3. Stop showing untracked files in the status

```sh
git --git-dir=$HOME/.dot --work-tree=$HOME config --local status.showUntrackedFiles no
```
