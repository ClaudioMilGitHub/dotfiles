vim.lsp.config("lua_ls", {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc', '.git'},
  settings = {
    Lua = {
      runtime = { versione = "LuaJIT"},
      diagnostics = { globals = { 'vim' } },
      workspace = {
        checkThirdParty = false,
        library = vim.api.nvim_get_runtime_file("", true),
      }
    },
  },
})
