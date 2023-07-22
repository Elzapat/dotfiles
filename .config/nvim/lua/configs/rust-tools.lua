local rt = {
  server = {
    settings = {
      -- on_attach = function(_, buffer)
      --   -- Hover actions
      --   vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      --   -- Code action groups
      --   vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
      --   require 'illuminate'.on_attach(client)
      -- end,
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
          extraArgs = {
            "--target-dir", "/tmp/rust-analyzer-check"
          }
        }
      }
    }
  }
}

-- require("rust-tools").setup(rt)
