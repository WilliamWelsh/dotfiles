-- Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
print(vim.fn.stdpath("data"))
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({"git", "clone", "--filter=blob:none", "--single-branch", "https://github.com/folke/lazy.nvim.git",
                   lazypath})
end
vim.opt.runtimepath:prepend(lazypath)

require("base")
require("maps")
require("lazy").setup("plugins")

local has = function(x)
    return vim.fn.has(x) == 1
end
local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
    require("macos")
end
if is_win then
    require("windows")
end

require("highlights")
