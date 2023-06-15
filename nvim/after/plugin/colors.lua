function ColorMyPencils(color)
	color = color or 'rose-pine'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function ColorProjecting(color)
	color = color or 'eldar'
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "#101010" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#101010" })
end
ColorMyPencils()

