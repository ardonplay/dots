local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {{"phaazon/hop.nvim"}, {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                        "MunifTanjim/nui.nvim" -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }, {"nvim-treesitter/nvim-treesitter"},
        {"neovim/nvim-lspconfig"}, {"hrsh7th/cmp-nvim-lsp"}, {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"},
            {"hrsh7th/cmp-cmdline"}, {"hrsh7th/nvim-cmp"}, {"hrsh7th/cmp-nvim-lsp"},
            {"williamboman/nvim-lsp-installer"}, {"terrortylor/nvim-comment"}, {"williamboman/mason.nvim"},
            {"jose-elias-alvarez/null-ls.nvim"}, {
        "nvim-telescope/telescope.nvim",
        dependencies = {"nvim-lua/plenary.nvim"}
    }, {"windwp/nvim-autopairs"}, {"windwp/nvim-ts-autotag"}, {
        "akinsho/bufferline.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"}
    }, {
        "glepnir/dashboard-nvim",
        event = "VimEnter",
        dependencies = {{"nvim-tree/nvim-web-devicons"}}
    }, {"lewis6991/gitsigns.nvim"}, {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons", "linrongbin16/lsp-progress.nvim"}
    }, {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true
    }, {"folke/which-key.nvim"}, -- lazy.nvim
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = { -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim", -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify"}
    }, {"theprimeagen/vim-be-good"}, {
        "shaunsingh/nord.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme nord]])
        end
    }, {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        branch = "0.1.x",
        dependencies = {"nvim-lua/plenary.nvim"}
    }},
    install = {
        colorscheme = {"nord"}
    },
    checker = {
        enabled = true
    }
})
