
-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        -- add more arguments for adding more language servers
      },
      handlers = {
        ["pylsp"] = function()
          require("lspconfig").pylsp.setup({
            settings = {
              pylsp = {
                plugins = {
                  flake8 = {
                    enabled = false
                  },
                  mccabe = {
                    enabled = false
                  },
                  pycodestyle = {
                    enabled = false
                  },
                  autopep8 = {
                    enabled = true
                  },
                  yapf = {
                    enabled = true
                  }
                  
                }
              }
            }
          })
        end,
      },
    },
  },
}
