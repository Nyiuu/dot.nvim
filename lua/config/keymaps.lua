-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
keymap.set("n", ";", ":")
keymap.set("c", "'", "wq<enter>")

keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")
keymap.set("n", "L", "2e")
keymap.set("n", "H", "2b")

keymap.set("n", "]t", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymap.set("n", "[t", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
