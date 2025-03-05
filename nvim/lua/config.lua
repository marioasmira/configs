-- This section defines the options for the nvim-tree plugin
-- disable netrw at the very start of your init.lua
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
    folders_first = true,
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    add_trailing = true,
    hidden_display = "all",
    highlight_git = "icon",
    indent_markers = {
	enable = true,
    }
  },
  filters = {
    dotfiles = true,
  },
  git = {
    enable = true,
  }
})

-- This section defines the keymaps to use in the toggled terminals
require("toggleterm").setup{
	insert_mappings = true,
	terminal_mappings=true,
}

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
