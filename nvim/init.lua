require 'core.keymaps'
require 'core.options'


local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Instalacion de plugins aqui
require('lazy').setup({
	require 'plugins.neotree',
	require 'plugins.coloryheme',
	require 'plugins.bufferline',
	require 'plugins.lualine',
	require 'plugins.treesitter',
	require 'plugins.telescope',
	require 'plugins.lsp',
	require 'plugins.autocompletion',
	require 'plugins.indent',
	require 'plugins.gitsign',
	require 'plugins.alpha'
})
