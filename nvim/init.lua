-- Basic
require('core.plugins')
require('core.mappings')
require('core.config')

-- Plugins
for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config')..'/lua/plugins', [[v:val =~ '\.lua$']])) do
    require('plugins.'..file:gsub('%.lua$', ''))
  end
