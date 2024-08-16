return {
  {
	  "hrsh7th/nvim-cmp",
	  -- load cmp on InsertEnter
	  event = "InsertEnter",
	  -- these dependencies will only be loaded when cmp loads
	  -- dependencies are always lazy-loaded unless specified otherwise
	  dependencies = {
		  "hrsh7th/cmp-nvim-lsp",
		  "hrsh7th/cmp-buffer",
		  "hrsh7th/cmp-path",
	  },
	  config = function()
		  local cmp = require'cmp'
		  cmp.setup({
			  -- You must set mapping.
			  mapping = {
				  ['<C-p>'] = cmp.mapping.select_prev_item(),
				  ['<C-n>'] = cmp.mapping.select_next_item(),
				  -- Add tab support
				  ['<Tab>'] = cmp.mapping.confirm({
					  behavior = cmp.ConfirmBehavior.Replace,
					  select = true,
				  }),
			  },
			  -- You should specify your *installed* sources.
			  sources = {
				  { name = 'nvim_lsp' },
				  { name = 'path' },
				  { name = 'buffer' },
			  },
		  })
	  end,
  },
}
