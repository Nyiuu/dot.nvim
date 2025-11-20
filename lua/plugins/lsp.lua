-- ~/.config/nvim/lua/plugins/lsp.lua

return {
  -- 确保你修改的是 lspconfig 插件的配置
  "neovim/nvim-lspconfig",
  -- 使用 opts 函数来覆盖或扩展 lspconfig 的默认配置
  opts = {
    -- 这是你的配置：
    servers = {
      clangd = {
        -- cmd 字段就是你想要修改的启动命令及其参数
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
          -- 注意：你设置了两个 header-insertion 参数，
          -- 后一个 "--header-insertion=never" 会覆盖或影响前一个 "--header-insertion=iwyu"。
          -- 建议只保留你需要的那个。
          -- 例如，如果你想要用 iwyu (Include What You Use) 风格，就移除 "never"。
          --
          -- 如果你想使用 iwyu 风格：
          -- "--header-insertion=iwyu",
        },
      },
    },
  },
}
