try
    " Highlight Class and Function names
    syn match    javaCustomParen    "(" contains=javaParenT
    syn match    javaCustomFunc     "\w\+\s*(" contains=javaCustomParen
    syn match    javaCustomScope    "::"
    syn match    javaCustomClass    "\w\+\s*::" contains=javaCustomScope

    " hi def link javaCustomFunc  Function
    " hi def link javaCustomClass Function

    syntax match coolOperator "[-+&|<>=!\/~*%&^?]" containedin=javaParenT
    syntax region _Comment start="\/\*" end="\*\/"
    syntax match _Comment "\/\/.*$"
    hi link _Comment Comment

    if g:colors_name == 'gruvbox'
        hi link coolOperator Constant
    elseif g:colors_name == 'monokai_pro'
        hi link coolOperator Statement 
        syntax match notImportant ";\|)\|(\|{\|}\|]\|\["
        hi link notImportant LineNr 
    elseif g:colors_name == 'shades_of_purple'
        hi def link javaCustomFunc Function 
        hi def link javaCustomClass Function
        hi link coolOperator Operator
    elseif g:colors_name == 'xcode'
        hi def link javaCustomFunc Function 
        hi def link javaCustomClass Function
        hi link coolOperator Operator
    elseif g:colors_name == 'srcery'
        hi def link javaCustomFunc Function 
        hi def link javaCustomClass Function
    endif
    " this is to avoid warning message when xterm16 ( the default color ) is used
catch /^Vim\%((\a\+)\)\=:E121/
endtry
