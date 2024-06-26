return {
	'lukas-reineke/headlines.nvim',
	dependencies = {
		{
			'nvim-treesitter/nvim-treesitter',
		},
	},
	ft           = { 'md', 'markdown', 'mkd', 'mkdn', 'mdwn', 'mdown', 'mdtxt', 'mdtext', 'rmd', 'wiki' },
	config       = function()
		local headlines = require('headlines')
		headlines.setup {
		}
	end
}
