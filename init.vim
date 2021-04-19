" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')

call plug#end()
" == VIMPLUG END ================================
" == AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================


" === Custom plugins


call plug#begin()
  "------------------------ COC ------------------------
  " coc for tslinting, auto complete and prettier
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  " coc extensions
  let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

  " by default, if you open tsx file, neovim does not show syntax colors
  " vim-tsx will do all the coloring for jsx in the .tsx file
  Plug 'ianks/vim-tsx'

  " by default, if you open tsx file, neovim does not show syntax colors
  " typescript-vim will do all the coloring for typescript keywords
  Plug 'leafgarland/typescript-vim'

  " Styled components
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " Nerdtree https://github.com/preservim/nerdtree
  Plug 'preservim/nerdtree'

  " Ranger
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'

  " Sneak https://github.com/justinmk/vim-sneak quick file nave
  Plug 'justinmk/vim-sneak'

  " QuickScope https://github.com/unblevable/quick-scope easy same line navigation
  Plug 'unblevable/quick-scope' 

  " Rainbow https://github.com/luochen1990/rainbow rainbow brackets
  Plug 'luochen1990/rainbow'

  Plug 'terryma/vim-multiple-cursors'

  " FZF https://github.com/junegunn/fzf.vim a lot of random stuff
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " VIM Fujitive https://github.com/tpope/vim-fugitive git functionality
  Plug 'tpope/vim-fugitive'

  " Git Gutter https://github.com/airblade/vim-gitgutter
  Plug 'airblade/vim-gitgutter'

  " Git Ctrl P https://github.com/ctrlpvim/ctrlp.vim fuzzy file finder
  Plug 'ctrlpvim/ctrlp.vim'
call plug#end()


" set rainbow plugin to active
let g:rainbow_active = 1



" Nerdtree configs
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :CR<NERDTreeFind>


" Notes
" note: ctrl + ww switches between nerdtree and the file
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>



" ===== One Dark Theme config ======
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark
" ===== END One Dark Theme config ======





" ===== quickscope config
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']

" this will allow it to override the color scheme
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

let g:qs_hi_priority = 100

" ==== Set personal VIM settings
" enable line numbers
set number
set tabstop=2
set autoindent
