" Vim syntax file
" Language:     Assembler, KickAssembler
" Maintainer:   Roman 'gryf' Dobosz <gryf_esm@o2.pl>
" Last Change:  2012-07-09
" Version:      1.1
"
" Changelog:
"   1.1 Since in assembly languages 'everything is a label' there pretty hard 
"   to distinguish labels from variables and structures, so I decided to 
"   remove highlighting labels at all. Instead numbers are highlighted, so that
"   labels and defined variables are easily spotted in the code.
"
"   1.0 Initial release
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

" Macro names.
syn case ignore
syn match kickAssMacroCall  ":[a-z_][a-z0-9_]*"
syn case match

" 6502 mnemonics
syn keyword kickAssMnemonic brk clc cld cli clv dex dey nextgroup=kickAssLabels
syn keyword kickAssMnemonic inx iny nop pha php pla plp nextgroup=kickAssLabels
syn keyword kickAssMnemonic sec sed sei tax tay tsx txa nextgroup=kickAssLabels
syn keyword kickAssMnemonic txs tya nextgroup=kickAssLabels
syn keyword kickAssJump rti rts nextgroup=kickAssLabels

syn match kickAssMnemonic "\<adc\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<ahx\(\.\(izp\?y\|a\(bs\)\?y\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<alr\(\.imm\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<anc\(\.imm\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<anc2\(\.imm\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<and\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<arr\(\.imm\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<asl\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<axs\(\.imm\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bcc\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bcs\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<beq\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<bit\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bmi\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bne\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bpl\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bvc\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<bvs\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<cmp\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<cpx\(\.\(imm\?\|zp\?\|a\(bs\)\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<cpy\(\.\(imm\?\|zp\?\|a\(bs\)\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<dcp\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<dec\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<eor\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<inc\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<isc\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<jmp\(\.\(a\(bs\)\?\|i\(nd\)\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssJump "\<jsr\(\.a\(bs\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<las\(\.a\(bs\)\?y\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<lax\(\.\(imm\?\|zp\?y\?\|izp\?[xy]\|a\(bs\)\?y\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<lda\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<ldx\(\.\(imm\?\|zp\?y\?\|a\(bs\)\?y\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<ldy\(\.\(imm\?\|zp\?x\?\|a\(bs\)\?x\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<lsr\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<ora\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<rla\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<rol\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<ror\(\.\(zp\?x\?\|a\(bs\)\?x\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<rra\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<sax\(\.\(zp\?[xy]\?\|a\(bs\)\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<sbc\(\.\(imm\?\|zp\?x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<sbc2\(\.imm\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<shx\(\.a\(bs\)\?y\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<shy\(\.a\(bs\)\?x\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<slo\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<sre\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<sta\(\.\(zp\?\x\?\|izp\?[xy]\|a\(bs\)\?[xy]\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<stx\(\.\(zp\?y\?\|a\(bs\)\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<sty\(\.\(zp\?x\?\|a\(bs\)\?\)\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<tas\(\.a\(bs\)\?y\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<xaa\(\.imm\?\)\?\>" nextgroup=kickAssLabels

" DTV mnemonics
syn match kickAssJump "\<bra\(\.r\(el\)\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<sac\(\.imm\?\)\?\>" nextgroup=kickAssLabels
syn match kickAssMnemonic "\<sir\(\.imm\?\)\?\>" nextgroup=kickAssLabels

" indexes
syn match kickAssIndex ",\s*[xy]"

" Strings/chars
syn region kickAssString start=+"+ skip=+\\"+ end=+"+ contains=@Spell oneline
syn region kickAssString start=+'+ skip=+\\'+ end=+'+ contains=@Spell oneline

" Comments
syn keyword kickAssTodo TODO FIXME XXX TBD NOTE WARNING BUG contained
syn match kickAssLineComment "\/\/.*" contains=@Spell,kickAssTodo
syn region kickAssComment start="/\*" end="\*/" contains=@Spell,kickAssTodo

" Numbers
syn match kickAssDecNumber "\<\d\+\>"
syn match kickAssHexNumber "\$\x\+\>"
syn match kickAssBinNumber "%[01]\+\>"
syn match kickAssImmediate "#\$\x\+\>"
syn match kickAssImmediate "#\d\+\>"
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
syn match kickAssDirective "\.\<macro\>"
syn match kickAssDirective "\.\<function\>"
syn match kickAssDirective "\.\<return\>"
syn match kickAssDirective "\.\<namespace\>"
syn match kickAssDirective "\.\<filenamespace\>"

" special macros
syn match kickAssMacroCall ":\<BasicUpstart2\?\>"

" PSID files
syn match kickAssFunction "\<LoadSid\>("he=e-1
syn match kickAssAttr "\.\<header\>"hs=s+1
syn match kickAssAttr "\.\<version\>"hs=s+1
syn match kickAssAttr "\.\<location\>"hs=s+1
syn match kickAssAttr "\.\<init\>"hs=s+1
syn match kickAssAttr "\.\<play\>"hs=s+1
syn match kickAssAttr "\.\<size\>"hs=s+1
syn match kickAssAttr "\.\<songs\>"hs=s+1
syn match kickAssAttr "\.\<startSong\>"hs=s+1
syn match kickAssAttr "\.\<name\>"hs=s+1
syn match kickAssAttr "\.\<author\>"hs=s+1
syn match kickAssAttr "\.\<copyright\>"hs=s+1
syn match kickAssAttr "\.\<speed\>"hs=s+1
syn match kickAssAttr "\.\<flags\>"hs=s+1
syn match kickAssAttr "\.\<startpage\>"hs=s+1
syn match kickAssAttr "\.\<pagelength\>"hs=s+1
syn match kickAssMethod "\.\<getData\>("he=e-1,hs=s+1

" string methods and functions
syn match kickAssMethod "\.\<string\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<size\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<charAt\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<substring\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<asBoolean\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<asNumber\>("he=e-1,hs=s+1

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
syn match kickAssMethod "\.\<get\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<set\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<add\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<remove\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<shuffle\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<reverse\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<sort\>("he=e-1,hs=s+1
" READY.

" Hash - already defined names: get, remove
syn match kickAssFunction /\<Hashtable\>(/he=e-1
syn match kickAssMethod "\.\<put\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<keys\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<containsKey\>("he=e-1,hs=s+1

" Vector/Matrix - already defined: get, set
syn match kickAssFunction "\<Vector\>("he=e-1
syn match kickAssMethod "\.\<getX\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getY\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getZ\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<\X\>("he=e-1,hs=s+1

syn match kickAssFunction "\<Matrix\>("he=e-1
syn match kickAssFunction "\<RotationMatrix\>("he=e-1
syn match kickAssFunction "\<ScaleMatrix\>("he=e-1
syn match kickAssFunction "\<PerspectiveMatrix\>("he=e-1
syn match kickAssFunction "\<MoveMatrix\>("he=e-1

" Structures - already defined names: get, set
syn match kickAssDirective "\.\<struct\>"
syn match kickAssMethod "\.\<getStructName\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getNoOfFields\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getFieldNames\>("he=e-1,hs=s+1

" pseudocommand
syn match kickAssDirective "\.\<pseudocommand\>"
syn match kickAssFunction "\<CmdArgument\>("he=e-1
syn match kickAssFunction "\<getType\>("he=e-1
syn match kickAssFunction "\<getValue\>("he=e-1
syn keyword kickAssConstant AT_ABSOLUTE AT_ABSOLUTEX AT_ABSOLUTEY AT_IMMEDIATE
syn keyword kickAssConstant AT_INDIRECT AT_IZEROPAGEX AT_IZEROPAGEY AT_NONE

" Opcode constants
syn match kickAssFunction "\<asmCommandSize\>("he=e-1
syn keyword kickAssConstant RTS
syn match kickAssConstant "\<[A-Z]\{3}2\?_\(IMM\|I\?ZP[XY]\?\|ABS[XY]\?\|IND\|REL\)\>"

" Constants
syn keyword kickAssColor BLACK WHITE RED CYAN PURPLE GREEN BLUE YELLOW ORANGE
syn keyword kickAssColor BROWN LIGHT_RED DARK_GRAY GRAY LIGHT_GREEN LIGHT_BLUE
syn keyword kickAssColor LIGHT_GRAY DARK_GREY GREY LIGHT_GREY

syn keyword kickAssConstant C64FILE
syn keyword kickAssConstant BD_C64FILE BF_BITMAP_SINGLECOLOR BF_KOALA BF_FLI

" Binary import
syn match kickAssFunction "\<LoadBinary\>("he=e-1
syn match kickAssMethod "\.\<getSize\>("he=e-1,hs=s+1
syn match kickAssFunction "\<LoadBinary\>("he=e-1

" Graphics files
syn match kickAssFunction "\<LoadPicture\>("he=e-1
syn match kickAssAttr "\.\<width\>"hs=s+1
syn match kickAssAttr "\.\<height\>"hs=s+1
syn match kickAssMethod "\.\<getPixel\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getSinglecolorByte\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getMulticolorByte\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getScreenRamSize\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getScreenRam\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getColorRamSize\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getColorRam\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getBitmapSize\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getBitmap\>("he=e-1,hs=s+1
syn match kickAssMethod "\.\<getBackgroundColor\>("he=e-1,hs=s+1

" User defined files
syn match kickAssFunction "\<createFile\>("he=e-1
syn match kickAssMethod "\.\<writeln\>("he=e-1,hs=s+1

" Testing
syn match kickAssDirective "\.\<kickAssert\>"
syn match kickAssDirective "\.\<kickAsserterror\>"

if !exists("did_kickasm_syntax_inits")
  let did_kickasm_syntax_inits = 1

    hi def link kickAssDirective Special
    hi def link kickAssMnemonic Type

    hi def link kickAssIndex None
    hi def link kickAssJump Conditional
    hi def link kickAssString String
    hi def link kickAssString String
    hi def link kickAssComment Comment
    hi def link kickAssLineComment Comment
    hi def link kickAssMacroCall Function
    hi def link kickAssTodo Todo

    hi def link kickAssImportType Operator

    hi def link kickAssFunction Function
    hi def link kickAssMethod Function
    hi def link kickAssAttr Special
    hi def link kickAssColor Constant
    hi def link kickAssConstant Constant

    hi def link kickAssImmediate Number
    hi def link kickAssHexNumber Number
    hi def link kickAssBinNumber Number
    hi def link kickAssDecNumber Number
endif

let b:current_syntax = "kickasm"
