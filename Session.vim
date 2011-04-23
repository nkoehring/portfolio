let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
map! <F1> <Plug>ShowFunc
inoremap <silent> <F9> :TlistUpdatea
inoremap <silent> <F8> :TlistTogglea
snoremap <silent> 	 i<Right>=TriggerSnippet()
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
vmap  <Plug>TwitvimVisual
snoremap  b<BS>
snoremap % b<BS>%
snoremap ' b<BS>'
nmap <silent> ,cI :call NERDComment(0, "prepend")
nmap <silent> ,cA :call NERDComment(0, "append")
nnoremap <silent> ,c$ :call NERDComment(0, "toEOL")
vnoremap <silent> ,cu :call NERDComment(1, "uncomment")
nnoremap <silent> ,cu :call NERDComment(0, "uncomment")
vnoremap <silent> ,cn :call NERDComment(1, "nested")
nnoremap <silent> ,cn :call NERDComment(0, "nested")
vnoremap <silent> ,cb :call NERDComment(1, "alignBoth")
nnoremap <silent> ,cb :call NERDComment(0, "alignBoth")
vnoremap <silent> ,cr :call NERDComment(1, "alignRight")
nnoremap <silent> ,cr :call NERDComment(0, "alignRight")
vnoremap <silent> ,cl :call NERDComment(1, "alignLeft")
nnoremap <silent> ,cl :call NERDComment(0, "alignLeft")
vmap <silent> ,cy :call NERDComment(1, "yank")
nmap <silent> ,cy :call NERDComment(0, "yank")
vnoremap <silent> ,ci :call NERDComment(1, "invert")
nnoremap <silent> ,ci :call NERDComment(0, "invert")
vnoremap <silent> ,cs :call NERDComment(1, "sexy")
nnoremap <silent> ,cs :call NERDComment(0, "sexy")
vnoremap <silent> ,cm :call NERDComment(1, "minimal")
nnoremap <silent> ,cm :call NERDComment(0, "minimal")
vnoremap <silent> ,c  :call NERDComment(1, "toggle")
nnoremap <silent> ,c  :call NERDComment(0, "toggle")
vnoremap <silent> ,cc :call NERDComment(1, "norm")
nnoremap <silent> ,cc :call NERDComment(0, "norm")
snoremap U b<BS>U
snoremap \ b<BS>\
map \pW :call ShowPyDoc('', 1) 
map \pw :call ShowPyDoc('', 1) 
map \we <Plug>PotwikiEdit
map \wf <Plug>PotwikiFollow
map \wi <Plug>PotwikiIndex
map \ww <Plug>PotwikiHome
nmap <silent> \mo :Moccur
nmap <silent> \oc :Occur
map <silent> \f <Plug>SimpleFold_Foldsearch
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap gx <Plug>NetrwBrowseX
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
map <F1> <Plug>ShowFunc
nnoremap <silent> <F9> :TlistUpdate
nnoremap <silent> <F8> :TlistToggle
inoremap <silent>   <BS>:call NERDComment(0, "insert")
inoremap <silent> 	 =TriggerSnippet()
imap <NL> <Plug>IMAP_JumpForward
inoremap <silent> 	 =ShowAvailableSnips()
vmap ô <Plug>TwitvimVisual
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=grep\ -nH\ $*
set helplang=de
set incsearch
set laststatus=2
set ruler
set runtimepath=~/.vim,~/.vim/bundle/vim-coffee-script,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/ftplugin/html
set shiftwidth=4
set showcmd
set showmatch
set smartindent
set softtabstop=4
set statusline=%<%f\ %y%h%m%r\ CWD:%{getcwd()}%=%-14.(%l,%c%V%)\ %P
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set switchbuf=useopen
set tabstop=4
set textwidth=101
set wildmenu
set wildmode=list:longest,full
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/devel/projects/portfolio
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 src/stylesheets/screen.sass
badd +0 src/layouts/default.haml
badd +0 src/pages/index.haml
badd +44 ~/devel/projects/blog.nkoehring.de/src/stylesheets/application.sass
badd +1 src/pages/web-entwicklung.haml
badd +4 src/pages/ueber-mich.haml
badd +0 src/pages/kontakt.haml
args src/stylesheets/screen.sass
edit src/stylesheets/screen.sass
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=101
setlocal colorcolumn=101
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sass'
setlocal filetype=sass
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetSassIndent()
setlocal indentkeys=o,O,*<Return>,<:>,!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sass'
setlocal syntax=sass
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=101
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 105 - ((32 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
105
normal! 038l
tabedit src/layouts/default.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=101
setlocal colorcolumn=101
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=.,/usr/lib/ruby/site_ruby/1.9.1,/usr/lib/ruby/site_ruby/1.9.1/x86_64-linux,/usr/lib/ruby/site_ruby,/usr/lib/ruby/vendor_ruby/1.9.1,/usr/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.9.1,/usr/lib/ruby/1.9.1/x86_64-linux,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/ext,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/lib,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/lib/case_sensitive_require,/usr/lib/ruby/gems/1.9.1/gems/abstract-1.0.0/lib,/usr/lib/ruby/gems/1.9.1/gems/actionmailer-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/actionpack-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/actionpack-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/activemodel-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/activerecord-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activeresource-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-3.0.1/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/bson-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/bson_ext-1.1.1/ext,/usr/lib/ruby/gems/1.9.1/gems/builder-2.1.2/lib,/usr/lib/ruby/gems/1.9.1/gems/bundler-1.0.7/lib,/usr/lib/ruby/gems/1.9.1/gems/charleston-0.1.2/lib,/usr/lib/ruby/gems/1.9.1/gems/chingu-0.8.1/lib,/usr/lib/ruby/gems/1.9.1/gems/coderay-0.9.7/lib,/usr/lib/ruby/gems/1.9.1/gems/coffee-script-2.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/coffee-script-source-0.9.5/lib,/usr/lib/ruby/gems/1.9.1/gems/compass-0.10.6/lib,/usr/lib/ruby/gems/1.9.1/gems/crack-0.1.8/lib,/usr/lib/ruby/gems/1.9.1/gems/daemons-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/erubis-2.6.6/lib,/usr/lib/ruby/gems/1.9.1/gems/escape_utils-0.1.9/ext,/usr/lib/ruby/gems/1.9.1/gems/escape_utils-0.1.9/lib,/usr/lib/ruby/gems/1.9.1/gems/eventmachine-0.12.10/lib,/usr/lib/ruby/gems/1.9.1/gems/fancy-0.3.0/lib,/usr/lib/ruby/gems/1.9.1/gems/faster_xml_simple-0.5.0/lib,/usr/lib/ruby/gems/1.9.1/gems/ffi-1.0.5/ext,/usr/lib/ruby/gems/1.9.1/gems/ffi-1.0.5/lib,/usr/lib/ruby/gems/1.9.1/gems/gosu-0.7.27.1/lib,/usr/lib/ruby/gems/1.9.1/gems/haml-3.0.23/lib,/usr/lib/ruby/gems/1.9.1/gems/haml-3.0.25/lib,/usr/lib/ruby/gems/1.9.1/gems/highline-1.6.1/lib,/usr/lib/ruby/gems/1.9.1/gems/i18n-0.4.2/lib,/usr/lib/ruby/gems/1.9.1/gems/jnunemaker-validatable-1.8.4/lib,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/ext/json/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/lib,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/ext/json/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/lib,/usr/lib/ruby/gems/1.9.1/gems/libxml-ruby-1.1.4/ext/libxml,/usr/lib/ruby/gems/1.9.1/gems/libxml-ruby-1.1.4/lib,/usr/lib/ruby/gems/1.9.1/gems/mailfactory-1.4.0/lib,/usr/lib/ruby/gems/1.9.1/gems/mime-types-1.16/lib,/usr/lib/ruby/gems/1.9.1/gems/mongo-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/mongo_mapper-0.8.6/lib,/usr/lib/ruby/gems/1.9.1/gems/nice-ffi-0.4/lib,/usr/lib/ruby/gems/1.9.1/gems/notify-0.3.0/lib,/usr/lib/ruby/gems/1.9.1/gems/oauth-0.4.4/lib,/usr/lib/ruby/gems/1.9.1/gems/plucky-0.3.6/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-1.2.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-mount-0.6.13/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-test-0.5.7/lib,/usr/lib/ruby/gems/1.9.1/gems/rails-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/rake-0.8.7/lib,/usr/lib/ruby/gems/1.9.1/gems/rdiscount-1.6.8/lib,/usr/lib/ruby/gems/1.9.1/gems/redclothcoderay-0.3.6/lib,/usr/lib/ruby/gems/1.9.1/gems/rest-client-1.6.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rmagick-2.13.1/ext,/usr/lib/ruby/gems/1.9.1/gems/rmagick-2.13.1/lib,/usr/lib/ruby/gems/1.9.1/gems/ruby-sdl-ffi-0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/rubygame-2.6.4/lib,/usr/lib/ruby/gems/1.9.1/gems/rubytter-1.4.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rufus-mnemo-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/sinatra-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/sinatra-1.2.0/lib,/usr/lib/ruby/gems/1.9.1/gems/staticmatic-0.11.1/lib,/usr/lib/ruby/gems/1.9.1/gems/termcolor-1.2.1/lib,/usr/lib/ruby/gems/1.9.1/gems/termtter-1.9.0/lib,/usr/lib/ruby/gems/1.9.1/gems/texplay-0.3.5/lib,/usr/lib/ruby/gems/1.9.1/gems/
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=101
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 54 - ((49 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 055l
tabedit src/pages/index.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=101
setlocal colorcolumn=101
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=.,/usr/lib/ruby/site_ruby/1.9.1,/usr/lib/ruby/site_ruby/1.9.1/x86_64-linux,/usr/lib/ruby/site_ruby,/usr/lib/ruby/vendor_ruby/1.9.1,/usr/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.9.1,/usr/lib/ruby/1.9.1/x86_64-linux,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/ext,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/lib,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/lib/case_sensitive_require,/usr/lib/ruby/gems/1.9.1/gems/abstract-1.0.0/lib,/usr/lib/ruby/gems/1.9.1/gems/actionmailer-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/actionpack-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/actionpack-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/activemodel-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/activerecord-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activeresource-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-3.0.1/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/bson-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/bson_ext-1.1.1/ext,/usr/lib/ruby/gems/1.9.1/gems/builder-2.1.2/lib,/usr/lib/ruby/gems/1.9.1/gems/bundler-1.0.7/lib,/usr/lib/ruby/gems/1.9.1/gems/charleston-0.1.2/lib,/usr/lib/ruby/gems/1.9.1/gems/chingu-0.8.1/lib,/usr/lib/ruby/gems/1.9.1/gems/coderay-0.9.7/lib,/usr/lib/ruby/gems/1.9.1/gems/coffee-script-2.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/coffee-script-source-0.9.5/lib,/usr/lib/ruby/gems/1.9.1/gems/compass-0.10.6/lib,/usr/lib/ruby/gems/1.9.1/gems/crack-0.1.8/lib,/usr/lib/ruby/gems/1.9.1/gems/daemons-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/erubis-2.6.6/lib,/usr/lib/ruby/gems/1.9.1/gems/escape_utils-0.1.9/ext,/usr/lib/ruby/gems/1.9.1/gems/escape_utils-0.1.9/lib,/usr/lib/ruby/gems/1.9.1/gems/eventmachine-0.12.10/lib,/usr/lib/ruby/gems/1.9.1/gems/fancy-0.3.0/lib,/usr/lib/ruby/gems/1.9.1/gems/faster_xml_simple-0.5.0/lib,/usr/lib/ruby/gems/1.9.1/gems/ffi-1.0.5/ext,/usr/lib/ruby/gems/1.9.1/gems/ffi-1.0.5/lib,/usr/lib/ruby/gems/1.9.1/gems/gosu-0.7.27.1/lib,/usr/lib/ruby/gems/1.9.1/gems/haml-3.0.23/lib,/usr/lib/ruby/gems/1.9.1/gems/haml-3.0.25/lib,/usr/lib/ruby/gems/1.9.1/gems/highline-1.6.1/lib,/usr/lib/ruby/gems/1.9.1/gems/i18n-0.4.2/lib,/usr/lib/ruby/gems/1.9.1/gems/jnunemaker-validatable-1.8.4/lib,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/ext/json/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/lib,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/ext/json/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/lib,/usr/lib/ruby/gems/1.9.1/gems/libxml-ruby-1.1.4/ext/libxml,/usr/lib/ruby/gems/1.9.1/gems/libxml-ruby-1.1.4/lib,/usr/lib/ruby/gems/1.9.1/gems/mailfactory-1.4.0/lib,/usr/lib/ruby/gems/1.9.1/gems/mime-types-1.16/lib,/usr/lib/ruby/gems/1.9.1/gems/mongo-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/mongo_mapper-0.8.6/lib,/usr/lib/ruby/gems/1.9.1/gems/nice-ffi-0.4/lib,/usr/lib/ruby/gems/1.9.1/gems/notify-0.3.0/lib,/usr/lib/ruby/gems/1.9.1/gems/oauth-0.4.4/lib,/usr/lib/ruby/gems/1.9.1/gems/plucky-0.3.6/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-1.2.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-mount-0.6.13/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-test-0.5.7/lib,/usr/lib/ruby/gems/1.9.1/gems/rails-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/rake-0.8.7/lib,/usr/lib/ruby/gems/1.9.1/gems/rdiscount-1.6.8/lib,/usr/lib/ruby/gems/1.9.1/gems/redclothcoderay-0.3.6/lib,/usr/lib/ruby/gems/1.9.1/gems/rest-client-1.6.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rmagick-2.13.1/ext,/usr/lib/ruby/gems/1.9.1/gems/rmagick-2.13.1/lib,/usr/lib/ruby/gems/1.9.1/gems/ruby-sdl-ffi-0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/rubygame-2.6.4/lib,/usr/lib/ruby/gems/1.9.1/gems/rubytter-1.4.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rufus-mnemo-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/sinatra-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/sinatra-1.2.0/lib,/usr/lib/ruby/gems/1.9.1/gems/staticmatic-0.11.1/lib,/usr/lib/ruby/gems/1.9.1/gems/termcolor-1.2.1/lib,/usr/lib/ruby/gems/1.9.1/gems/termtter-1.9.0/lib,/usr/lib/ruby/gems/1.9.1/gems/texplay-0.3.5/lib,/usr/lib/ruby/gems/1.9.1/gems/
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=101
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 036l
tabedit src/pages/ueber-mich.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=101
setlocal colorcolumn=101
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=.,/usr/lib/ruby/site_ruby/1.9.1,/usr/lib/ruby/site_ruby/1.9.1/x86_64-linux,/usr/lib/ruby/site_ruby,/usr/lib/ruby/vendor_ruby/1.9.1,/usr/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.9.1,/usr/lib/ruby/1.9.1/x86_64-linux,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/ext,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/lib,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/lib/case_sensitive_require,/usr/lib/ruby/gems/1.9.1/gems/abstract-1.0.0/lib,/usr/lib/ruby/gems/1.9.1/gems/actionmailer-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/actionpack-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/actionpack-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/activemodel-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/activerecord-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activeresource-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-3.0.1/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/bson-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/bson_ext-1.1.1/ext,/usr/lib/ruby/gems/1.9.1/gems/builder-2.1.2/lib,/usr/lib/ruby/gems/1.9.1/gems/bundler-1.0.7/lib,/usr/lib/ruby/gems/1.9.1/gems/charleston-0.1.2/lib,/usr/lib/ruby/gems/1.9.1/gems/chingu-0.8.1/lib,/usr/lib/ruby/gems/1.9.1/gems/coderay-0.9.7/lib,/usr/lib/ruby/gems/1.9.1/gems/coffee-script-2.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/coffee-script-source-0.9.5/lib,/usr/lib/ruby/gems/1.9.1/gems/compass-0.10.6/lib,/usr/lib/ruby/gems/1.9.1/gems/crack-0.1.8/lib,/usr/lib/ruby/gems/1.9.1/gems/daemons-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/erubis-2.6.6/lib,/usr/lib/ruby/gems/1.9.1/gems/escape_utils-0.1.9/ext,/usr/lib/ruby/gems/1.9.1/gems/escape_utils-0.1.9/lib,/usr/lib/ruby/gems/1.9.1/gems/eventmachine-0.12.10/lib,/usr/lib/ruby/gems/1.9.1/gems/fancy-0.3.0/lib,/usr/lib/ruby/gems/1.9.1/gems/faster_xml_simple-0.5.0/lib,/usr/lib/ruby/gems/1.9.1/gems/ffi-1.0.5/ext,/usr/lib/ruby/gems/1.9.1/gems/ffi-1.0.5/lib,/usr/lib/ruby/gems/1.9.1/gems/gosu-0.7.27.1/lib,/usr/lib/ruby/gems/1.9.1/gems/haml-3.0.23/lib,/usr/lib/ruby/gems/1.9.1/gems/haml-3.0.25/lib,/usr/lib/ruby/gems/1.9.1/gems/highline-1.6.1/lib,/usr/lib/ruby/gems/1.9.1/gems/i18n-0.4.2/lib,/usr/lib/ruby/gems/1.9.1/gems/jnunemaker-validatable-1.8.4/lib,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/ext/json/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/lib,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/ext/json/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/lib,/usr/lib/ruby/gems/1.9.1/gems/libxml-ruby-1.1.4/ext/libxml,/usr/lib/ruby/gems/1.9.1/gems/libxml-ruby-1.1.4/lib,/usr/lib/ruby/gems/1.9.1/gems/mailfactory-1.4.0/lib,/usr/lib/ruby/gems/1.9.1/gems/mime-types-1.16/lib,/usr/lib/ruby/gems/1.9.1/gems/mongo-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/mongo_mapper-0.8.6/lib,/usr/lib/ruby/gems/1.9.1/gems/nice-ffi-0.4/lib,/usr/lib/ruby/gems/1.9.1/gems/notify-0.3.0/lib,/usr/lib/ruby/gems/1.9.1/gems/oauth-0.4.4/lib,/usr/lib/ruby/gems/1.9.1/gems/plucky-0.3.6/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-1.2.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-mount-0.6.13/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-test-0.5.7/lib,/usr/lib/ruby/gems/1.9.1/gems/rails-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/rake-0.8.7/lib,/usr/lib/ruby/gems/1.9.1/gems/rdiscount-1.6.8/lib,/usr/lib/ruby/gems/1.9.1/gems/redclothcoderay-0.3.6/lib,/usr/lib/ruby/gems/1.9.1/gems/rest-client-1.6.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rmagick-2.13.1/ext,/usr/lib/ruby/gems/1.9.1/gems/rmagick-2.13.1/lib,/usr/lib/ruby/gems/1.9.1/gems/ruby-sdl-ffi-0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/rubygame-2.6.4/lib,/usr/lib/ruby/gems/1.9.1/gems/rubytter-1.4.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rufus-mnemo-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/sinatra-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/sinatra-1.2.0/lib,/usr/lib/ruby/gems/1.9.1/gems/staticmatic-0.11.1/lib,/usr/lib/ruby/gems/1.9.1/gems/termcolor-1.2.1/lib,/usr/lib/ruby/gems/1.9.1/gems/termtter-1.9.0/lib,/usr/lib/ruby/gems/1.9.1/gems/texplay-0.3.5/lib,/usr/lib/ruby/gems/1.9.1/gems/
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=101
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 050l
tabedit src/pages/kontakt.haml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=101
setlocal colorcolumn=101
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=.,/usr/lib/ruby/site_ruby/1.9.1,/usr/lib/ruby/site_ruby/1.9.1/x86_64-linux,/usr/lib/ruby/site_ruby,/usr/lib/ruby/vendor_ruby/1.9.1,/usr/lib/ruby/vendor_ruby/1.9.1/x86_64-linux,/usr/lib/ruby/vendor_ruby,/usr/lib/ruby/1.9.1,/usr/lib/ruby/1.9.1/x86_64-linux,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/ext,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/lib,/usr/lib/ruby/gems/1.9.1/gems/RedCloth-4.2.3/lib/case_sensitive_require,/usr/lib/ruby/gems/1.9.1/gems/abstract-1.0.0/lib,/usr/lib/ruby/gems/1.9.1/gems/actionmailer-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/actionpack-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/actionpack-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/activemodel-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/activerecord-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activeresource-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-3.0.1/lib,/usr/lib/ruby/gems/1.9.1/gems/activesupport-3.0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/bson-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/bson_ext-1.1.1/ext,/usr/lib/ruby/gems/1.9.1/gems/builder-2.1.2/lib,/usr/lib/ruby/gems/1.9.1/gems/bundler-1.0.7/lib,/usr/lib/ruby/gems/1.9.1/gems/charleston-0.1.2/lib,/usr/lib/ruby/gems/1.9.1/gems/chingu-0.8.1/lib,/usr/lib/ruby/gems/1.9.1/gems/coderay-0.9.7/lib,/usr/lib/ruby/gems/1.9.1/gems/coffee-script-2.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/coffee-script-source-0.9.5/lib,/usr/lib/ruby/gems/1.9.1/gems/compass-0.10.6/lib,/usr/lib/ruby/gems/1.9.1/gems/crack-0.1.8/lib,/usr/lib/ruby/gems/1.9.1/gems/daemons-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/erubis-2.6.6/lib,/usr/lib/ruby/gems/1.9.1/gems/escape_utils-0.1.9/ext,/usr/lib/ruby/gems/1.9.1/gems/escape_utils-0.1.9/lib,/usr/lib/ruby/gems/1.9.1/gems/eventmachine-0.12.10/lib,/usr/lib/ruby/gems/1.9.1/gems/fancy-0.3.0/lib,/usr/lib/ruby/gems/1.9.1/gems/faster_xml_simple-0.5.0/lib,/usr/lib/ruby/gems/1.9.1/gems/ffi-1.0.5/ext,/usr/lib/ruby/gems/1.9.1/gems/ffi-1.0.5/lib,/usr/lib/ruby/gems/1.9.1/gems/gosu-0.7.27.1/lib,/usr/lib/ruby/gems/1.9.1/gems/haml-3.0.23/lib,/usr/lib/ruby/gems/1.9.1/gems/haml-3.0.25/lib,/usr/lib/ruby/gems/1.9.1/gems/highline-1.6.1/lib,/usr/lib/ruby/gems/1.9.1/gems/i18n-0.4.2/lib,/usr/lib/ruby/gems/1.9.1/gems/jnunemaker-validatable-1.8.4/lib,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/ext/json/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.4.6/lib,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/ext/json/ext,/usr/lib/ruby/gems/1.9.1/gems/json-1.5.1/lib,/usr/lib/ruby/gems/1.9.1/gems/libxml-ruby-1.1.4/ext/libxml,/usr/lib/ruby/gems/1.9.1/gems/libxml-ruby-1.1.4/lib,/usr/lib/ruby/gems/1.9.1/gems/mailfactory-1.4.0/lib,/usr/lib/ruby/gems/1.9.1/gems/mime-types-1.16/lib,/usr/lib/ruby/gems/1.9.1/gems/mongo-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/mongo_mapper-0.8.6/lib,/usr/lib/ruby/gems/1.9.1/gems/nice-ffi-0.4/lib,/usr/lib/ruby/gems/1.9.1/gems/notify-0.3.0/lib,/usr/lib/ruby/gems/1.9.1/gems/oauth-0.4.4/lib,/usr/lib/ruby/gems/1.9.1/gems/plucky-0.3.6/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-1.2.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-mount-0.6.13/lib,/usr/lib/ruby/gems/1.9.1/gems/rack-test-0.5.7/lib,/usr/lib/ruby/gems/1.9.1/gems/rails-2.3.8/lib,/usr/lib/ruby/gems/1.9.1/gems/rake-0.8.7/lib,/usr/lib/ruby/gems/1.9.1/gems/rdiscount-1.6.8/lib,/usr/lib/ruby/gems/1.9.1/gems/redclothcoderay-0.3.6/lib,/usr/lib/ruby/gems/1.9.1/gems/rest-client-1.6.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rmagick-2.13.1/ext,/usr/lib/ruby/gems/1.9.1/gems/rmagick-2.13.1/lib,/usr/lib/ruby/gems/1.9.1/gems/ruby-sdl-ffi-0.3/lib,/usr/lib/ruby/gems/1.9.1/gems/rubygame-2.6.4/lib,/usr/lib/ruby/gems/1.9.1/gems/rubytter-1.4.1/lib,/usr/lib/ruby/gems/1.9.1/gems/rufus-mnemo-1.1.1/lib,/usr/lib/ruby/gems/1.9.1/gems/sinatra-1.1.0/lib,/usr/lib/ruby/gems/1.9.1/gems/sinatra-1.2.0/lib,/usr/lib/ruby/gems/1.9.1/gems/staticmatic-0.11.1/lib,/usr/lib/ruby/gems/1.9.1/gems/termcolor-1.2.1/lib,/usr/lib/ruby/gems/1.9.1/gems/termtter-1.9.0/lib,/usr/lib/ruby/gems/1.9.1/gems/texplay-0.3.5/lib,/usr/lib/ruby/gems/1.9.1/gems/
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=101
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0218l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
