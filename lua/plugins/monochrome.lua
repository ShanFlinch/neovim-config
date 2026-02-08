return {
	"kdheepak/monochrome.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("monochrome")
		local colors = require("monochrome.colors")
		local highlights = {
			FloatBorder = { fg = colors.gray5 },
			SnacksPickerInputBorder = { fg = colors.white },
			FloatTitle = { fg = colors.gray5 },

			CurSearch = { fg = colors.gray1, bg = colors.gray7 },
			IncSearch = { fg = colors.gray8, bg = colors.gray3 },
			Search = { fg = colors.gray1, bg = colors.gray5 },
			Substitute = { fg = colors.gray1, bg = colors.fg },
			ftLabel = { fg = colors.fg, bg = colors.bg },

			CursorLine = { bg = "#111111" },
			LineNr = { fg = colors.gray5 },
			CursorLineNr = { bg = "#111111", bold = true },

			SnacksPickerListCursorLine = { bg = colors.gray1, bold = true },
			SnacksPickerPreviewCursorLine = { bg = colors.gray1 },
			SnacksPickerPrompt = { fg = colors.white },
			SnacksInputTitle = { fg = colors.gray7 },
			SnacksInputPrompt = { link = "SnacksInputNormal" },
			SnacksIndent = { fg = colors.gray4 },
			SnacksInputIcon = { fg = colors.gray7 },
			SnackInputBorder = { link = "FloatBorder" },

			MiniCmdlinePeekLineNr = { fg = colors.gray3 },

			NonText = { fg = colors.gray7 },
			LspReferenceText = { bg = "#2b2b2b" },

			-- Diagnostic
			DiagnosticError = { fg = colors.gray1, bg = colors.fg, italic = true, bold = true },
			DiagnosticWarn = { fg = colors.gray1, bg = colors.gray5, italic = true, bold = true },
			DiagnosticInfo = { fg = colors.gray8, italic = true },
			DiagnosticHint = { fg = colors.gray6, italic = true },
			DiagnosticOk = { fg = colors.gray8, bold = true },
			DiagnosticUnderlineError = { sp = colors.white, undercurl = true },
			DiagnosticUnderlineWarn = { sp = colors.gray7, undercurl = true },
			DiagnosticUnderlineInfo = { sp = colors.gray2, undercurl = true },
			DiagnosticUnderlineHint = { sp = colors.gray4, undercurl = true },
			DiagnosticUnderlineOk = { sp = colors.gray2, undercurl = true },

			Visual = { fg = colors.gray2, bg = colors.gray8 },

			RenderMarkdownH1 = { fg = "#141414", bold = true },
			RenderMarkdownH1Bg = { fg = "#141414", bg = "#cccccc", bold = true },
			RenderMarkdownH2 = { fg = "#141414", bold = true },
			RenderMarkdownH2Bg = { fg = "#141414", bg = "#b7b7b7", bold = true },
			RenderMarkdownH3 = { fg = "#141414", bold = true },
			RenderMarkdownH3Bg = { fg = "#141414", bg = "#a3a3a3", bold = true },
			RenderMarkdownH4 = { fg = "#141414", bold = true },
			RenderMarkdownH4Bg = { fg = "#141414", bg = "#8e8e8e", bold = true },
			RenderMarkdownH5 = { fg = "#141414", bold = true },
			RenderMarkdownH5Bg = { fg = "#141414", bg = "#7a7a7a", bold = true },
			RenderMarkdownH6 = { fg = "#141414", bold = true },
			RenderMarkdownH6Bg = { fg = "#141414", bg = "#666666", bold = true },
			["@markup.heading"] = { bold = true },
			["@markup.quote"] = { fg = colors.gray8, italic = true },
			["@markup.link.label.markdown_inline"] = { fg = colors.gray6, italic = true, bold = true },
			["@markup.link.markdown_inline"] = { fg = colors.gray6, italic = true },
		}
		for group, settings in pairs(highlights) do
			vim.api.nvim_set_hl(0, group, settings)
		end

		-- List of highlight groups to make transparent
		local groups = {
			"Normal",
			"NormalNC",
			"Folded",
			"NonText",
			"SpecialKey",
			"VertSplit",
			"SignColumn",
			"EndOfBuffer",
		}

		for _, group in ipairs(groups) do
			vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
		end
	end,
}
