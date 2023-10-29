require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"terraform",
		"python",
		"go",
		"bash",
		"hcl",
		"markdown",
		"markdown_inline",
		"yaml",
		"json",
		"jsonnet",
		"lua",
		"vim",
		"vimdoc",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
