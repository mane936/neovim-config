set number
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

set clipboard=unnamed
let mapleader=","

"Put these lines at the very end of your vimrc file.
"Load all plugins now
""
call plug#begin()
""
""Color syntax
Plug 'mhartington/oceanic-next'

""Code completion
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

""File tree explorer
Plug 'scrooloose/nerdTree'

""Fast html completion (requires it's own language')
Plug 'mattn/emmet-vim'

""navigate among files with ctrl+p
Plug 'ctrlpvim/ctrlp.vim'

""Search and replace with '/'
Plug 'easymotion/vim-easymotion'

""Adds the information bar at the bottom
Plug 'bling/vim-airline'

""Prettier
Plug 'prettier/prettier'

""React snippets
Plug 'epilande/vim-react-snippets'

""ALE
Plug 'dense-analysis/ale'

""Ultisnips allows to create personalized snippets
Plug 'SirVer/ultisnips'

""Eslint
Plug 'eslint/eslint'

""CSS Color Picker
""Plug 'DougBeney/pickachu'
Plug 'chrisbra/colorizer'
Plug 'KabbAmine/vCoolor.vim'

""Styled components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }


""Highlighting js
Plug 'othree/yajs.vim'

""Highlighting jsx
Plug 'maxmellon/vim-jsx-pretty'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

""
call plug#end()
""

"Configuration

let g:deoplete#enable_at_startup = 1

let g:python_host_prog='/home/manel/Desktop/Python-Virutal-Envs/3.7/bin/python'
let g:python_host_prog='/home/manel/Desktop/Python-Virutal-Envs/3.7/bin/python3'

"for react code snippets"
let g:UltiSnipsExpandTrigger="<tab>"

""CTRL+P finder
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }


"ESLINT confg"

"Autocommands"
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}


let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1

let g:ale_sign_error = '●'
let g:ale_sign_warning = '··'

"Prettier config"
let g:prettier#autoformat_config_present = 1

""Colorizer
let g:colorizer_auto_filetype='css,js'

"Keybindings 
"for shuogo code completion
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
"For nerdTree
nmap <C-n> :NERDTreeToggle<CR>
"For easymotion
map <Leader> <Plug>(easymotion-prefix)

""Auto complete keybindings

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ` ``<Esc>i


""Syntax coloring config
if (has("termguicolors"))
	set termguicolors
endif

syntax enable
colorscheme OceanicNext


"Plugins need to be added to runtimepath before helptags can be generated
packloadall
"Load all of the helptags now, after plugins have been loaded
"All messaged and errors will be ignored
silent! helptags ALL

