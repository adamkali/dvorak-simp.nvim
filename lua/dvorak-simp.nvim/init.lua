local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-a>", ":wa<CR>", opts)
map("n", "<C-q>", ":bd!<CR>", opts)
map("n", ";", ":", opts)
map("n", "Y", '"+y', opts)
map("v", "Y", '"+y', opts)

-- Yank -----------------------
map("n", "<A-y>[", "yi[", opts)           -- Yank inside square brackets in normal mode
map("n", "<A-y>{", "yi{", opts)           -- Yank inside curly braces in normal mode
map("n", "<A-y>(", "yi(", opts)           -- Yank inside parentheses in normal mode
map("n", "<A-y>B", "yiB", opts)           -- Yank inside block (including whitespace) in normal mode
map("n", "<A-y>p", "yip", opts)           -- Yank inside paragraph in normal mode
map("n", "<C-A-y>[", "ya[", opts)         -- Yank around square brackets in normal mode
map("n", "<C-A-y>{", "ya{", opts)         -- Yank around curly braces in normal mode
map("n", "<C-A-y>(", "ya(", opts)         -- Yank around parentheses in normal mode
map("n", "<C-A-y>B", "yaB", opts)         -- Yank around block (including whitespace) in normal mode
map("n", "<C-A-y>p", "yap", opts)         -- Yank around paragraph in normal mode

-- Copy into register ----------
map("n", "<A-Y>[", '"+yi[', opts)         -- Copy inside square brackets in normal mode
map("n", "<A-Y>{", '"+yi{', opts)         -- Copy inside curly braces in normal mode
map("n", "<A-Y>(", '"+yi(', opts)         -- Copy inside parentheses in normal mode
map("n", "<A-Y>B", '"+yiB', opts)         -- Copy inside block (including whitespace) in normal mode
map("n", "<A-Y>p", '"+yip', opts)         -- Copy inside paragraph in normal mode
map("n", "<C-A-Y>[", '"+ya[', opts)       -- Copy around square brackets in normal mode
map("n", "<C-A-Y>{", '"+ya{', opts)       -- Copy around curly braces in normal mode
map("n", "<C-A-Y>(", '"+ya(', opts)       -- Copy around parentheses in normal mode
map("n", "<C-A-Y>B", '"+yaB', opts)       -- Copy around block (including whitespace) in normal mode
map("n", "<C-A-Y>p", '"+yap', opts)       -- Copy around paragraph in normal mode

-- Change ---------------------
map("n", "<A-c>[", "ci[", opts)           -- Change inside square brackets in normal mode
map("n", "<A-c>{", "ci{", opts)           -- Change inside curly braces in normal mode
map("n", "<A-c>(", "ci(", opts)           -- Change inside parentheses in normal mode
map("n", "<A-c>B", "ciB", opts)           -- Change inside block (including whitespace) in normal mode
map("n", "<A-c>p", "cip", opts)           -- Change inside paragraph in normal mode
map("n", "<C-A-c>[", "ca[", opts)         -- Change around square brackets in normal mode
map("n", "<C-A-c>{", "ca{", opts)         -- Change around curly braces in normal mode
map("n", "<C-A-c>(", "ca(", opts)         -- Change around parentheses in normal mode
map("n", "<C-A-c>B", "caB", opts)         -- Change around block (including whitespace) in normal mode
map("n", "<C-A-c>p", "cap", opts)         -- Change around paragraph in normal mode

-- Visual Selection  ----------
map("n", "<A-v>[", "vi[", opts)           -- Visual select inside square brackets in normal mode
map("n", "<A-v>{", "vi{", opts)           -- Visual select inside curly braces in normal mode
map("n", "<A-v>(", "vi(", opts)           -- Visual select inside parentheses in normal mode
map("n", "<A-v>B", "viB", opts)           -- Visual select inside block (including whitespace) in normal mode
map("n", "<A-v>p", "vip", opts)           -- Visual select inside paragraph in normal mode
map("n", "<C-A-v>[", "va[", opts)         -- Visual select around square brackets in normal mode
map("n", "<C-A-v>{", "va{", opts)         -- Visual select around curly braces in normal mode
map("n", "<C-A-v>(", "va(", opts)         -- Visual select around parentheses in normal mode
map("n", "<C-A-v>B", "vaB", opts)         -- Visual select around block (including whitespace) in normal mode
map("n", "<C-A-v>p", "vap", opts)         -- Visual select around paragraph in normal mode

-- Normal move
map('n', 't', 'j', { noremap = true, silent = true })
map('n', 'n', 'k', { noremap = true, silent = true })
map('n', 's', 'l', { noremap = true, silent = true })
map('n', 'k', 'n', { noremap = true, silent = true })

-- Visual move
map('v', 't', 'j', { noremap = true, silent = true })
map('v', 'n', 'k', { noremap = true, silent = true })
map('v', 's', 'l', { noremap = true, silent = true })
map('v', 'k', 'n', { noremap = true, silent = true })

-- Shift move
map('n', 'T', 'J', { noremap = true, silent = true })
map('n', 'N', 'K', { noremap = true, silent = true })
map('n', 'S', 'L', { noremap = true, silent = true })
map('n', 'K', 'N', { noremap = true, silent = true })


