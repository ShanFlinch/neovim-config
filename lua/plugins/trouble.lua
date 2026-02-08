return {
	"folke/trouble.nvim",
	opts = {
		auto_close = true,
		focus = true,
		modes = {
			diagnostics = {
				preview = {
					type = "float",
					relative = "editor",
					border = "rounded",
					title = "Preview",
					title_pos = "center",
					position = { 0, -2 },
					size = { width = 0.5, height = 0.3 },
					zindex = 200,
				},
			},
		},
		keys = {
            -- stylua: ignore start
			["e"] = {
				action = function(view)
					view:filter({ severity = vim.diagnostic.severity.ERROR }, { id = "severity_filter", action = "set" })
				end,
				desc = "Errors Only",
			},
			["w"] = {
				action = function(view)
					view:filter({ severity = vim.diagnostic.severity.WARN }, { id = "severity_filter", action = "set" })
				end,
				desc = "Warnings Only",
			},
			["r"] = {
				action = function(view)
					view:filter({}, { id = "severity_filter", action = "delete" })
				end,
				desc = "Reset Filters",
			},
			-- stylua: ignore end
		},
	},
	cmd = "Trouble",
	keys = {
        -- stylua: ignore start
        -- Diagnostic
		{ "<leader>dA", "<cmd>Trouble diagnostics toggle<cr>", desc = "[D]iagnostics [A]ll(Trouble)" },
		{ "<leader>dB", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "[D]iagnostics [B]uffer(Trouble)" },
		{ "<leader>dX", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfi[x] List (Trouble)" },
        -- LSP Symbols
        { "<leader>lS", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "[L]SP [S]ymbols (Trouble)" },
		-- Goto Family but trouble
        { "<leader>g?", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)" },
		-- stylua: ignore end
	},
}
