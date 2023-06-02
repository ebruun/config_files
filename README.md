- [Programs to Download](#programs-to-download)
  - [Mac](#mac)
- [Symlinking Dotfiles](#symlinking-dotfiles)



## Programs to Download

### Mac
* [1Password](https://1password.com/downloads/mac/)
* [Firefox](https://www.mozilla.org/en-US/firefox/new/)
* [Chrome](https://www.google.com/chrome/)
* [Magnet](https://apps.apple.com/us/app/magnet/id441258766?mt=12)
* [Github Desktop](https://desktop.github.com/)
    * git command line tools (prompted when in terminal)
* [Hyper](https://hyper.is/)
* [VSCode](https://code.visualstudio.com/Download)
  * Material Icon Theme (icons)
  * Monokai Pro (color)
  * Docker
  * Markdown All in One
  * Paste Image
  * Python
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* [CleanMyMac](https://my.macpaw.com/)
* [Anaconda](https://www.anaconda.com/)
  * if doing it this way probably need to install to `Users/UserName`
  * ~/opt (graphical install)
  * ~ (shell install)
* [Homebrew](https://brew.sh/)
  * `eval "$(/opt/homebrew/bin/brew shellenv)"` >> .zprofile
  * `brew install --cask anaconda`
  * `source /opt/homebrew/anaconda3/bin/activate`
  * `conda init zsh`, for update to .zshrc file
* [Sublime Text](https://www.sublimetext.com/download_thanks?target=mac)





## Symlinking Dotfiles

[Tutorial on Symlinking Dotfiles](https://www.freecodecamp.org/news/dive-into-dotfiles-part-2-6321b4a73608/)

`$ ln -sv ~/Documents/GitHub/config_files/zsh/.zshrc ~/.zshrc`

`$ ln -sv ~/Documents/GitHub/config_files/zsh/.zprofile ~/.zprofile`

`$ ln -sv ~/Documents/GitHub/config_files/zsh/.zshenv ~/.zshenv`

`$ ln -sv ~/Documents/GitHub/config_files/github/.gitignore ~/.gitignore`

`$ ln -sv ~/Documents/GitHub/config_files/github/.gitconfig ~/.gitconfig`

![](/_embed_imgs/README_symlinks_home.png)

