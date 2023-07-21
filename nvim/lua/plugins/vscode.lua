return {
	'Mofiqul/vscode.nvim',
	priority = 1000,
	build = 'colorscheme vscode',
	config = function ()
		local vscode = require('vscode')
		vscode.setup {
			italic_comments     = true,
			disable_nvimtree_bg = true,
			transparent         = false,
		}
		vscode.load()
	end
}
