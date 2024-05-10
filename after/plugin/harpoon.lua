local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-g>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-f>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-d>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<C-a>", function() harpoon:list():select(5) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-j>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():next() end)
