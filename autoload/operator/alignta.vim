scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


function! operator#alignta#do(wise)
	execute "'[,']Alignta " . input("Input Alignta args: ")
endfunction


function! operator#alignta#preset_do(wise)
	if !exists("s:preset")
		return
	endif
	execute "'[,']Alignta " . s:preset
	unlet s:preset
endfunction

function! operator#alignta#preset()
	let s:preset = input("Input Alignta args: ")
	if s:preset == ""
		unlet s:preset
		return ""
	endif
	return "\<Plug>(operator-alignta-preset-do)"
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
