require("rose-pine").setup({
	-- disable_background = true,
	vim.cmd("colorscheme rose-pine"),
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" }),
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }),
})

-- require("onedark").setup({
-- 	style = "warm",
-- 	transparent = false,
-- })
-- require("onedark").load()
