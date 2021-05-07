Vim�UnDo� �_!B�����
T���	�w]��_5��ꊄ  �                                  _�?�    _�                             ����                                                                                                                                                   ,                                                                                                                                                                                6           V        _�?�    �                  " .vimrc / init.vim�               �            5   F" The following vim/neovim configuration works for both Vim and NeoVim       /" ensure vim-plug is installed and then load it   call functions#PlugLoad()   )call plug#begin('~/.config/nvim/plugged')       " General {{{       " Abbreviations       abbr funciton function       abbr teh the       abbr tempalte template       abbr fitler filter       abbr cosnt const       abbr attribtue attribute       abbr attribuet attribute       0    set autoread " detect when a file is changed       -    set history=1000 " change history to 1000       " set textwidth=120       set textwidth=0       7    set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp   7    set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp           if (has('nvim'))   9        " show results of substition as they're happening            " but don't open a split           set inccommand=nosplit   	    endif       K    set backspace=indent,eol,start " make backspace behave in a sane manner       set clipboard=unnamed           if has('mouse')           set mouse=a   	    endif           " Searching   /    set ignorecase " case insensitive searching   I    set smartcase " case-sensitive if expresson contains a capital letter   +    set hlsearch " highlight search results   @    set incsearch " set incremental search, like modern browsers   :    set nolazyredraw " don't redraw while executing macros       '    set magic " Set magic on, for regex           " error bells       set noerrorbells       set visualbell       set t_vb=       set tm=500   " }}}       " Appearance {{{       set nocursorline   "    set number " show line numbers   &    set nowrap " turn on line wrapping       set formatoptions-=t   M    " set wrapmargin=8 " wrap lines when coming within n characters from side       set wrapmargin=0   %    set linebreak " set soft wrapping   1    set showbreak=… " show ellipsis at breaking   9    set autoindent " automatically set indent of new line   "    set ttyfast " faster redrawing   F    set diffopt+=vertical,iwhite,internal,algorithm:patience,hiddenoff   8    set laststatus=2 " show the status line all the time   @    set so=7 " set 7 lines to the cursors - when moving vertical   3    set wildmenu " enhanced command line completion   :    set hidden " current buffer can be put into background   *    set showcmd " show incomplete commands   A    set noshowmode " don't show which mode disabled for PowerLine   ;    set wildmode=list:longest " complete files like a shell       set shell=$SHELL   (    set cmdheight=1 " command bar height   "    set title " set terminal title   (    set showmatch " show matching braces   4    set mat=2 " how many tenths of a second to blink       set updatetime=300       set signcolumn=yes       set shortmess+=c       set relativenumber           " Tab control   J    set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'   -    set tabstop=4 " the visible width of tabs   A    set softtabstop=4 " edit as if the tabs are 4 characters wide   F    set shiftwidth=4 " number of spaces to use for indent and unindent   ?    set shiftround " round indent to a multiple of 'shiftwidth'           " code folding settings   0    set foldmethod=syntax " fold based on indent       set foldlevelstart=99   2    set foldnestmax=10 " deepest fold is 10 levels   ,    set nofoldenable " don't fold by default       set foldlevel=1       !    " toggle invisible characters       set list   E    set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮       set showbreak=↪       L    set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors   C    " switch cursor to line when in insert mode, and block when not   >    set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50   :    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor   2    \,sm:block-blinkwait175-blinkoff150-blinkon175           if &term =~ '256color'   (        " disable background color erase           set t_ut=   	    endif       .    " Enable 24 bit color support if supported   7    " Para o wal funcionar, tem que comentar esse bloco       if (has("termguicolors"))           if (!(has("nvim")))   2            let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"   2            let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"           endif           set termguicolors   	    endif           " highlight conflicts   4    match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'           " Load colorschemes   "    Plug 'chriskempson/base16-vim'       Plug 'joshdick/onedark.vim'       Plug 'ntk148v/vim-horizon'       Plug 'agude/vim-eldar'   A    Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }       Plug 'kjssad/quantum.vim'       Plug 'dylanaraps/wal'           " LightLine {{{   $        Plug 'itchyny/lightline.vim'   ,        Plug 'nicknisi/vim-base16-lightline'   )        " \   'colorscheme': 'solarized',   '        " \   'colorscheme': 'horizon',   /        " \   'colorscheme': 'challenger_deep',   '        " \   'colorscheme': 'quantum',   '        " \   'colorscheme': '16color',           let g:lightline = {   1            \   'colorscheme': 'challenger_deep',               \   'active': {   2            \       'left': [ [ 'mode', 'paste' ],   ,            \               [ 'gitbranch' ],   D            \               [ 'readonly', 'filetype', 'filename' ]],   =            \       'right': [ [ 'percent' ], [ 'lineinfo' ],   =            \               [ 'fileformat', 'fileencoding' ],   p            \               [ 'gitblame', 'currentfunction',  'cocstatus', 'linter_errors', 'linter_warnings' ]]               \   },   %            \   'component_expand': {               \   },   #            \   'component_type': {   (            \       'readonly': 'error',   1            \       'linter_warnings': 'warning',   ,            \       'linter_errors': 'error'               \   },   '            \   'component_function': {   E            \       'fileencoding': 'helpers#lightline#fileEncoding',   =            \       'filename': 'helpers#lightline#fileName',   A            \       'fileformat': 'helpers#lightline#fileFormat',   =            \       'filetype': 'helpers#lightline#fileType',   ?            \       'gitbranch': 'helpers#lightline#gitBranch',   .            \       'cocstatus': 'coc#status',   K            \       'currentfunction': 'helpers#lightline#currentFunction',   <            \       'gitblame': 'helpers#lightline#gitBlame'               \   },               \   'tabline': {   +            \       'left': [ [ 'tabs' ] ],   ,            \       'right': [ [ 'close' ] ]               \   },               \   'tab': {   9            \       'active': [ 'filename', 'modified' ],   ;            \       'inactive': [ 'filename', 'modified' ],               \   },   9            \   'separator': { 'left': '', 'right': '' },   ;            \   'subseparator': { 'left': '', 'right': '' }           \ }   	    " }}}   " }}}       " General Mappings {{{   *    " set a map leader for more key combos       let mapleader = ','           " remap esc       inoremap jk <esc>           " shortcut to save       nmap <leader>, :w<cr>           " set paste toggle       set pastetoggle=<leader>v       "    " edit ~/.config/nvim/init.vim   2    map <leader>ev :e! ~/.config/nvim/init.vim<cr>       " edit gitconfig   '    map <leader>eg :e! ~/.gitconfig<cr>           " clear highlighted search   0    noremap <space> :set hlsearch! hlsearch?<cr>       *    " activate spell-checking alternatives   *    nmap ;s :set invspell spelllang=en<cr>           " markdown to html   0    nmap <leader>md :%!markdown --html4tags <cr>           " remove extra whitespace   &    nmap <leader><space> :%s/\s\+$<cr>   6    nmap <leader><space><space> :%s/\n\{2,}/\r\r/g<cr>       <    inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "\<C-j>"   <    inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "\<C-k>"       !    nmap <leader>l :set list!<cr>       5    " keep visual selection when indenting/outdenting       vmap < <gv       vmap > >gv       ,    " switch between current and last buffer       nmap <leader>. <c-^>       %    " enable . command in visual mode       vnoremap . :normal .<cr>       (    map <silent> <C-h> <Plug>WinMoveLeft   (    map <silent> <C-j> <Plug>WinMoveDown   &    map <silent> <C-k> <Plug>WinMoveUp   )    map <silent> <C-l> <Plug>WinMoveRight           nmap <leader>z <Plug>Zoom            map <leader>wc :wincmd q<cr>           " move line mappings       " ∆ is <A-j> on macOS       " ˚ is <A-k> on macOS       nnoremap ∆ :m .+1<cr>==       nnoremap ˚ :m .-2<cr>==   $    inoremap ∆ <Esc>:m .+1<cr>==gi   #    inoremap ˚ <Esc>:m .-2<cr>==gi   !    vnoremap ∆ :m '>+1<cr>gv=gv        vnoremap ˚ :m '<-2<cr>gv=gv       '    vnoremap $( <esc>`>a)<esc>`<i(<esc>   '    vnoremap $[ <esc>`>a]<esc>`<i[<esc>   '    vnoremap ${ <esc>`>a}<esc>`<i{<esc>   '    vnoremap $" <esc>`>a"<esc>`<i"<esc>   '    vnoremap $' <esc>`>a'<esc>`<i'<esc>   )    vnoremap $\ <esc>`>o*/<esc>`<O/*<esc>   '    vnoremap $< <esc>`>a><esc>`<i<<esc>           " toggle cursor line   +    nnoremap <leader>i :set cursorline!<cr>            " scroll the viewport faster       nnoremap <C-e> 3<C-e>       nnoremap <C-y> 3<C-y>       1    " moving up and down work as you would expect       nnoremap <silent> j gj       nnoremap <silent> k gk       nnoremap <silent> ^ g^       nnoremap <silent> $ g$       2    " helpers for dealing with other people's code   )    nmap \t :set ts=4 sts=4 sw=4 noet<cr>   '    nmap \s :set ts=4 sts=4 sw=4 et<cr>       B    nnoremap <silent> <leader>u :call functions#HtmlUnEscape()<cr>       '    command! Rm call functions#Delete()   0    command! RM call functions#Delete() <Bar> q!           " Custom text objects           " inner-line   /    xnoremap <silent> il :<c-u>normal! g_v^<cr>   /    onoremap <silent> il :<c-u>normal! g_v^<cr>           " around line   .    vnoremap <silent> al :<c-u>normal! $v0<cr>   .    onoremap <silent> al :<c-u>normal! $v0<cr>           " Interesting word mappings   -    nmap <leader>0 <Plug>ClearInterestingWord   +    nmap <leader>1 <Plug>HiInterestingWord1   +    nmap <leader>2 <Plug>HiInterestingWord2   +    nmap <leader>3 <Plug>HiInterestingWord3   +    nmap <leader>4 <Plug>HiInterestingWord4   +    nmap <leader>5 <Plug>HiInterestingWord5   +    nmap <leader>6 <Plug>HiInterestingWord6   " }}}       " AutoGroups {{{   !    " file type specific settings       augroup configgroup           autocmd!       .        " automatically resize panes on resize   2        autocmd VimResized * exe 'normal! \<c-w>='   B        autocmd BufWritePost .vimrc,.vimrc.local,init.vim source %   2        autocmd BufWritePost .vimrc.local source %   P        " save all files on focus lost, ignoring warnings about untitled buffers   &        autocmd FocusLost * silent! wa       H        " make quickfix windows take all the lower section of the screen   .        " when there are multiple windows open   $        autocmd FileType qf wincmd J   2        autocmd FileType qf nmap <buffer> q :q<cr>       augroup END   " }}}       " General Functionality {{{   !    " better terminal integration   D    " substitute, search, and abbreviate multiple variants of a word       Plug 'tpope/vim-abolish'           " easy commenting motions       Plug 'tpope/vim-commentary'       W    " mappings which are simply short normal mode aliases for commonly used ex commands       Plug 'tpope/vim-unimpaired'       4    " endings for html, xml, etc. - ehances surround       Plug 'tpope/vim-ragtag'       h    " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.       Plug 'tpope/vim-surround'           " tmux integration for vim       Plug 'benmills/vimux'       B    " enables repeating other supported plugins with the . command       Plug 'tpope/vim-repeat'           " .editorconfig support   (    Plug 'editorconfig/editorconfig-vim'       m    " single/multi line code handler: gS - split one line into multiple, gJ - combine multiple lines into one   $    Plug 'AndrewRadev/splitjoin.vim'       +    " detect indent style (tabs vs. spaces)       Plug 'tpope/vim-sleuth'       0    " Startify: Fancy startup screen for vim {{{   !        Plug 'mhinz/vim-startify'       9        " Don't change to directory when selecting a file   '        let g:startify_files_number = 5   (        let g:startify_change_to_dir = 0   *        let g:startify_custom_header = [ ]   (        let g:startify_relative_path = 1   "        let g:startify_use_env = 1       K        " Custom startup list, only show MRU from current directory/project            let g:startify_lists = [   E        \  { 'type': 'dir',       'header': [ 'Files '. getcwd() ] },   `        \  { 'type': function('helpers#startify#listcommits'), 'header': [ 'Recent Commits' ] },   C        \  { 'type': 'sessions',  'header': [ 'Sessions' ]       },   C        \  { 'type': 'bookmarks', 'header': [ 'Bookmarks' ]      },   C        \  { 'type': 'commands',  'header': [ 'Commands' ]       },           \ ]       #        let g:startify_commands = [   :        \   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },   C        \   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },           \ ]       $        let g:startify_bookmarks = [   1            \ { 'c': '~/.config/nvim/init.vim' },   &            \ { 'g': '~/.gitconfig' },   !            \ { 'z': '~/.zshrc' }           \ ]       3        autocmd User Startified setlocal cursorline   %        nmap <leader>st :Startify<cr>   	    " }}}       #    " Close buffers but keep splits       Plug 'moll/vim-bbye'       nmap <leader>b :Bdelete<cr>           " Writing in vim {{{{            Plug 'junegunn/goyo.vim'       @        autocmd! User GoyoEnter nested call helpers#goyo#enter()   @        autocmd! User GoyoLeave nested call helpers#goyo#leave()   	    " }}}           " context-aware pasting       Plug 'sickill/vim-pasta'           " NERDTree {{{   P        Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }   *        Plug 'Xuyuanp/nerdtree-git-plugin'   %        Plug 'ryanoasis/vim-devicons'   6        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'   &        let g:WebDevIconsOS = 'Darwin'   7        let g:WebDevIconsUnicodeDecorateFolderNodes = 1   0        let g:DevIconsEnableFoldersOpenClose = 1   >        let g:DevIconsEnableFolderExtensionPatternMatching = 1   I        let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible   J        let NERDTreeDirArrowCollapsible = "\u00a0" " make arrows invisible   :        let NERDTreeNodeDelimiter = "\u263a" " smiley face               augroup nerdtree               autocmd!   V            autocmd FileType nerdtree setlocal nolist " turn off whitespace characters   h            autocmd FileType nerdtree setlocal nocursorline " turn off line highlighting for performance           augroup END               " Toggle NERDTree   "        function! ToggleNerdTree()   }            if @% != "" && @% !~ "Startify" && (!exists("g:NERDTree") || (g:NERDTree.ExistsForTab() && !g:NERDTree.IsOpen()))                   :NERDTreeFind               else                   :NERDTreeToggle               endif           endfunction           " toggle nerd tree   :        nmap <silent> <leader>n :call ToggleNerdTree()<cr>   P        " find the current file in nerdtree without needing to reload the drawer   1        nmap <silent> <leader>y :NERDTreeFind<cr>                let NERDTreeShowHidden=1   0        " let NERDTreeDirArrowExpandable = '▷'   1        " let NERDTreeDirArrowCollapsible = '▼'   ,        let g:NERDTreeIndicatorMapCustom = {           \ "Modified"  : "✹",           \ "Staged"    : "✚",           \ "Untracked" : "✭",           \ "Renamed"   : "➜",           \ "Unmerged"  : "═",           \ "Deleted"   : "✖",           \ "Dirty"     : "✗",   !        \ "Clean"     : "✔︎",           \ 'Ignored'   : '☒',           \ "Unknown"   : "?"           \ }   	    " }}}           " FZF {{{   !        Plug '/usr/local/opt/fzf'   ;        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }           Plug 'junegunn/fzf.vim'   -        let g:fzf_layout = { 'down': '~50%' }   J        " let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }   )        let $FZF_DEFAULT_OPTS='--reverse'               if isdirectory(".git")   .            " if in a git project, use :GFiles   V            nmap <silent> <leader>t :GitFiles --cached --others --exclude-standard<cr>           else   !            " otherwise, use :FZF   ,            nmap <silent> <leader>t :FZF<cr>           endif       ,        nmap <silent> <leader>s :GFiles?<cr>       ,        nmap <silent> <leader>r :Buffers<cr>   (        nmap <silent> <leader>e :FZF<cr>   -        nmap <leader><tab> <plug>(fzf-maps-n)   -        xmap <leader><tab> <plug>(fzf-maps-x)   -        omap <leader><tab> <plug>(fzf-maps-o)       ?        nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>   &        nnoremap <Leader>ps :Rg<SPACE>                       " Insert mode completion   1        imap <c-x><c-k> <plug>(fzf-complete-word)   1        imap <c-x><c-f> <plug>(fzf-complete-path)   4        imap <c-x><c-j> <plug>(fzf-complete-file-ag)   1        imap <c-x><c-l> <plug>(fzf-complete-line)       3        nnoremap <silent> <Leader>C :call fzf#run({           \   'source':   >        \     map(split(globpath(&rtp, "colors/*.vim"), "\n"),   P        \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),           \   'sink':    'colo',           \   'options': '+m',           \   'left':    30           \ })<CR>       &        command! FZFMru call fzf#run({   !        \  'source':  v:oldfiles,           \  'sink':    'e',   !        \  'options': '-m -x +s',           \  'down':    '40%'})       7        command! -bang -nargs=* Find call fzf#vim#grep(   \            \ 'rg --column --line-number --no-heading --follow --color=always '.<q-args>, 1,   p            \ <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)   3        command! -bang -nargs=? -complete=dir Files   [            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('right:50%', '?'), <bang>0)   6        command! -bang -nargs=? -complete=dir GitFiles   ^            \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview('right:50%', '?'), <bang>0)   	    " }}}           " vim-fugitive {{{   !        Plug 'tpope/vim-fugitive'   -        nmap <silent> <leader>gs :Gstatus<cr>   "        nmap <leader>ge :Gedit<cr>   *        nmap <silent><leader>gr :Gread<cr>   +        nmap <silent><leader>gb :Gblame<cr>       =        Plug 'tpope/vim-rhubarb' " hub extension for fugitive   $        Plug 'sodapopcan/vim-twiggy'           Plug 'rbong/vim-flog'   	    " }}}           " UltiSnips {{{   1        Plug 'SirVer/ultisnips' " Snippets plugin   ,        let g:UltiSnipsExpandTrigger="<C-l>"   1        let g:UltiSnipsJumpForwardTrigger="<C-j>"   2        let g:UltiSnipsJumpBackwardTrigger="<C-k>"   	    " }}}           " coc {{{   J        Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}       '        let g:coc_global_extensions = [           \ 'coc-css',           \ 'coc-json',           \ 'coc-tsserver',           \ 'coc-git',           \ 'coc-eslint',           \ 'coc-tslint-plugin',           \ 'coc-pairs',           \ 'coc-sh',           \ 'coc-vimlsp',           \ 'coc-emmet',           \ 'coc-prettier',           \ 'coc-ultisnips',           \ 'coc-explorer',           \ 'coc-diagnostic',           \ 'coc-python',           \ 'coc-snippets',   "        \ 'coc-styled-components',           \ 'coc-highlight'           \ ]       D        autocmd CursorHold * silent call CocActionAsync('highlight')               " coc-prettier   B        command! -nargs=0 Prettier :CocCommand prettier.formatFile   :        nmap <leader>f :CocCommand prettier.formatFile<cr>               " coc-git   )        nmap [g <Plug>(coc-git-prevchunk)   )        nmap ]g <Plug>(coc-git-nextchunk)   )        nmap gs <Plug>(coc-git-chunkinfo)   -        nmap gu :CocCommand git.chunkUndo<cr>       8        nmap <silent> <leader>k :CocCommand explorer<cr>       -        let g:coc_explorer_global_presets = {           \   'workspace': {   .        \      'root-uri': '~/Workspace/code',           \   },           \   'floating': {   &        \      'position': 'floating',           \   },           \ }       (        " Use preset argument to open it   C        nmap <leader>kd :CocCommand explorer --preset workspace<CR>   B        nmap <leader>kf :CocCommand explorer --preset floating<CR>               " List all presets   ,        nmap <leader>kl :CocList explPresets               "remap keys for gotos   /        nmap <silent> gd <Plug>(coc-definition)   4        nmap <silent> gy <Plug>(coc-type-definition)   3        nmap <silent> gi <Plug>(coc-implementation)   /        nmap <silent> gr <Plug>(coc-references)   ,        nmap <silent> gh <Plug>(coc-doHover)                " diagnostics navigation   4        nmap <silent> [c <Plug>(coc-diagnostic-prev)   4        nmap <silent> ]c <Plug>(coc-diagnostic-next)               " rename   3        nmap <silent> <leader>rn <Plug>(coc-rename)       *        " Remap for format selected region   3        xmap <leader>f  <Plug>(coc-format-selected)   3        nmap <leader>f  <Plug>(coc-format-selected)               " organize imports   Z        command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')       7        " Use K to show documentation in preview window   ?        nnoremap <silent> K :call <SID>show_documentation()<CR>       (        function! s:show_documentation()   6            if (index(['vim','help'], &filetype) >= 0)   .                execute 'h '.expand('<cword>')               else   )                call CocAction('doHover')               endif           endfunction               "tab completion   %        inoremap <silent><expr> <TAB>   '            \ pumvisible() ? "\<C-n>" :   2            \ <SID>check_back_space() ? "\<TAB>" :               \ coc#refresh()   A        inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"       ,        function! s:check_back_space() abort           let col = col('.') - 1   6        return !col || getline('.')[col - 1]  =~# '\s'           endfunction       T        " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current   I        " position. Coc only does snippet and additional edit on confirm.   #        if exists('*complete_info')   `            inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"           else   E            imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"           endif       P        " For enhanced <CR> experience with coc-pairs checkout :h coc#on_enter()   I        inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()   9              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"   	    " }}}   " }}}       %" Language-Specific Configuration {{{       " html / templates {{{   K        " emmet support for vim - easily create markdup wth CSS-like syntax           Plug 'mattn/emmet-vim'       6        " match tags in html, similar to paren support   5        Plug 'gregsexton/MatchTag', { 'for': 'html' }               " html5 support   2        Plug 'othree/html5.vim', { 'for': 'html' }               " mustache support   /        Plug 'mustache/vim-mustache-handlebars'               " pug / jade support   >        Plug 'digitaltoad/vim-pug', { 'for': ['jade', 'pug'] }               " nunjucks support   9        Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'njk' }               " liquid support           Plug 'tpope/vim-liquid'   	    " }}}           " JavaScript {{{   U        Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'javascript.jsx', 'html' ] }   ]        " Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html'] }   5        Plug 'moll/vim-node', { 'for': 'javascript' }   d        Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }   '        Plug 'MaxMEllon/vim-jsx-pretty'   4        let g:vim_jsx_pretty_highlight_close_tag = 1   L        Plug 'styled-components/vim-styled-components', { 'branch': 'main' }   	    " }}}           " TypeScript {{{   V        Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'typescript.tsx'] }   Q        " Plug 'Shougo/vimproc.vim', { 'do': 'make' } TODO what still needs this?   	    " }}}               " Styles {{{   C        Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }   5        Plug 'groenewege/vim-less', { 'for': 'less' }   7        Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }   ;        Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }   7        Plug 'stephenway/postcss.vim', { 'for': 'css' }   	    " }}}           " markdown {{{   8        Plug 'tpope/vim-markdown', { 'for': 'markdown' }   B        let g:markdown_fenced_languages = [ 'tsx=typescript.tsx' ]       A        " Open markdown files in Marked.app - mapped to <leader>m   O        Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' }   '        nmap <leader>m :MarkedOpen!<cr>   '        nmap <leader>mq :MarkedQuit<cr>   )        nmap <leader>* *<c-o>:%s///gn<cr>               " Kleber   +        " Opens the markdown in the browser   ?        " Plug 'suan/vim-instant-markdown', {'for': 'markdown'}   =        Plug 'suan/vim-instant-markdown', {'for': 'markdown'}   	    " }}}           " JSON {{{   /        Plug 'elzr/vim-json', { 'for': 'json' }   )        let g:vim_json_syntax_conceal = 0   	    " }}}       "    Plug 'ekalinin/Dockerfile.vim'   " }}}       call plug#end()       !" Colorscheme and final setup {{{       "       " COLORS       "   F    " Colors are made by generating a color scheme based on a picture.   O    " This functionality is enabled through https://github.com/dylanaraps/pywal       "   ?    " This call must happen after the plug#end() call to ensure   ,    " that the colorschemes have been loaded   2    if filereadable(expand("~/.vimrc_background"))            let base16colorspace=256   "        source ~/.vimrc_background       else   %        " let g:onedark_termcolors=16   *        " let g:onedark_terminal_italics=1           " colorscheme onedark           " colorscheme eldar           " colorscheme horizon   %        " colorscheme challenger_deep           " colorscheme quantum           colorscheme wal   	    endif       syntax on       filetype plugin indent on   D    " make the highlighting of tabs and other non-text less annoying   1    highlight SpecialKey ctermfg=19 guifg=#333333   .    highlight NonText ctermfg=19 guifg=#333333       .    " make comments and HTML attributes italic   9    highlight Comment cterm=italic term=italic gui=italic   9    highlight htmlArg cterm=italic term=italic gui=italic   ;    highlight xmlAttrib cterm=italic term=italic gui=italic   8    " highlight Type cterm=italic term=italic gui=italic   !    highlight Normal ctermbg=none   " }}}       '" vim:set foldmethod=marker foldlevel=0   "   " Python {{{       Plug 'psf/black'       Plug 'honza/vim-snippets'   )    " Plug 'tweekmonster/django-plus.vim'   #    " Plug 'damonkelley/django.vim'   #    Plug 'vim-python/python-syntax'   "    let g:python_highlight_all = 1   " }}}       " Kleber {{{       Plug 'mattn/webapi-vim'       Plug 'mattn/vim-gist'           Plug 'hugolgst/vimsence'       Plug 'majutsushi/tagbar'   $    nmap <leader>j :TagbarToggle<CR>       0    nmap <leader>hd :set filetype=htmldjango<cr>   *    nmap <leader>ht :set filetype=html<cr>           " toggle cursor column   .    nnoremap <leader>ii :set cursorcolumn!<cr>       .    " Remove corretor (highlight) das palavras       nmap ;sn :set nospell<cr>   8    " Define corretor (highlight) das palavras em ingles   0    nmap ;se :setlocal spell spelllang=en_us<cr>   ;    " Define corretor (highlight) das palavras em portugues   0    nmap ;sp :setlocal spell spelllang=pt_br<cr>   7    " Desliga o spell automatico para todos os arquivos   $    autocmd BufEnter *.* set nospell       !    " remove M windows characters       map ;m :e ++ff=dos<cr>       4    " replace href, src start img, css, js to static   Q    map ;st :%s/\v(href\|src)\="((img\|css\|js)[^"]+)"/\1\="{% static '\2' %}"/gc       ;    " replace background-image start img, css, js to static   ]    map ;sb :%s/\v(background-image: url)\("((img\|css\|js)[^"]+)"/\1\({% static '\2' %})"/gc       <    map ;sl :%s/\v"legacy_id": ([0-9]+)/"legacy_id": "\1"/gc       L    " Tive que adicionar essa linha para funcionar com o schemacolor horizon   "    " hi link CocFloating markdown       -    " Custom color to challenger_deep+wal {{{            highlight clear SpellBad   (        highlight SpellBad gui=undercurl   0        highlight normal guibg=none ctermbg=none   0        highlight LineNr guibg=none ctermbg=none   '        highlight SignColumn guibg=NONE   6        highlight CursorLineNr guibg=none ctermbg=none       6        highlight CursorLine guibg=#95ffa4 guifg=black   8        highlight CursorColumn guibg=#906cff guifg=black   2        highlight Search guibg=#ffe9aa guifg=black   	    " }}}           " " Custom color to wal {{{   T    "     " Make custom highlights after declaring other colors, they might override   5    "     hi CursorColumn ctermbg=4 ctermfg=7 guibg=4   )    "     " Highlight current line number   $    "     hi CursorLineNr ctermfg=12        "     " hi LineNr ctermbg=32       "     " Highlight to list       "     hi NonText ctermfg=8   !    "     hi Whitespace ctermfg=8   )    "     " Highlight trailing whitespace   )    "     hi link ExtraWhitespace Comment   1    "     " Make floating menu have proper colors   .    "     hi Pmenu ctermfg=3 ctermbg=0 guibg=0       " " }}}   " }}}5�_�                             ����                                                                                                                                                                                                                                                                                                                                                 V        _�?�    �      Q  P      	syntax on�        P    5��