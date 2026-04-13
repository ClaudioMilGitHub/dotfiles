vim.o.cmdheight = 0
require("plugins")
require("keymaps")
require("options")
-- Diagnostica
vim.diagnostic.config({
	virtual_text = true, -- mostra errore in testo accanto alla riga
	signs = true, -- Mostra icone nella colonna laterale
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

--autocmds
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Abilita il completamento con <C-x><C-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
		local opts = { buffer = ev.buf }
		-- VEDERE LA DEFINIZIONE (quello che cercavi)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Vai alla definizione
		vim.keymap.set("n", "gp", function()
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			local client = clients[1]
			if not client then
				return
			end
			local params = vim.lsp.util.make_position_params(0, client.offset_encoding)
			return vim.lsp.buf_request(0, "textDocument/definition", params, function(_, result)
				if result == nil or vim.tbl_isempty(result) then
					return
				end
				vim.lsp.util.preview_location(result[1])
			end)
		end, { desc = "Anteprima definizione" }) -- Vai alla definizione
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Hover (mostra doc/tipo in un popup)

		-- ALTRE UTILITY FONDAMENTALI
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- Vai all'implementazione
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts) -- Aiuto parametri funzione
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Rinomina variabile ovunque
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- Azioni rapide
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- Elenca riferimenti

		-- FORMATTAZIONE
		vim.keymap.set("n", "<leader>f", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})
