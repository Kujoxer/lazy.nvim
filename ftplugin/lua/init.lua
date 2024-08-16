-- [[ Основные настройки Lua ]]
vim.opt.expandtab = true      -- Использовать пробелы вместо табуляции
vim.opt.tabstop = 2           -- Количество пробелов для табуляции
vim.opt.shiftwidth = 2        -- Количество пробелов для автоиндентификации
vim.opt.smarttab = true       -- Умная табуляция
vim.opt.smartindent = true    -- Умная индентификация
vim.opt.hlsearch = true       -- Подсветка поиска
vim.opt.incsearch = true      -- Инкрементальный поиск
vim.opt.laststatus = 2        -- Включить нижнюю статусную строку
vim.opt.showtabline = 2       -- Всегда показывать панель вкладок
vim.opt.number = true         -- Включить нумерацию строк
vim.opt.mouse = 'a'           -- Включить поддержку мыши
vim.opt.showmode = false      -- Отключить показ режима в командной строке
vim.opt.list = true           -- Показать скрытые символы
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- Настройки отображения скрытых символов
vim.opt.updatetime = 250      -- Время ожидания обновления (в мс)

-- [[ UI and Editor ]]
vim.g.have_nerd_font = true      -- Indicates that a Nerd Font is available for use
vim.opt.termguicolors = true     -- Enables 24-bit RGB color in the terminal UI
vim.opt.colorcolumn = "80"       -- Highlights the 80th column for line length guidance
vim.opt.signcolumn = "no"        -- Disables the sign column (used for git signs, linting, etc.)
vim.opt.wrap = false             -- Disables line wrapping
vim.opt.cursorline = true        -- Show which line your cursor is on

require("rose-pine").setup({
  enable = {
    terminal = true,
    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    migrations = true, -- Handle deprecated options automatically
  },

  styles = {
    bold = true,
    italic = true,
    transparency = true,
  },
})

vim.cmd [[colorscheme rose-pine]]
