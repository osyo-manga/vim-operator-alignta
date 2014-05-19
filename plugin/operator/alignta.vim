scriptencoding utf-8
if exists('g:loaded_operator_alignta')
  finish
endif
let g:loaded_operator_alignta = 1

let s:save_cpo = &cpo
set cpo&vim


call operator#user#define('alignta', 'operator#alignta#do')

call operator#user#define('alignta-preset-do', 'operator#alignta#preset_do')

nmap <silent> <expr> <Plug>(operator-alignta-preset) operator#alignta#preset()


let &cpo = s:save_cpo
unlet s:save_cpo
