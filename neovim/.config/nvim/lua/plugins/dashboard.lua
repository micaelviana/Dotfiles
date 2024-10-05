return{
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    opts = {
        theme = 'doom',
        config = {
            -- Set header
            header = {
                "                                                     ",
                "                                                     ",
                "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
                "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
                "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
                "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
                "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
                "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
                "                                                     ",
            },
            center = {
                {
                    icon = '  ',
                    desc = 'New File',
                    key = 'n',
                    action = 'enew'
                },
                {
                    icon = ' 󰁯 ',
                    desc = 'Recent Files',
                    key = 'r',
                    action = 'FzfLua oldfiles'
                },
                {
                    icon = '  ',
                    desc = 'Find Files',
                    key = 'f',
                    action = 'FzfLua files'
                },
                {
                    icon = ' 󰗊 ',
                    desc = 'Grep text',
                    key = 'g',
                    action = 'FzfLua live_grep'
                },
                {
                    icon = ' 󰜎 ',
                    desc = 'Quit neovim',
                    key = 'q',
                    action = 'quit'
                }
            },
            footer = {}
        }
    }--end opts

} -- end table
