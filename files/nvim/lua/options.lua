vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.scrolloff = 10

-- avante recomendation
vim.opt.laststatus = 3

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
