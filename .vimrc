"tired_i vimrc file (ver.22.04.12)

set nocompatible              " Vi와 호환 불가 설정, 필수
filetype off                  " 필수

" Vundle을 포함시키기 위해 runtime 경로를 설정하고 초기화
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 기존 경로 대신 Vundle이 플러그인을 설치할 경로를 입력하십시오.
"call vundle#begin('~/some/path/here')

" Vundle이 스스로를 관리하도록 설정, 필수
Plugin 'VundleVim/Vundle.vim'

" 플러그인 명령어를 vundle#begin/end 사이에 추가하십시오

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"start!!!!!!!!!!!!!!!

"colorscheme
"jellybeans
Plugin 'nanotech/jellybeans.vim'

"indent-guides
"들여쓰기 사이에 세로로 선을 표시
Plugin 'nathanaelkane/vim-indent-guides'

"nerdtree
":NERDTree 입력으로 실행. :q로 닫기
Plugin 'preservim/nerdtree'

"vim-fugitive
"창에서 git add, commit 같은 기능을 수행할 수 있음.
Plugin 'tpope/vim-fugitive'

"gitgutter
"깃으로 관리되는 소스코드는 수정된 부분을 좌측에 표시
Plugin 'airblade/vim-gitgutter'


call vundle#end()            " 필수
filetype plugin indent on    " 필수

" 당신의 모든 플러그인은 여기 앞에 추가되어야 합니다
"end!!!!!!!!!!!!!!!!!!!!!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 플러그인의 들여쓰기 변화를 무시하려면, 대신 이 명령어를 사용하십시오:
"filetype plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 간단한 도움말
" :PluginList       - 설정된 플러그인의 리스트
" :PluginInstall    - 플러그인 설치; 업데이트를 하려면 `!`를 덧붙이거나 :PluginUpdate 명령을 사용하십시오
" :PluginSearch foo - foo에 대해 검색; `!`를 덧붙여 로컬 캐시를 새로고침하십시오
" :PluginClean      - 사용하지 않는 플러그인의 삭제를 확인; `!`를 붙여 자동 삭제를 승인하십시오

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" syntax highlight
" 언어 syntax에 하이라이트표시
syntax on

" Set to auto read when a file is changed from the outside
" 현재 사용하고 있는 파일이 외부에서 수정된 경우 자동으로 읽기
set autoread

set autowrite "다른 파일로 넘어갈 때 자동 저장

set autoindent "자동 들여쓰기
set smartindent
set cindent

" Always show current position
" 오른편 하단에 현재 위치의 (행, 렬)을 표시
set ruler

" Highlight search results
" 검색결과에 하이라이트 표시하기
set hlsearch
set ic "대소문자 무시한 검색

" Show matching brackets when text indicator is over them
" 현재 커서가 놓여진 괄호의 짝을 표시하기
set showmatch

" line number
" 라인넘버 표시하기
set number


" Set utf8 as standard encoding
" utf8을 표준 인코딩으로 사용하기
set encoding=utf8

" auto indent's tab size
" 자동탭 사이즈를 4칸으로 하기
set shiftwidth=4

" 1 tab == 4 spaces
" 탭을 4칸으로 하기
set tabstop=4

set paste! "붙여넣기 계단현상 없애기

set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

"찾기에서 대소문자 구별하지 않음
set ignorecase    

"colorscheme
colorscheme jellybeans

"vim-indent-guides-default on.
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
"end
