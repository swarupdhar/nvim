local ok, lsp = pcall(require, "lsp-zero")
if not ok then
    return
end


lsp.preset("recommended")
lsp.setup()

local _border = "none"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        border = _border,
    }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        border = _border,
    }
)

vim.diagnostic.config {
    float={ border = _border },
}
