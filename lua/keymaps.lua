--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--      __
--     / /_____  __  ______ ___  ____ _____  _____
--    / //_/ _ \/ / / / __ `__ \/ __ `/ __ \/ ___/
--   / ,< /  __/ /_/ / / / / / / /_/ / /_/ (__  )
--  /_/|_|\___/\__, /_/ /_/ /_/\__,_/ .___/____/
--            /____/               /_/
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- stylua: ignore start
local map = vim.keymap.set

-- Split Management
map("n", "<leader>_", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })

-- Next/Prev Error & Warn
map("n", "]e", function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Next Error" })
map("n", "[e", function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR }) end, { desc = "Prev Error" })
map("n", "]w", function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN }) end, { desc = "Next Warning" })
map("n", "[w", function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN }) end, { desc = "Prev Warning" })

-- Better Indenting 
map("x", "<", "<gv")
map("x", ">", ">gv")
-- stylua: ignore end
