return {
    {
        "ThePrimeagen/harpoon",
        config = function()
            require("harpoon").setup()

            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set("n", "<leader>a", mark.add_file)
            vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

            vim.keymap.set("n", "<C-A-P>", function() ui.nav_prev() end)
            vim.keymap.set("n", "<C-A-N>", function() ui.nav_next() end)
        end
    },
}
