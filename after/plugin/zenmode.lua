vim.keymap.set("n", "<leader>zm", function()
    require("zen-mode").setup {
        window = {
            width = 90,
            options = { }
        },
    }
    require("zen-mode").toggle()
    vim.wo.wrap = false
    vim.wo.number = true
    vim.wo.rnu = true
    ColorVim()
end)


vim.keymap.set("n", "<leader>zM", function()
    require("zen-mode").setup {
        window = {
            width = 80,
            options = { }
        },
    }
    require("zen-mode").toggle()
    vim.wo.wrap = false
    vim.wo.number = false
    vim.wo.rnu = false
    vim.opt.colorcolumn = "0"
    ColorVim()
end)
