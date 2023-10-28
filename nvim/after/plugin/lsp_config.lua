local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"yamlls",
		"terraformls",
		"pylsp",
		"marksman",
		"jqls",
		"jsonnet_ls",
		"jsonls",
		"helm_ls",
		"gopls",
		"dockerls",
		"bashls",
		"lua_ls",
		"tflint",
	},
	handlers = {
		lsp_zero.default_setup,
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"stylua",
		"isort",
		"black",
		"pylint",
		"selene",
		"hadolint",
		"golangci-lint",
		"flake8",
		"pylint",
		"yamllint",
		"markdownlint",
		"yamlfix",
		"yamlfmt",
		"shfmt",
		"shellcheck",
		"gofumpt",
		"codespell",
	},
})

-- Autocomplete keybindings
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-y>"] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil

-- lsp_zero.setup_nvim_cmp({
--   mapping = cmp_mappings,
-- })
