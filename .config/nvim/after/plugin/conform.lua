require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		yaml = { "yamlfix", "yamlfmt" },
		terraform = { "terraform_fmt" },
		sh = { "shfmt", "shellcheck" },
		markdown = { "markdownlint" },
		go = { "gofmt" },
	},
	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	},
})
