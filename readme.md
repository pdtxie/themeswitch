### automatic theme switcher for Neovim and {Kitty, Ghostty}

script that listens for macOS theme change notification `AppleInterfaceThemeChangedNotification` instead of polling for interface style, and triggers a theme change for kitty and neovim

supports kitty themes, ghostty themes, neovim colourschemes and lualine themes

#### install instructions
- change the paths and theme name in `themeswitch`
- update the theme name in your nvim config
- update nvim config to make it listen for `SIGUSR1` signal (you can see an example [here](https://github.com/pdtxie/dotfiles))
```lua
vim.api.nvim_create_autocmd({"Signal"}, {
	callback = function()
		vim.cmd([[ colorscheme <your colourscheme> ]])
	end
})
```
- run `./install`


last tested for kitty v0.35.2 and nvim 0.10.0
supports ghostty >= 1.2.0 (see https://github.com/ghostty-org/ghostty/pull/7759)
