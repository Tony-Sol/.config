return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		{
			'nvim-telescope/telescope-file-browser.nvim',
		},
		{
			'nvim-telescope/telescope-live-grep-args.nvim',
		},
		{
			'nvim-telescope/telescope-dap.nvim',
		},
		{
			'nvim-lua/plenary.nvim',
		},
	},
	config       = function()
		local utils     = require('utils')
		local telescope = require('telescope')
		telescope.setup {
			defaults   = {
				scroll_strategy  = 'cycle',
				sorting_strategy = 'ascending',
				layout_strategy  = 'vertical',
				layout_config    = {
					horizontal = utils.merge(utils.defaultModalSize(), {
						prompt_position = 'top',
					}),
					vertical   = utils.merge(utils.defaultModalSize(), {
						prompt_position = 'top',
						mirror          = true,
					}),
				},
			},
			pickers    = {
				find_files = {
					follow = true,
					hidden = true,
				},
			},
			extensions = {
				['file_browser']   = {
					prompt_path       = true,
					grouped           = true,
					hidden            = {
						file_browser   = true,
						folder_browser = true,
					},
					respect_gitignore = false,
				},
				['live_grep_args'] = {},
				['dap']            = {},
				['noice']          = {},
				['notify']         = {},
				['todo-comments']  = {},
			},
		}
		telescope.load_extension('file_browser')
		telescope.load_extension('live_grep_args')
		telescope.load_extension('dap')
		telescope.load_extension('noice')
		telescope.load_extension('notify')
		telescope.load_extension('todo-comments')
	end
}
