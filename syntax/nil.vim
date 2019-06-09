" Vim Syntax File
"
" Language:    nil
" Maintainers: Frederic Grabowski <grabowski.frederic@gmail.com>
" Created:     May 13, 2019

" TODO comments
syntax keyword nilTodos TODO XXX FIXME NOTE

" operators
syntax match nilOperator "\v\:"
syntax match nilOperator "\v\!"
syntax match nilOperator "\v\?"
syntax match nilOperator "\v\<\-"
syntax match nilOperator "\v\-\>"

" daseins
syntax match nilCtr "\v<[a-z]\w*>"
syntax match nilVar "\v\~<[a-z]\w*>"

" types
syntax match nilTypeCtr "\v<[A-Z]\w*>"
syntax match nilTypeVar "\v\~<[A-Z]\w*>"

" comments
syntax region nilComment start=/--/ end=/\n/ oneline
syntax region nilComment start=/<nic tu nie ma, nie ma czego parsować>/ end=/\n/ oneline

highlight default link nilTodos Todo
highlight default link nilComment Comment
highlight default link nilOperator Operator

highlight default link nilCtr String
highlight default link nilVar Keyword

highlight default link nilTypeCtr Type
highlight default link nilTypeVar Identifier

let b:current_syntax = "nil"
