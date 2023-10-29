vim.g.mapleader = " "

-- Project View
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iew" })

-- Pretty json
vim.keymap.set("n", "<leader>pj", "<cmd>%!jq<cr>", { desc = "[P]retty [J]son" })

-- Add +x to file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Quit all opened buffers
vim.keymap.set("n", "<leader>Q", "<cmd>qa!<cr>", { silent = true, desc = "[Q]uit nvim" })

-- Create new session in tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Move lines where we need in Visual mode
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- Up your next rows to that one with a space
vim.keymap.set("n", "J", "mzJ`z")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete cursor row + next one and up other rows to cursor
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Get an opportunity to replace word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
