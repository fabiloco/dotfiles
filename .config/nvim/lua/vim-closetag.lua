vim.cmd [[
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'


let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

let g:closetag_filetypes = 'html,xhtml,phtml'

let g:closetag_xhtml_filetypes = 'xhtml,jsx'

let g:closetag_emptyTags_caseSensitive = 1

let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }


let g:closetag_shortcut = '>'


let g:closetag_close_shortcut = '<leader>>'
]]
