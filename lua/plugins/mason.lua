return {
	"mason-org/mason.nvim",
	opts = {
		ensure_installed = {
			"lua-language-server",
			"stylua",
			"clangd",
			"clang-format",
			"basedpyright",
			"ruff",
			"rust-analyzer",
			"marksman",
			"prettierd",
		},
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)

		-- auto-install lsp
		local installed_package_names = require("mason-registry").get_installed_package_names()
		for _, v in ipairs(opts.ensure_installed) do
			if not vim.tbl_contains(installed_package_names, v) then
				vim.cmd(":MasonInstall " .. v)
			end
		end
		-- vim.lsp.config() stuff here
		local installed_packages = require("mason-registry").get_installed_packages()
		local installed_lsp_names = vim.iter(installed_packages):fold({}, function(acc, pack)
			table.insert(acc, pack.spec.neovim and pack.spec.neovim.lspconfig)
			return acc
		end)
		-- enable lsp
		vim.lsp.enable(installed_lsp_names)
	end,
}
