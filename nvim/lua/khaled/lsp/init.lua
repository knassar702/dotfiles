local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("khaled.lsp.cmd_setup")
require("khaled.lsp.mason")
require("khaled.lsp.handlers").setup()
