"================================================
" health.vim - Doom Nvim Health
" Author: NTBBloodbath
" License: GPLv2
"================================================

function! health#doom#check() abort
    lua require('doom.core.logging').info('Checking Doom health ...')
    lua require('doom.core.health').checkhealth()
endfunction
