return {
  {
    'mbbill/undotree',
    config = function ()
      -- esto es un comentario
      vim.g.undotree_SetFocusWhenToggle = 1
      vim.g.undotree_ShortIndicators = 1

      -- otra cosa por aqui
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Open undotree' })
    end
  }
}
