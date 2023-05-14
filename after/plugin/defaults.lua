require("theprimeagen.remap")
require("theprimeagen.set")
function ColorMyPencils()
	vim.g.onedark_config.transparent = true
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.opt.relativenumber = true
vim.api.nvim_exec('language en_US', true)

local coc_disable_group = vim.api.nvim_create_augroup('COCDisable', { clear = true })
vim.api.nvim_create_autocmd('BufAdd', {
	callback = function()
		local util = require('lspconfig/util')
		local bufnr = vim.api.nvim_get_current_buf()
		if not util.root_pattern(".flowconfig")(vim.fn.getcwd()) then
			vim.api.nvim_buf_set_var(bufnr, 'coc_enabled', 0)
		end
	end,
	group = coc_disable_group,
	pattern = '*'
})
