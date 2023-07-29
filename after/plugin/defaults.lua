require("theprimeagen.remap")
require("theprimeagen.set")
function ColorMyPencils()
	vim.g.onedark_config.transparent = true
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.opt.relativenumber = true
vim.api.nvim_exec('language en_US', true)
