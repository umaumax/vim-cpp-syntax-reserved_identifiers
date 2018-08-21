if !exists("c_no_reserved_identifiers_start_underbar_lower_case")
	syntax match cReservedIdentifiers /[^[:alnum:]]\zs_\w\k*/ containedin=cPreCondit
	syntax match cReservedIdentifiers /^\zs_\w*/
else
	syntax match cReservedIdentifiers /[^[:alnum:]]\zs_\u\k*/ containedin=cPreCondit
	syntax match cReservedIdentifiers /^\zs_\u\k*/
endif
syntax match cReservedIdentifiers /\w*__\w*/ containedin=cPreCondit

syntax match ReservedIdentifiers /__asm__/ containedin=cReservedIdentifiers
syntax match ReservedIdentifiers /__restrict/ containedin=cReservedIdentifiers

highlight default link cReservedIdentifiers ReservedIdentifiers
highlight default link ReservedIdentifiers WarningMsg
