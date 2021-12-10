local telescope = require('telescope')

telescope.setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
        }
    },
    pickers = {
        find_files = {
            hidden = true,
        },
        live_grep = {
            path_display = { 'shorten' }
        },
    }
} 


-- load fzf extension
telescope.load_extension('fzf')
