-- __________.__               .__
-- \______   \  |  __ __  ____ |__| ____   ______
--  |     ___/  | |  |  \/ ___\|  |/    \ /  ___/
--  |    |   |  |_|  |  / /_/  >  |   |  \\___ \
--  |____|   |____/____/\___  /|__|___|  /____  >
--                     /_____/         \/     \/

return require 'packer'.startup(function(use)
	---------------------------=== Essential Dependencies ===---------------------------
	-- Improve Startup Time
	use 'lewis6991/impatient.nvim'

	-- Packer Package Manager
	use 'wbthomason/packer.nvim'

    -- Async Runtime
    use 'nvim-lua/plenary.nvim'

	---------------------------=== Language Server Config ===---------------------------
	-- Baseline LSP Config
	use { 'neovim/nvim-lspconfig', config = [[require 'config.lspconfig']] }

	-- LSP Completion Engine
	use { 'hrsh7th/nvim-cmp', config = [[require 'config.cmp']] }

	-- nvim-cmp Extensions
	use 'hrsh7th/cmp-path'

	use 'hrsh7th/cmp-cmdline'

	use 'hrsh7th/cmp-buffer'

	use 'hrsh7th/cmp-git'

	use 'hrsh7th/cmp-nvim-lsp'

	use 'hrsh7th/cmp-nvim-lsp-signature-help'

	---------------------------===        Utilities       ===---------------------------
	-- Snippet Support
	use 'L3MON4D3/LuaSnip'

    -- Harpoon File Marker
    use { 'ThePrimeagen/harpoon', config = [[require 'config.harpoon']] }

    -- Telescope Fuzzy Finder
	use { 'nvim-telescope/telescope.nvim', config = [[require 'config.telescope']] }

    -- Telescope Extensions
    use 'jvgrootveld/telescope-zoxide'

    use 'nvim-telescope/telescope-file-browser.nvim'

    use { 'ahmedkhalf/project.nvim', config = [[require 'config.project']] }

    -- Start Menu
    use { 'goolord/alpha-nvim', config = [[require 'config.alpha']] }

    -- Zen Mode
    use { 'shortcuts/no-neck-pain.nvim', config = [[require 'config.no_neck_pain']] }

    -- File Tree
    use { 'nvim-tree/nvim-tree.lua', config = [[require 'config.nvim_tree']] }

	---------------------------===    Editor Formatting   ===---------------------------
	use 'lukas-reineke/indent-blankline.nvim'

    -- Syntax Highlighting
	use { 'nvim-treesitter/nvim-treesitter', config = [[require 'config.treesitter']] }

	---------------------------===         Themes         ===---------------------------
	use { 'folke/tokyonight.nvim', config = [[require 'config.tokyonight']] }
end)
