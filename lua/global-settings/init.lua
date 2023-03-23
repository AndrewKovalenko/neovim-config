
vim.cmd [[
    let g:deoplete#enable_at_startup = 1
    let g:rooter_patterns = ['.git', 'package.json', '!node_modules']
    let g:go_list_type = "quickfix"
    let g:airline#extensions#ale#enabled = 1
    let g:ale_floating_preview = 1
    let g:ale_hover_to_floating_preview = 1
    let g:ale_hover_to_preview = 0
    let g:ale_fix_on_save = 0
]]

--Set highlight on search
vim.o.hlsearch = false

--Make line numbers default
vim.wo.number = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

--Set colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme onedark]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menu,menuone,noselect'

--Set statusbar
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'onedark',
    component_separators = '|',
    section_separators = '',
  },
}

--Enable Comment.nvim
require('Comment').setup()