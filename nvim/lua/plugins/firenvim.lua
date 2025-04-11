return {
	"glacambre/firenvim",
	build = ":call firenvim#install(0)",

	config = function()
		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			pattern = "github.com_*.txt",
			command = "set filetype=markdown",
		})
		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			pattern = "discourse.nixos.org_*.txt",
			command = "set filetype=markdown",
		})
		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			pattern = "www.deepl.com_*.txt",
			command = "set filetype=markdown",
		})
	end,
}
