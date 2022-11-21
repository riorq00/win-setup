local status, prettier = pcall(require, "prettierd")
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less",
    "html",
    "tsx",
    "lua",
    "dart",
    "flutter",
    "prisma"
  },
}
