--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    ____  ____  / /_(_)___  ____  _____
--   / __ \/ __ \/ __/ / __ \/ __ \/ ___/
--  / /_/ / /_/ / /_/ / /_/ / / / (__  )
--  \____/ .___/\__/_/\____/_/ /_/____/
--      /_/
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

vim.g.have_nerd_font = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes" -- Keep signcolumn on by default
vim.opt.showmode = false -- Not needed as we already have lualine
vim.opt.confirm = true -- Confirmation dialogues before unsaved tasks
vim.opt.mouse = "a"
vim.opt.winborder = "bold" --default border for popups

--TABS
vim.opt.expandtab = true -- Convert tab to spaces
vim.opt.tabstop = 4 -- Visual width of tab is 4 spaces
vim.opt.softtabstop = 4 --  "
vim.opt.shiftwidth = 4 --  "
vim.opt.smartindent = false -- Smart indent disabled to avoid conflict with treesitter
vim.opt.smarttab = true
vim.opt.autoindent = true -- Auto indent

--LINES & SCROLL & CURSOR
vim.opt.number = true -- Make line numbers default
vim.opt.relativenumber = true -- Add relative line numbers, help with jumping
vim.opt.cursorline = true -- Cursor line is colored
vim.opt.scrolloff = 999 -- Cursor always centered except top and bottom
vim.opt.wrap = false -- Dont wrap if text gets too large
vim.opt.sidescroll = 1
vim.opt.shortmess:append("I") -- Blank Screen at startup

--CLIPBOARD
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim
end)

--UNDO
vim.opt.undofile = true -- Save undo history

--SEARCHES
vim.opt.ignorecase = true -- Case-insensitive searching UNLESS \C or
vim.opt.smartcase = true --  capital letters in the search term

--SPLITS
vim.opt.splitright = true -- When :vsplit create in right
vim.opt.splitbelow = true -- When :split create in bottom

vim.opt.updatetime = 250 -- Decrease update time (increase if editor feels heavy)
vim.opt.timeoutlen = 500 -- Decrease mapped sequence wait time (increase if keymap fire before you even finished typing`

--Diagnostics
vim.diagnostic.config({
	underline = true,
	virtual_text = true,
	update_in_insert = true,
	severity_sort = true,
	signs = false,
})
