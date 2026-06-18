return {   "hrsh7th/nvim-cmp",
version = false,
event = "InsertEnter",
dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
    "hrsh7th/cmp-buffer",   -- Text in current buffer
    "hrsh7th/cmp-path",     -- File system paths
    "L3MON4D3/LuaSnip",    -- Snippet engine
    "saadparwaiz1/cmp_luasnip", -- Snippet source for nvim-cmp
},
config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      -- 1. Configure the snippet engine (required by nvim-cmp)
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      
      -- 2. Set up your keymaps for completion
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(), -- Manually trigger completion
        ["<C-e>"] = cmp.mapping.abort(),        -- Close the completion window
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept selected item
      }),
      
      -- 3. Define the sources you installed in your dependencies
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- Prioritize LSP
        { name = "luasnip" },  -- Then snippets
      }, {
        { name = "buffer" },   -- Fallback to text in the current buffer
        { name = "path" },     -- File paths
      })
    })
  end

  }
