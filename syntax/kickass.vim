" Vim syntax file
" Language:     Assembler, KickAssembler
" Maintainer:   Roman 'gryf' Dobosz <gryf_esm@o2.pl>
" Last Change:  2012-07-05
" Version:      1.0
"
" To install this file place it in ~/.vim/syntax (*nix/Mac) or in
" $VIMRUNTIME/syntax on Windows and issue command:
"
" :set filetype=kickass
"
" You can also add to your vimrc file autocommand:
"
" autocmd BufRead *.asm set filetype=kickass
"
" From now on, all files with extension 'asm' will have brand new kickass
" syntax.
"
" Enjoy.

syn clear

" 6502 mnemonics
syn keyword kickAssMnemonic brk clc cld cli clv dex dey inx iny nop pha php pla
syn keyword kickAssMnemonic plp sec sed sei tax tay tsx txa txs tya
syn keyword kickAssJump rti rts nextgroup=kickAssLabels

syn match kickAssMnemonic "\<adc\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<ahx\(\.\(izp\?y\|a\(bs\)\?y\)\)\?\>"
syn match kickAssMnemonic "\<alr\(\.imm\?\)\?\>"
syn match kickAssMnemonic "\<anc\(\.imm\?\)\?\>"
syn match kickAssMnemonic "\<anc2\(\.imm\?\)\?\>"
syn match kickAssMnemonic "\<and\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<arr\(\.imm\?\)\?\>"
syn match kickAssMnemonic "\<asl\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>"
syn match kickAssMnemonic "\<axs\(\.imm\?\)\?\>"
syn match kickAssJump "\<bcc\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bcs\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<beq\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<bit\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>"
syn match kickAssJump "\<bmi\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bne\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bpl\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bvc\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bvs\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<cmp\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<cpx\(\.\(imm\?\|zp\?\|a\(bs\)\?\)\)\?\>"
syn match kickAssMnemonic "\<cpy\(\.\(imm\?\|zp\?\|a\(bs\)\?\)\)\?\>"
syn match kickAssMnemonic "\<dcp\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<dec\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>"
syn match kickAssMnemonic "\<eor\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<inc\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>"
syn match kickAssMnemonic "\<isc\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssJump "\<jmp\(\.\(a\(bs\)\?\|i\(nd\)\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<jsr\(\.a\(bs\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<las\(\.a\(bs\)\?y\)\?\>"
syn match kickAssMnemonic "\<lax\(\.\(imm\?\|zp\?y\?\|izp\?[xy]\|a\(bs\)\?y\?\)\)\?\>"
syn match kickAssMnemonic "\<lda\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<ldx\(\.\(imm\?\|zp\?y\?\|a\(bs\)\?y\?\)\)\?\>"
syn match kickAssMnemonic "\<ldy\(\.\(imm\?\|zp\?x\?\|a\(bs\)\?x\?\)\)\?\>"
syn match kickAssMnemonic "\<lsr\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>"
syn match kickAssMnemonic "\<ora\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<rla\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<rol\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>"
syn match kickAssMnemonic "\<ror\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>"
syn match kickAssMnemonic "\<rra\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<sax\(\.\(zp\?[xy]\?\|a\(bs\)\?\)\)\?\>"
syn match kickAssMnemonic "\<sbc\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<sbc2\(\.imm\?\)\?\>"
syn match kickAssMnemonic "\<shx\(\.a\(bs\)\?y\)\?\>"
syn match kickAssMnemonic "\<shy\(\.a\(bs\)\?x\)\?\>"
syn match kickAssMnemonic "\<slo\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<sre\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<sta\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>"
syn match kickAssMnemonic "\<stx\(\.\(zp\?y\?\|a\(bs\)\?\)\)\?\>"
syn match kickAssMnemonic "\<sty\(\.\(zp\?x\?\|a\(bs\)\?\)\)\?\>"
syn match kickAssMnemonic "\<tas\(\.a\(bs\)\?y\)\?\>"
syn match kickAssMnemonic "\<xaa\(\.imm\?\)\?\>"

" DTV mnemonics
syn match kickAssJump "\<bra\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels 
syn match kickAssMnemonic "\<sac\(\.imm\?\)\?\>"
syn match kickAssMnemonic "\<sir\(\.imm\?\)\?\>"

" indexes
syn match kickAssIndex ",\s*[xy]"

" Strings/chars
syn region kickAssString start=+"+ skip=+\\"+ end=+"+ contains=@Spell oneline
syn region kickAssString start=+'+ skip=+\\'+ end=+'+ contains=@Spell oneline

" Comments
syn keyword kickAssTodo TODO FIXME XXX TBD NOTE WARNING BUG contained 
syn match kickAssLineComment "\/\/.*" contains=@Spell,kickAssTodo 
syn region kickAssComment start="/\*" end="\*/" contains=@Spell,kickAssTodo oneline

" Numbers
syn match kickAssDecNumber "\<\d\+\>"
syn match kickAssHexNumber "\$\x\+\>"
syn match kickAssBinNumber "%[01]\+\>"
syn match kickAssImmediate "#\$\x\+\>"
syn match kickAssImmediate "#\d\+\>"
syn match kickAssImmediate "<\$\x\+\>"
syn match kickAssImmediate "<\d\+\>"
syn match kickAssImmediate ">\$\x\+\>"
syn match kickAssImmediate ">\d\+\>"
syn match kickAssImmediate "#<\$\x\+\>"
syn match kickAssImmediate "#<\d\+\>"
syn match kickAssImmediate "#>\$\x\+\>"
syn match kickAssImmediate "#>\d\+\>"

" memory and data directives
syn match kickAssDirective /\.\<pc\>/
syn match kickAssDirective /\.\<align\>/
syn match kickAssDirective /\.\<byte\>/
syn match kickAssDirective /\.\<word\>/
syn match kickAssDirective /\.\<dword\>/
syn match kickAssDirective /\.\<text\>/
syn match kickAssDirective /\.\<fill\>/
syn match kickAssDirective /\.\<pseudopc\>/

" import directive
syn match kickAssDirective "\.\<importonce\>"
syn match kickAssDirective "\.\<import\>" nextgroup=kickAssImportType skipwhite
syn keyword kickAssImportType source binary c64 text contained

" console output
syn match kickAssDirective "\.\<print\>"
syn match kickAssDirective "\.\<printnow\>"
syn match kickAssDirective "\.\<error\>"

" elements of script language
syn match kickAssDirective "\.\<eval\>"
syn match kickAssDirective "\.\<var\>"
syn match kickAssDirective "\.\<const\>"
syn match kickAssDirective "\.\<enum\>"
syn match kickAssDirective "\.\<label\>"
syn match kickAssDirective "\.\<lock\>"
syn match kickAssDirective "\.\<define\>"
syn match kickAssDirective "\.\<if\>"
syn keyword kickAssDirective else
syn match kickAssDirective "\.\<for\>"
syn match kickAssDirective "\.\<macro\>" nextgroup=kickAssDefName skipwhite
syn match kickAssDirective "\.\<function\>" nextgroup=kickAssDefName skipwhite
syn match kickAssDirective "\.\<return\>"
syn match kickAssDirective "\.\<namespace\>" nextgroup=kickAssDefName skipwhite
syn match kickAssDirective "\.\<filenamespace\>" nextgroup=kickAssDefName skipwhite

" special macros
syn match kickAssMacroCall ":\<BasicUpstart2\?\>"

" string methods and functions
syn match kickAssMethod "\<string\>" display contained
syn match kickAssMethod "\<size\>" display contained
syn match kickAssMethod "\<charAt\>" display contained
syn match kickAssMethod "\<substring\>" display contained
syn match kickAssMethod "\<asBoolean\>" display contained
syn match kickAssMethod "\<asNumber\>" display contained

syn match kickAssFunction "\<toIntString\>("he=e-1
syn match kickAssFunction "\<toBinaryString\>("he=e-1
syn match kickAssFunction "\<toOctalString\>("he=e-1
syn match kickAssFunction "\<toHexString\>("he=e-1

" Math library
syn keyword kickAssConstant PI E

syn match kickAssFunction "\<abs\>("he=e-1
syn match kickAssFunction "\<acos\>("he=e-1
syn match kickAssFunction "\<asin\>("he=e-1
syn match kickAssFunction "\<atan\>("he=e-1
syn match kickAssFunction "\<atan2\>("he=e-1
syn match kickAssFunction "\<cbrt\>("he=e-1
syn match kickAssFunction "\<ceil\>("he=e-1
syn match kickAssFunction "\<cos\>("he=e-1
syn match kickAssFunction "\<cosh\>("he=e-1
syn match kickAssFunction "\<exp\>("he=e-1
syn match kickAssFunction "\<expml\>("he=e-1
syn match kickAssFunction "\<floor\>("he=e-1
syn match kickAssFunction "\<hypot\>("he=e-1
syn match kickAssFunction "\<IEEEremainder\>("he=e-1
syn match kickAssFunction "\<log\>("he=e-1
syn match kickAssFunction "\<log10\>("he=e-1
syn match kickAssFunction "\<log1p\>("he=e-1
syn match kickAssFunction "\<max\>("he=e-1
syn match kickAssFunction "\<min\>("he=e-1
syn match kickAssFunction "\<mod\>("he=e-1
syn match kickAssFunction "\<pow\>("he=e-1
syn match kickAssFunction "\<random\>("he=e-1
syn match kickAssFunction "\<round\>("he=e-1
syn match kickAssFunction "\<signum\>("he=e-1
syn match kickAssFunction "\<sin\>("he=e-1
syn match kickAssFunction "\<sinh\>("he=e-1
syn match kickAssFunction "\<sqrt\>("he=e-1
syn match kickAssFunction "\<tan\>("he=e-1
syn match kickAssFunction "\<tanh\>("he=e-1
syn match kickAssFunction "\<toDegrees\>("he=e-1
syn match kickAssFunction "\<toRadians\>("he=e-1

" List already defined: size
syn match kickAssFunction /\<List\>(/he=e-1
syn match kickAssMethod "\<get\>" display contained
syn match kickAssMethod "\<set\>" display contained
syn match kickAssMethod "\<add\>" display contained
syn match kickAssMethod "\<remove\>" display contained
syn match kickAssMethod "\<shuffle\>" display contained
syn match kickAssMethod "\<reverse\>" display contained
syn match kickAssMethod "\<sort\>" display contained
" READY.

" Hash - already defined names: get, remove
syn match kickAssFunction /\<Hashtable\>(/he=e-1
syn match kickAssMethod "\<put\>" display contained
syn match kickAssMethod "\<keys\>" display contained
syn match kickAssMethod "\<containsKey\>" display contained

" Vector/Matrix - already defined: get, set
syn match kickAssFunction "\<Vector\>("he=e-1
syn match kickAssFunction "\<getX\>" display contained
syn match kickAssFunction "\<getY\>" display contained
syn match kickAssFunction "\<getZ\>" display contained
syn match kickAssFunction "\<\X\>" display contained

syn match kickAssFunction "\<Matrix\>" display contained
syn match kickAssFunction "\<RotationMatrix\>" display contained
syn match kickAssFunction "\<ScaleMatrix\>" display contained
syn match kickAssFunction "\<PerspectiveMatrix\>" display contained
syn match kickAssFunction "\<MoveMatrix\>" display contained

" Structures - already defined names: get, set
syn match kickAssDirective "\.\<struct\>" nextgroup=kickAssDefName skipwhite
syn match kickAssMethod "\<getStructName\>" display contained
syn match kickAssMethod "\<getNoOfFields\>" display contained
syn match kickAssMethod "\<getFieldNames\>" display contained

" pseudocommand
syn match kickAssDirective "\.\<pseudocommand\>" nextgroup=kickAssDefName skipwhite
syn match kickAssFunction "\<CmdArgument\>("he=e-1
syn match kickAssFunction "\<getType\>("he=e-1
syn match kickAssFunction "\<getValue\>("he=e-1
syn keyword kickAssConstant AT_ABSOLUTE AT_ABSOLUTEX AT_ABSOLUTEY AT_IMMEDIATE 
syn keyword kickAssConstant AT_INDIRECT AT_IZEROPAGEX AT_IZEROPAGEY AT_NONE

" Opcode constants
syn match kickAssFunction "\<asmCommandSize\>("he=e-1
syn keyword kickAssConstant RTS
syn match kickAssConstant "\<[A-Z]\{3}2\?_\(IMM\|I\?ZP[XY]\?\|ABS[XY]\?\|IND\|REL\)\>"

" READY.
" Colour constants
syn keyword kickAssColor BLACK WHITE RED CYAN PURPLE GREEN BLUE YELLOW ORANGE
syn keyword kickAssColor BROWN LIGHT_RED DARK_GRAY GRAY LIGHT_GREEN LIGHT_BLUE
syn keyword kickAssColor LIGHT_GRAY DARK_GREY GREY LIGHT_GREY

syn keyword kickAssConstant C64FILE
syn keyword kickAssConstant BD_C64FILE BF_BITMAP_SINGLECOLOR BF_KOALA BF_FLI

" Binary import
syn match kickAssFunction "\<LoadBinary\>("he=e-1
syn match kickAssMethod "\<getSize\>" display contained
syn match kickAssFunction "\<LoadBinary\>("he=e-1

" PSID files
syn match kickAssFunction "\<LoadSid\>("he=e-1
syn match kickAssAttr "\<header\>"
syn match kickAssAttr "\<version\>"
syn match kickAssAttr "\<location\>"
syn match kickAssAttr "\<init\>"
syn match kickAssAttr "\<play\>"
syn match kickAssAttr "\<size\>"
syn match kickAssAttr "\<songs\>"
syn match kickAssAttr "\<startSong\>"
syn match kickAssAttr "\<name\>"
syn match kickAssAttr "\<author\>"
syn match kickAssAttr "\<copyright\>"
syn match kickAssAttr "\<speed\>"
syn match kickAssAttr "\<flags\>"
syn match kickAssAttr "\<startpage\>"
syn match kickAssAttr "\<pagelength\>"
syn match kickAssMethod "\<getData\>" display contained

" Graphics files
syn match kickAssFunction "\<LoadPicture\>("he=e-1
syn match kickAssAttr "\<width\>"
syn match kickAssAttr "\<height\>"
syn match kickAssMethod "\<getPixel\>" display contained
syn match kickAssMethod "\<getSinglecolorByte\>" display contained
syn match kickAssMethod "\<getMulticolorByte\>" display contained

" User defined files
syn match kickAssFunction "\<createFile\>("he=e-1
syn match kickAssMethod "\<writeln\>" display contained

" Testing
syn match kickAssDirective "\.\<kickAssert\>"
syn match kickAssDirective "\.\<kickAsserterror\>"

syn region kickAssMethodCall start="[A-Za-z0-9_)]\." end="("
            \ contains=kickAssMethod oneline

syn match kickAssDefName "[a-zA-Z_][a-zA-Z0-9_]*" display contained

"Labels and macro names. All case insensitive
syn case ignore
syn match kickAssMacroCall  ":[a-z_][a-z0-9_]*"
syn match kickAssLabels "^\!\?\<[a-z0-9_]*\>:"
syn match kickAssLabels "\s\!\<[a-z0-9_]*\>[-+]\?"hs=s+1 contained
syn match kickAssLabels "\s\<[a-z0-9_]*\>[-+]\?"hs=s+1 contained
syn case match

if !exists("did_kickasm_syntax_inits")
  let did_kickasm_syntax_inits = 1

    hi def link kickAssDirective Special
    hi def link kickAssMnemonic Type

    hi def link kickAssIndex None
    hi def link kickAssJump PreCondit
    hi def link kickAssString String
    hi def link kickAssString String
    hi def link kickAssComment Comment
    hi def link kickAssLineComment Comment
    hi def link kickAssMacroCall Function
    hi def link kickAssTodo Todo

    hi def link kickAssImportType Operator

    hi def link kickAssDefName Function
    hi def link kickAssFunction Function
    hi def link kickAssMethod Function
    hi def link kickAssAttr Special
    hi def link kickAssColor Constant
    hi def link kickAssConstant Constant

    hi def link kickAssImmediate None
    hi def link kickAssHexNumber None
    hi def link kickAssBinNumber None
    hi def link kickAssDecNumber None

    hi def link kickAssLabels Label
endif

let b:current_syntax = "kickasm"
