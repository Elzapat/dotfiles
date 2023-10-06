local nvim_lsp = require("lspconfig")
local pid = vim.fn.getpid()

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'clangd', 'dartls', 'tsserver', 'pyright', 'cssls', 'hls', 'omnisharp' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    -- on_attach = custom_attach,
    capabilities = capabilities,
  }
end

-- Add C# language server
-- local omnisharp_bin = "/home/morgan/software/omnisharp/omnisharp/run"
-- require("lspconfig").omnisharp.setup {
--   cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
--   root_dir = nvim_lsp.util.root_pattern("*.csproj","*.sln"),
--   capabilities = capabilities,
-- }

-- Setup vhdl-tool 
require("lspconfig").vhdl_tool.setup {
  filetypes = { "vhdl", "vhd" },
  cmd = { "vhdl-tool" },
  capabilities = capabilities
}

omnisharp_bin = "/home/morgan/software/omnisharp/omnisharp/OmniSharp.exe"
require("lspconfig").omnisharp.setup {
  cmd = { "mono", omnisharp_bin, "--languageserver","--hostPID", tostring(pid) },
  filetypes = { "cs", "vb" },
  init_options = {},
  on_new_config = function(new_config, new_root_dir)
    if new_root_dir then
      table.insert(new_config.cmd, '-s')
      table.insert(new_config.cmd, new_root_dir)
    end
  end,
  root_dir = nvim_lsp.util.root_pattern("*.sln");
}

-- nvim_lsp["rls"].setup {
--   cmd = {"rustup", "run", "nightly", "rls"},
--   settings = {
--     rust = {
--       unstable_features = true,
--       build_on_save = false,
--       all_features = true,
--     },
--   },
-- }

nvim_lsp["rust_analyzer"].setup {
  -- on_attach = custom_attach,
  capabilities = capabilities,
  tools = {
    autoSetHints = true,
    hover_with_actions = true,
    inlay_hints = {
      show_parameter_hints = false,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy",
        extraArgs = {
          "--target-dir", "/tmp/rust-analyzer-check"
        }
      },
    }
  }
}

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = "buffer" }
  }
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = { { name = 'buffer' } }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources(
    { { name = 'path' } },
    { { name = 'cmdline' } }
  )
})

-- Change diagnostic signs.
vim.fn.sign_define("DiagnosticSignError", { text = "✗", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "!", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInformation", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

-- global config for diagnostic
vim.diagnostic.config({
  underline = true,
  virtual_text = true,
  signs = true,
  severity_sort = true,
})

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--   underline = true,
--   virtual_text = true,
--   signs = true,
--   update_in_insert = true,
-- })
-- 
-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
--   border = "rounded",
-- })
-- 
-- Change border of documentation hover window, See https://github.com/neovim/neovim/pull/13998.
-- return M
--






-- local M = {}
-- 
-- function M.show_line_diagnostics()
--   local opts = {
--     focusable = false,
--     close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
--     border = "rounded",
--     source = "always",
--     prefix = " "
--   }
--   vim.diagnostic.open_float(nil, opts)
-- end
-- 
-- local custom_attach = function(client, bufnr)
--   local function buf_set_keymap(...)
--     vim.api.nvim_buf_set_keymap(bufnr, ...)
--   end
-- 
--   -- Mappings.
--   local opts = { noremap = true, silent = true }
--   buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
--   buf_set_keymap("n", "<C-]>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
--   buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
--   buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
--   buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
--   buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
--   buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
--   buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
--   buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
--   buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
--   buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
--   buf_set_keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setqflist({open = true})<CR>", opts)
--   buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
-- 
--   vim.cmd([[
--     autocmd CursorHold <buffer> lua require('plugins.lspconfig').show_line_diagnostics()
--   ]])
-- 
--   -- Set some key bindings conditional on server capabilities
--   if client.resolved_capabilities.document_formatting then
--     buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting_sync()<CR>", opts)
--   end
--   if client.resolved_capabilities.document_range_formatting then
--     buf_set_keymap("x", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR><ESC>", opts)
--   end
-- 
--   -- The blow command will highlight the current variable and its usages in the buffer.
--   if client.resolved_capabilities.document_highlight then
--     vim.cmd([[
--       hi link LspReferenceRead Visual
--       hi link LspReferenceText Visual
--       hi link LspReferenceWrite Visual
--       augroup lsp_document_highlight
--         autocmd! * <buffer>
--         autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
--         autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--       augroup END
--     ]])
--   end
-- 
--   if vim.g.logging_level == 'debug' then
--     local msg = string.format("Language server %s started!", client.name)
--     vim.notify(msg, 'info', {title = 'Nvim-config'})
--   end
-- end
-- 
