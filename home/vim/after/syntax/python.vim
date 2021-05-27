try
    " Highlight Class and Function names
    syn match    cCustomParen    "(" contains=pythonParen
    syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
    syn match    cCustomScope    "::"
    syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
    syn keyword additionalKeyword self

    " hi def link cCustomFunc  Function
    " hi def link cCustomClass Function

    syntax match coolOperator "[-+&|<>=!\/~*%&^?]"
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
        hi def link cCustomFunc Function 
        hi def link cCustomClass Function
        hi link coolOperator Operator
    elseif g:colors_name == 'xcode'
        hi def link cCustomFunc Function 
        hi def link cCustomClass Function
        hi link coolOperator Operator
    elseif g:colors_name == 'srcery'
        hi def link cCustomFunc Function 
        hi def link cCustomClass Function
    elseif g:colors_name == 'xcodedark'
        hi def link cCustomFunc Function 
        hi def link cCustomClass Function
    elseif g:colors_name == 'badwolf'
        hi def link cCustomFunc Function 
        hi def link cCustomClass Function
        hi link coolOperator Operator
    elseif g:colors_name == 'dracula'
        hi def link cCustomFunc Function 
        hi link coolOperator Function
    elseif g:colors_name == 'codedark'
        hi def link cCustomFunc Function 
        hi link coolOperator Operator
        hi link additionalKeyword WarningMsg
    else
        hi def link cCustomFunc Function
        hi def link cCustomClass Function
        hi link coolOperator Operator
    endif
    " this is to avoid warning message when xterm16 ( the default color ) is used
catch /^Vim\%((\a\+)\)\=:E121/
endtry
