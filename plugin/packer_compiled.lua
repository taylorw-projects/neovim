-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/taylorw/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/taylorw/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/taylorw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/taylorw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/taylorw/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "require 'config.alpha'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-pairs"] = {
    config = { "require 'config.autopairs'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    config = { "require 'config.barbar'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-git"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/cmp-git",
    url = "https://github.com/hrsh7th/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["code_runner.nvim"] = {
    config = { "require 'config.code_runner'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/code_runner.nvim",
    url = "https://github.com/CRAG666/code_runner.nvim"
  },
  ["crates.nvim"] = {
    config = { "require 'crates'.setup()" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/crates.nvim",
    url = "https://github.com/Saecki/crates.nvim"
  },
  ["diffurcate.vim"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/diffurcate.vim",
    url = "https://github.com/AndrewRadev/diffurcate.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "require 'config.gitsigns'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "require 'config.harpoon'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-format.nvim"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lualine.nvim"] = {
    config = { "require 'config.lualine'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  matchit = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/matchit",
    url = "https://github.com/tmhedberg/matchit"
  },
  ["move.nvim"] = {
    config = { "require 'config.move'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["no-neck-pain.nvim"] = {
    config = { "require 'config.no_neck_pain'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/no-neck-pain.nvim",
    url = "https://github.com/shortcuts/no-neck-pain.nvim"
  },
  nvim = {
    config = { "require 'config.theme'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/nvim",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-cmp"] = {
    config = { "require 'config.cmp'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "require 'nvim_comment'.setup()" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    config = { "require 'config.lspconfig'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "require 'config.nvim_tree'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require 'config.treesitter'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  orgmode = {
    config = { "require 'config.orgmode'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-zoxide"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    config = { "require 'config.telescope'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "require 'config.todo_comments'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "require 'config.toggleterm'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "require 'config.trouble'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    config = { "require 'config.undotree'" },
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-python-pep8-indent"] = {
    loaded = true,
    path = "/Users/taylorw/.local/share/nvim/site/pack/packer/start/vim-python-pep8-indent",
    url = "https://github.com/Vimjas/vim-python-pep8-indent"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require 'config.nvim_tree'
time([[Config for nvim-tree.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require 'config.telescope'
time([[Config for telescope.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
require 'config.todo_comments'
time([[Config for todo-comments.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
require 'config.lualine'
time([[Config for lualine.nvim]], false)
-- Config for: orgmode
time([[Config for orgmode]], true)
require 'config.orgmode'
time([[Config for orgmode]], false)
-- Config for: move.nvim
time([[Config for move.nvim]], true)
require 'config.move'
time([[Config for move.nvim]], false)
-- Config for: code_runner.nvim
time([[Config for code_runner.nvim]], true)
require 'config.code_runner'
time([[Config for code_runner.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
require 'config.undotree'
time([[Config for undotree]], false)
-- Config for: crates.nvim
time([[Config for crates.nvim]], true)
require 'crates'.setup()
time([[Config for crates.nvim]], false)
-- Config for: nvim
time([[Config for nvim]], true)
require 'config.theme'
time([[Config for nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
require 'config.alpha'
time([[Config for alpha-nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require 'config.cmp'
time([[Config for nvim-cmp]], false)
-- Config for: auto-pairs
time([[Config for auto-pairs]], true)
require 'config.autopairs'
time([[Config for auto-pairs]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require 'config.gitsigns'
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
require 'nvim_comment'.setup()
time([[Config for nvim-comment]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
require 'config.barbar'
time([[Config for barbar.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
require 'config.harpoon'
time([[Config for harpoon]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
require 'config.toggleterm'
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require 'config.treesitter'
time([[Config for nvim-treesitter]], false)
-- Config for: no-neck-pain.nvim
time([[Config for no-neck-pain.nvim]], true)
require 'config.no_neck_pain'
time([[Config for no-neck-pain.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require 'config.lspconfig'
time([[Config for nvim-lspconfig]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
require 'config.trouble'
time([[Config for trouble.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
