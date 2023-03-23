-- Setup Masson
require("mason").setup({
	ui = {
		icons = {
			package_installed = "V",
			package_pending = "-",
			package_uninstalled = "X",
		},
	}
})
require("mason-lspconfig").setup()

