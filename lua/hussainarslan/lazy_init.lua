local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = 'hussainarslan.lazy',
    change_detection = { notify = false}
})
--require("lazy").setup({
--    'folke/tokyonight.nvim',
--    'nvim-lua/plenary.nvim',
--    'nvim-telescope/telescope.nvim',
--
--    {
--        'rose-pine/neovim',
--        name = 'rose-pine',
--        config = function()
--            vim.cmd('colorscheme rose-pine')
--        end
--    },
--    {
--        'folke/trouble.nvim',
--        config = function()
--            require('trouble').setup {
--                icons = false,
--            }
--        end
--    },
--    {
--        'nvim-treesitter/nvim-treesitter',
--        build = ':TSUpdate',
--    },
--  'nvim-treesitter/playground',
--  'theprimeagen/harpoon',
--  'mbbill/undotree',
--  'tpope/vim-fugitive',
--  --[[
--  use {
--	  "neovim/nvim-lspconfig",
--	  requires = {
--		  {"williamboman/mason.nvim"},
--		  {"williamboman/mason-lspconfig.nvim"},
--		  {"hrsh7th/cmp-nvim-lsp"},
--		  {"hrsh7th/cmp-buffer"},
--		  {"hrsh7th/cmp-path"},
--		  {"hrsh7th/cmp-cmdline"},
--		  {"hrsh7th/nvim-cmp"},
--		  {"L3MON4D3/LuaSnip"},
--		  {"saadparwaiz1/cmp_luasnip"},
--		  {"j-hui/fidget.nvim"},
--	  },
--  }
--  ]]--
-- }, {})
