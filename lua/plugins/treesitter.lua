return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"bash",
			"c",
			"cpp",
			"python",
			"html",
			"css",
			"lua",
			"rust",
			"hlsl",
			"glsl",
			"cmake",
			"make",
			"cuda",
			"luadoc",
			"markdown",
			"markdown_inline",
			"latex",
			"luap",
			"printf",
			"git_config",
			"git_rebase",
			"gitattributes",
			"gitignore",
			"gitcommit",
			"vim",
			"vimdoc",
			"diff",
			"regex",
			"json",
			"yaml",
			"toml",
			"xml",
			"sql",
			"query",
			"hyprlang",
			"javascript",
			"scss",
			"svelte",
			"tsx",
			"typst",
			"vue",
			"ron",
		}, {
			max_jobs = 8,
		})

		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("TreesitterSetup", { clear = true }),
			desc = "Enable treesitter highlighting and indentation",
			callback = function(event)
				local lang = vim.treesitter.language.get_lang(event.match) or event.match
				local buf = event.buf

				-- This fixes the "unsupported language: TelescopeResults" error
				if vim.bo[event.buf].buftype ~= "" then
					return
				end
				-- DONT run if the filetype is empty
				if event.match == "" then
					return
				end

				-- highlight working
				pcall(vim.treesitter.start, buf, lang)
				-- indentation working
				vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				-- auto-install working
				pcall(function()
					require("nvim-treesitter").install({ lang })
				end)
			end,
		})
	end,
}
