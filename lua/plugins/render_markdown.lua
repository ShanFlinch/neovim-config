return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	opts = {
		render_modes = { "n", "c", "t" },
		heading = {
			position = "inline",
			width = { "full", "full", "block" },
			sign = false,
			icons = { "  ", " ", " ", " ", "", "" },
		},
		bullet = { icons = { " ", " ", " ", " ", " ", " " } },
		checkbox = {
			checked = { icon = "󰸞 " },
			unchecked = { icon = "□ " },
		},
		pipe_table = { preset = "heavy", alignment_indicator = "" },
		link = {
			hyperlink = "󰌷 ",
			custom = {
				discord = { pattern = "discord%.com", icon = "󰙯 " },
				github = { pattern = "github%.com", icon = "󰊤 " },
				gitlab = { pattern = "gitlab%.com", icon = "󰮠 " },
				google = { pattern = "google%.com", icon = "󰊭 " },
				reddit = { pattern = "reddit%.com", icon = "󰑍 " },
				stackoverflow = { pattern = "stackoverflow%.com", icon = "󰓌 " },
				steam = { pattern = "steampowered%.com", icon = " " },
				twitter = { pattern = "x%.com", icon = " " },
				wikipedia = { pattern = "wikipedia%.org", icon = "󰖬 " },
				youtube = { pattern = "youtube[^.]*%.com", icon = "󰗃 " },
				youtube_short = { pattern = "youtu%.be", icon = "󰗃 " },
			},
		},
		indent = {
			enabled = true,
			icon = "",
			per_level = 1,
			skip_heading = false,
			skip_level = 0,
			highlight = "SnacksIndent",
		},
	},
}
