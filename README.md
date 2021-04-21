Neo vim setup

Install nvm:
Linux: `wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash`
Mac: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash`

Add to zshrc file if not already done:

`
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
`

Run:
`source ~/.zshrc` 
Note: this will refresh the terminal with the updated config(zshrc)

Select Node version (i am using 14 right now)
`nvm install 14`

https://github.com/neovim/neovim/wiki/Installing-Neovim
Ubuntu: `sudo apt install neovim`
Mac: `brew install neovim`

Install git on linux
`sudo apt install git`

configure git
`git config --global user.email "brandonschabel1995@gmail.com"`
`git config --global user.name "brandon-schabel"`

Clone git repo in your home directory `$HOME/brandon/.config/nvim`: 
`git clone https://github.com/brandon-schabel/neovim-setup`

Install zsh
Mac: `brew install zsh`
linux : `sudo apt install zsh`

Install Oh My Zsh!
Mac: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Linux: `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"`


// needed for fzf “Ag” function
`sudo apt-get install silversearcher-ag`




Notes:

QuickScope
f followed by a character will take you to the first character on that line semicolon will jump to the next one, t will put the cursor in front, comma will go backward

Uppercase "F" will go backward, 

:version // shows configuration options


