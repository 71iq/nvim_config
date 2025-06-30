-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Escape Insert Mode" })
map("i", "kj", "<Esc>", { desc = "Escape Insert Mode" })

map({ "n", "v" }, ";", ":", { desc = "Command Mode Shortcut" })

map("n", "<leader>rc", [[:%s#//.*##<CR>]], { desc = "Remove Double Slash Comments" })

map("n", "<S-u>", "<C-r>", { desc = "Undo but with shift U" })
