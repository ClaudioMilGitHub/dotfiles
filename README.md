# Dotfiles
## Description
This neovim config is meant to be minimalist and native driven: no external plugin manager but just vim.pack and native lsp.
## Installation requirements
* neovim 0.12+
* Conform plugins installed from command
* ```
    git clone --depth=1 https://github.com/stevearc/conform.nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/conform/start/conform.nvim
    ```
* Blink.cmp get installed when you first launch neovim in lazymode. You get a info message when entering insert mode notifying you to get the latest release of blink.cmp. To achieve this:
    * Position yourself in /.local/share/nvim/site/pack/core/opt/blink.cmp and launch cmd:
    * ```
      cargo build --release
      ```

