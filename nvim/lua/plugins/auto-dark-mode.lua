return {
	'f-person/auto-dark-mode.nvim',
	event  = 'VeryLazy',
	config = function()
		local auto_dark_mode = require('auto-dark-mode')
		auto_dark_mode.setup {
			update_interval = 500,
		}
	end
}
