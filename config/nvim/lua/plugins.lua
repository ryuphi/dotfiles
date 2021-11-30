vim.cmd [[packadd pacjer.nvim]]

return require('packer').startup(function()
    use {'dracula/vim', as = 'dracula'}
end)
