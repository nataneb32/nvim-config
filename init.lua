require 'plugins'

vim.cmd[[
set termguicolors

let mapleader = " "

noremap <Leader>ee :NvimTreeToggle<CR>
noremap <Leader>er :NvimTreeRefresh<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

set clipboard+=unnamedplus
set relativenumber

nnoremap u i
nnoremap U I
nnoremap l u
" right hand nav
nnoremap n j
vnoremap n j
nnoremap e k
vnoremap e k
nnoremap i l
vnoremap i l
nnoremap k n
nnoremap K N

" m goes to insert mode, or with shift at beginning of line
nnoremap m e
nnoremap M E

" shift+i does nothing
nnoremap I <nop>


set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
]]

