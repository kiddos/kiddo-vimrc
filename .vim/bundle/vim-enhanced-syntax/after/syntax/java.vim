

syn match javaOperator	"\(<<\|>>\|[-+*/%&^|<>!=]\)="
syn match javaOperator	"<<\|>>\|&&\|||\|++\|--"
syn match javaOperator	"[.!~*&%<>^|=,+-]"
syn match javaOperator	"/[^/*=]"
syn match javaOperator "&&\|||"

syn match javaDelimiter	"[][]"
syn match javaDelimiter ")"
syn match javaDelimiter "("
syn match javaDelimiter "{"
syn match javaDelimiter "}"

"" Functions
syn match javaUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=javaType,javaDelimiter,javaDefine

hi def link javaDelimiter Delimiter
hi def link javaOperator  Operator
hi def link javaUserFunction Function

