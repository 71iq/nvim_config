local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.verible.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "verible-verilog-ls" },
  filetypes = { "verilog", "systemverilog" },
  root_dir = lspconfig.util.root_pattern(".git", "*.v", "*.sv"),
  single_file_support = true,
}

lspconfig.pyright.setup({
  capabilities = capabilities,
  settings = {
  pyright = {
  disableOrganizeImports = true,
  },
  python = {
  analysis = {
  ignore = { "*" },
  },
  },
  },
})
lspconfig.ruff.setup({})
