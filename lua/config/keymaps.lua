-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Escape Insert Mode" })
map("i", "kj", "<Esc>", { desc = "Escape Insert Mode" })

map({ "n", "v" }, ";", ":", { desc = "Command Mode Shortcut" })

map("n", "<leader>rc", [[:%s#//.*##<CR>]], { desc = "Remove Double Slash Comments" })
map("n", "<leader>rl", [[:4,$s/\<long long\>/int/g<CR>]], { desc = "Replace 'long long' with 'int'" })
map("n", "<leader>rs", [[:%s/std:://g<CR>]], { desc = "Remove Occurences of 'std::'" })
map(
  "n",
  "<leader>ra",
  ":%s#//.*##e | 4,$s/\\<long long\\>/int/ge | %s/std:://ge | w<CR>",
  { desc = "Apply All Refactors and Save" }
)
map("n", "<leader>r", "", { desc = "frequent" })

map("n", "<S-u>", "<C-r>", { desc = "Undo but with shift U" })

map("n", "<leader>ri", function()
  vim.cmd([[g/^#include/d]])

  local lines = {
    "#include <bits/stdc++.h>",
    "using namespace std;",
    "#define int long long",
  }
  vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)
end, { desc = "Replace #includes with standard header block" })
