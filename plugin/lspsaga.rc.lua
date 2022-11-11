local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript',
    javascript = 'javascript',
    flutter = 'flutter'
  },
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set({'n', 'v'}, '<Leader>ca', '<Cmd>Lspsaga code_action<CR>', opts)
-- Float terminal
vim.keymap.set("n", "gh", "<cmd>Lspsaga open_floaterm<CR>", opts)
-- if you want pass somc cli command into terminal you can do like this
-- open lazygit in lspsaga float terminal
vim.keymap.set("n", "<C-lg>", "<cmd>Lspsaga open_floaterm lazygit<CR>", opts)
-- close floaterm
vim.keymap.set("t", "gj", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], opts)
