local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = true,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  ttyfast = true,
  lazyredraw = true,
  hidden = false,
  syntax = "on",
  -- nocompatible = true,
  -- laststatus = "2",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd "filetype indent on"
vim.cmd "filetype plugin on"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
vim.cmd [[
  augroup vimrc-remember-cursor-position
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  augroup END
]] -- remembers cursor position

-- Bad writing
vim.cmd [[cnoreabbrev W! w!]]
vim.cmd [[cnoreabbrev Q! q!]]
vim.cmd [[cnoreabbrev Qall! qall!]]
vim.cmd [[cnoreabbrev Wq wq]]
vim.cmd [[cnoreabbrev Wa wa]]
vim.cmd [[cnoreabbrev wQ wq]]
vim.cmd [[cnoreabbrev WQ wq]]
vim.cmd [[cnoreabbrev W w]]
vim.cmd [[cnoreabbrev Q q]]
vim.cmd [[cnoreabbrev Qall qall]]

-- Airline config
vim.cmd [[ let g:airline_powerline_fonts = 1 ]]
vim.cmd [[     if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '??'
    let g:airline_left_sep = '???'
    let g:airline_right_sep = '??'
    let g:airline_right_sep = '???'
    let g:airline_symbols.crypt = '????'
    let g:airline_symbols.linenr = '???'
    let g:airline_symbols.linenr = '???'
    let g:airline_symbols.linenr = '???'
    let g:airline_symbols.linenr = '??'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.maxlinenr = '???'
    let g:airline_symbols.branch = '???'
    let g:airline_symbols.paste = '??'
    let g:airline_symbols.paste = '??'
    let g:airline_symbols.paste = '???'
    let g:airline_symbols.spell = '???'
    let g:airline_symbols.notexists = '??'
    let g:airline_symbols.whitespace = '??'

    " powerline symbols
    let g:airline_left_sep = '???'
    let g:airline_left_alt_sep = '???'
    let g:airline_right_sep = '???'
    let g:airline_right_alt_sep = '???'
    let g:airline_symbols.branch = '???'
    let g:airline_symbols.readonly = '???'
    let g:airline_symbols.linenr = '???'
    let g:airline_symbols.maxlinenr = '???' ]]

vim.cmd [[ let g:airline_theme = 'base16_ia_dark' ]]
-- lightline
-- vim.cmd [[
--   let g:lightline = {
--    \ 'colorscheme': 'darcula',
--    \ 'component_function': {
--    \   'filetype': 'MyFiletype',
--    \   'fileformat': 'MyFileformat',
--    \ }
--    \ }
--   let g:lightline#extensions#tabline#enabled = 0
-- ]]

vim.cmd [[
   function! MyFiletype()
     return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
   endfunction
]]

vim.cmd [[
  function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' .WebDevIconsGetFileFormatSymbol()) : ''
  endfunction
]]

vim.cmd [[let g:closetag_emptyTags_caseSensitive = 1]]
