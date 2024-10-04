--[[ vars.lua ]]

local g = vim.g
g.t_co = 256
g.background = "dark"

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

-- Disable virtual_text since it's redundant due to Lsp_lines
vim.diagnostic.config({
  virtual_text = false,
})

