local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local ok, lsp = pcall(require, 'lspconfig')
if not ok then
  return
end

local ok, lsp_installer = pcall(require, 'nvim-lsp-installer')
if not ok then
  return
end

lsp_installer.setup {
  automatic_installation = true,
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
}

local servers = {
  "lua_ls",
  "pyright",
  "rnix",
  "tailwindcss",
  ""
}

for _, a in ipairs(servers) do
  lsp[a].setup {
    capabilities = capabilities
  }
end
