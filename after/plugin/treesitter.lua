require("nvim-treesitter.configs").setup({
	ensure_installed = { "help", "javascript", "typescript", "c", "lua", "rust", "haskell" },

	sync_install = false,

	auto_intall = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
