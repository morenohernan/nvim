# Custom Nvim Configuration

This is my custom configuration for Neovim. I'm using AstroNvim as base configuration (https://astronvim.com/). 

This is the look:
<img width="1663" alt="image" src="https://user-images.githubusercontent.com/700619/235500591-306592ba-f9b7-4a45-a6b1-79350443e6be.png">

<img width="1672" alt="image" src="https://user-images.githubusercontent.com/700619/235378888-5afb7fc4-26bb-4335-8066-0daa4f73a7aa.png">

Configuration:
- Install Nerd fonts 3270 https://www.nerdfonts.com/font-downloads
- Install Neovim (0.9+) https://github.com/neovim/neovim/releases and configure Neovim to be in the path.
- By default Neovim uses 3 main directories ( ~/.config, ~/.local/share, ~/.local/state). If you want to change the default directories of installation then you can use the following environment variables: 

  export XDG_CONFIG_HOME=your_path/config

  export XDG_STATE_HOME=your_path/state

  export XDG_DATA_HOME=your_path/share 

- Install AstroNvim. But before to do it. You could opt to customize the default directory location. In order to do that set the following:

  alias avim='NVIM_APPNAME=AstroNvim nvim' 

- Then in terminal execute: git clone --depth 1 https://github.com/AstroNvim/AstroNvim $XDG_CONFIG_HOME/AstroNvim
- Install these dotfiles. Execute: git clone https://github.com/morenohernan/nvim $XDG_CONFIG_HOME/AstroNvim/lua/user
- In terminal execute: avim
- Enjoy !!!

