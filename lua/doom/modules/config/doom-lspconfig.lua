return function()
	local config = require('doom.core.config').load_config()

	-- Snippets support
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.snippetSupport = true

	-- Lsp Symbols
	vim.fn.sign_define('LspDiagnosticsSignError', {
		texthl = 'LspDiagnosticsSignError',
		text = config.doom.lsp_error,
		numhl = 'LspDiagnosticsSignError',
	})
	vim.fn.sign_define('LspDiagnosticsSignWarning', {
		texthl = 'LspDiagnosticsSignWarning',
		text = config.doom.lsp_warning,
		numhl = 'LspDiagnosticsSignWarning',
	})
	vim.fn.sign_define('LspDiagnosticsSignHint', {
		texthl = 'LspDiagnosticsSignHint',
		text = config.doom.lsp_hint,
		numhl = 'LspDiagnosticsSignHint',
	})
	vim.fn.sign_define('LspDiagnosticsSignInformation', {
		texthl = 'LspDiagnosticsSignInformation',
		text = config.doom.lsp_information,
		numhl = 'LspDiagnosticsSignInformation',
	})

	vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
		vim.lsp.diagnostic.on_publish_diagnostics,
		{
			virtual_text = {
				prefix = config.doom.lsp_virtual_text, -- change this to whatever you want your diagnostic icons to be
			},
		}
	)
	-- symbols for autocomplete
	vim.lsp.protocol.CompletionItemKind = {
		'   (Text) ',
		'   (Method)',
		'   (Function)',
		'   (Constructor)',
		' ﴲ  (Field)',
		'[] (Variable)',
		'   (Class)',
		' ﰮ  (Interface)',
		'   (Module)',
		' 襁 (Property)',
		'   (Unit)',
		'   (Value)',
		' 練 (Enum)',
		'   (Keyword)',
		'   (Snippet)',
		'   (Color)',
		'   (File)',
		'   (Reference)',
		'   (Folder)',
		'   (EnumMember)',
		' ﲀ  (Constant)',
		' ﳤ  (Struct)',
		'   (Event)',
		'   (Operator)',
		'   (TypeParameter)',
	}
end
