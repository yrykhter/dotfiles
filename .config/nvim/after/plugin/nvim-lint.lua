-- vim.keymap.set("n", "<leader>l", function()
-- 	lint.try_lint()
-- end, { desc = "Trigger linting for current file" })

local lint = require("lint")

lint.linters_by_ft = {
	docker = { "hadolint" },
	go = { "golangci-lint" },
	bash = { "shellcheck" },
	python = { "flake8", "pylint" },
	yaml = { "yamllint" },
	markdown = { "markdownlint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		lint.try_lint()
	end,
})
