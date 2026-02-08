local M = {}
local cache = { val = "", last = 0 }

local function get_harpoon_string()
	local ok, harpoon = pcall(require, "harpoon")
	if not ok then
		return ""
	end

	local items = harpoon:list().items
	local curr_file = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":.")
	local parts = {}

	for i = 1, math.min(#items, 9) do
		local item = items[i]
		if item and item.value ~= "" then
			local hl = (item.value == curr_file) and "%#HarpoonActive#" or "%#HarpoonInactive#"
			table.insert(parts, hl .. " " .. i .. "")
		end
	end

	return #parts > 0 and ("%#HarpoonContainer#" .. table.concat(parts) .. "%*") or ""
end

function M.harpoon()
	local now = vim.loop.now()
	if now - cache.last > 100 then
		cache.val = get_harpoon_string()
		cache.last = now
	end
	return cache.val
end

function M.setup_highlights()
	local bg = "#111111"
	vim.api.nvim_set_hl(0, "HarpoonContainer", { bg = bg })
	vim.api.nvim_set_hl(0, "HarpoonActive", { fg = "#e6e6e6", bg = bg, bold = true })
	vim.api.nvim_set_hl(0, "HarpoonInactive", { fg = "#7f7f7f", bg = bg })
end

vim.api.nvim_create_autocmd("ColorScheme", { callback = M.setup_highlights })
M.setup_highlights()

return M
