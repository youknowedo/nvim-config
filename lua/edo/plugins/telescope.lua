return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "debugloop/telescope-undo.nvim"
    },

    config = function()
        require("telescope").setup({
            extensions = {
                undo = {

                }
            }
        })

        require("telescope").load_extension("undo")

        local builtin = require("telescope.builtin")

        vim.keymap.set('n', '<leader>p', builtin.find_files, {})
        vim.keymap.set('n', '<leader>g', builtin.git_files, {})
        vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
    end
}
