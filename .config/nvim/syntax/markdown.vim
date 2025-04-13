" Highlight text inside double quotes
syntax region MarkdownQuote start=/"/ skip=/\\"/ end=/"/
highlight MarkdownQuote ctermfg=Yellow guifg=#FFD700

" Highlight text inside angle brackets
syntax region MarkdownAngle start=/</ end=/>/
highlight MarkdownAngle ctermfg=Cyan guifg=#00FFFF

" Highlight text inside parentheses
syntax region MarkdownParen start=/(/ end=/)/
highlight MarkdownParen ctermfg=Green guifg=#00FF00

" Highlight text inside square brackets
syntax region MarkdownSquare start=/\[/ end=/\]/
highlight MarkdownSquare ctermfg=Blue guifg=#4682B4

" Highlight text inside curly braces
syntax region MarkdownCurly start=/{/ end=/}/
highlight MarkdownCurly ctermfg=Magenta guifg=#FF00FF
