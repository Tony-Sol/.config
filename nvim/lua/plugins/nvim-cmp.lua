return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		{
			'hrsh7th/cmp-buffer',
		},
		{
			'hrsh7th/cmp-cmdline',
		},
		{
			'hrsh7th/cmp-emoji',
		},
		{
			'hrsh7th/cmp-nvim-lsp',
		},
		{
			'hrsh7th/cmp-nvim-lsp-signature-help',
		},
		{
			'hrsh7th/cmp-nvim-lsp-document-symbol',
		},
		{
			'hrsh7th/cmp-path',
		},
		{
			'onsails/lspkind.nvim',
		},
		{
			'lukas-reineke/cmp-rg',
		},
	},
	config       = function()
		---@diagnostic disable-next-line: undefined-global
		local snippet = vim.snippet
		local cmp     = require('cmp')
		local lspkind = require('lspkind')
		cmp.setup {
			experimental = {
				ghost_text = true,
			},
			window       = {
				completion    = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			formatting   = {
				format = lspkind.cmp_format(),
			},
			snippet      = {
				expand = function(args)
					snippet.expand(args.body)
				end,
			},
			mapping      = {
				['<CR>']      = cmp.mapping.confirm({ select = true }),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-b>']     = cmp.mapping.scroll_docs(-4),
				['<C-f>']     = cmp.mapping.scroll_docs(4),
				['<C-e>']     = cmp.mapping.abort(),
				['<Tab>']     = function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end,
				['<S-Tab>']   = function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback()
					end
				end,
			},
			sources      = {
				{
					name = 'cmdline',
				},
				{
					name = 'buffer',
				},
				{
					name = 'emoji',
				},
				{
					name = 'nvim_lsp',
				},
				{
					name = 'nvim_lsp_signature_help',
				},
				{
					name = 'nvim_lsp_document_symbol',
				},
				{
					name   = 'path',
					option = {
						trailing_slash = true,
					},
				},
				{
					name = 'rg',
				},
				{
					name = 'treesitter',
				},
			},
		}
	end
}
