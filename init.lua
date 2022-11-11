require("config.base")
require("config.plugins")
require("config.highlights")
require("config.maps")

local has = vim.fn.has
local is_win = has "win32"

if is_win then
  require 'nvim-treesitter.install'.compilers = { 'clang' }
  vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end
