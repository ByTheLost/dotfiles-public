require('ByTheLost.base')
require('ByTheLost.plugins')
require('ByTheLost.highlights')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"
local is = has "ah"

if is_mac == 1 then
  require('ByTheLost.macos')
end
if is_win == 1 then
  require('ByTheLost.windows')
end
if is_wsl == 1 then
  require('ByTheLost.wsl')
end
