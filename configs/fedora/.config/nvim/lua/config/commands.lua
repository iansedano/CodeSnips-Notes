local function create_basic_command(name, func, desc)
	vim.api.nvim_create_user_command(name, function()
		func()
	end, { desc = desc })
end

create_basic_command("LspRename", vim.lsp.buf.rename)
create_basic_command("LspHover", vim.lsp.buf.hover)
create_basic_command("LspDefinition", vim.lsp.buf.definition)
create_basic_command("LspReferences", vim.lsp.buf.references)
create_basic_command("LspImplementation", vim.lsp.buf.implementation)
create_basic_command("LspSignatureHelp", vim.lsp.buf.signature_help)
create_basic_command("LspCodeAction", vim.lsp.buf.code_action)
