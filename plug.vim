if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'scrooloose/syntastic'

"
"" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'pgilad/vim-skeletons'
Plug 'vim-airline/vim-airline'
"
" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }
Plug 'tpope/vim-fugitive'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}


"" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'  }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*'  }
"
" " Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }

"" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'  }
"
" " Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity']  }
"
"" Loaded when clojure file is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }

" Multiple file types
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme']  }
"
" " On-demand loading on both conditions
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader'  }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown'  }
autocmd! User goyo.vim echom 'Goyo is now loaded!'

Plug 'Shougo/vimproc.vim', { 'do': 'make'  }

Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }

Plug 'sjl/gundo.vim'

Plug 'vim-scripts/taglist.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'airblade/vim-gitgutter'

Plug 'junegunn/vim-emoji'

Plug 'artur-shaik/vim-javacomplete2'

Plug 'pearofducks/ansible-vim'
" install and use neomake linting
Plug 'neomake/neomake'

" " Add plugins to &runtimepath
call plug#end()"
