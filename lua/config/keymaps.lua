-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Escape Insert Mode" })
map("i", "kj", "<Esc>", { desc = "Escape Insert Mode" })

map({ "n", "v" }, ";", ":", { desc = "Command Mode Shortcut" })

map("n", "<leader>rc", [[:%s#//.*##<CR>]], { desc = "Remove Double Slash Comments" })
map("n", "<leader>rl", [[:4,$s/\<long long\>/int/g<CR>]], { desc = "Replace 'long long' with 'int'" })
map("n", "<leader>rl", [[:%s/std:://g<CR>]], { desc = "Replace 'long long' with 'int'" })
map("n", "<leader>r", "", { desc = "frequent" })

map("n", "<S-u>", "<C-r>", { desc = "Undo but with shift U" })
