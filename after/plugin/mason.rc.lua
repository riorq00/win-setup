local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "sumneko_lua",
    "emmet_ls",
  },
  automatic_installation = true,
}