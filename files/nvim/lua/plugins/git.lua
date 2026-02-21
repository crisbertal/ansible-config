return {
  {
    "tpope/vim-fugitive",
    config = function () 
      vim.keymap.set("n", "<leader>gd", ":Gvdiff!<CR>")
      vim.keymap.set("n", "<leader>gdh", ":diffget //2<CR>")
      vim.keymap.set("n", "<leader>gdl", ":diffget //3<CR>")
    end
  }
}
