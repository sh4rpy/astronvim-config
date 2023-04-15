 -- Кастомные бинды.

return {
  n = {
    -- Переключения между открытыми файлами через Shift+l/Shift+h вместо неудобного ]b/[b.
    ["<S-l>"] = {
      function()
        require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1)
      end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function()
        require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1))
      end,
      desc = "Previous buffer",
    },
  },
}
