; ModuleID = 'linpack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4005c0__plt_type = type <{ [12 x i8], i32, [128 x i8] }>
%seg_400660__text_type = type <{ [204 x i8], i32, [6012 x i8], i32, [540 x i8], i32, [2242 x i8] }>
%seg_4029a0__rodata_type = type <{ [112 x i8], [19 x i8], [12 x i8], [25 x i8], [52 x i8], [36 x i8], [7 x i8], [32 x i8], [21 x i8], [43 x i8], [106 x i8], [17 x i8], [43 x i8] }>
%seg_603e00__init_array_type = type <{ i64, i64 }>
%seg_603e10__jcr_type = type <{ [8 x i8] }>
%seg_603ff8__got_type = type <{ i64 }>
%seg_604000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64 }>
%__bss_start_type = type <{ [8 x i8], [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type opaque

@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@seg_4005c0__plt = internal global %seg_4005c0__plt_type <{ [12 x i8] c"\FF5B: \00\FF%D: \00", i32 0, [128 x i8] c"\FF%B: \00h\00\00\00\00\E9\E0\FF\FF\FF\FF%:: \00h\01\00\00\00\E9\D0\FF\FF\FF\FF%2: \00h\02\00\00\00\E9\C0\FF\FF\FF\FF%*: \00h\03\00\00\00\E9\B0\FF\FF\FF\FF%\22: \00h\04\00\00\00\E9\A0\FF\FF\FF\FF%\1A: \00h\05\00\00\00\E9\90\FF\FF\FF\FF%\12: \00h\06\00\00\00\E9\80\FF\FF\FF\FF%\0A: \00h\07\00\00\00\E9p\FF\FF\FF" }>
@seg_400660__text = internal global %seg_400660__text_type <{ [204 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\90)@\00H\C7\C1 )@\00H\C7\C7`\07@\00\E8\97\FF\FF\FF\F4f\0F\1FD\00\00\B8o@`\00UH-h@`\00H\83\F8\0EH\89\E5v\1B\B8\00\00\00\00H\85\C0t\11]\BFh@`\00\FF\E0f\0F\1F\84\00\00\00\00\00]\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00\BEh@`\00UH\81\EEh@`\00H\C1\FE\03H\89\E5H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFh@`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=Q9 \00\00u\11UH\89\E5\E8n\FF\FF\FF]\C6\05>9 \00\01\F3\C3", i32 0, [6012 x i8] c"\BF\10>`\00H\83?\00u\05\EB\93\0F\1F\00\B8\00\00\00\00H\85\C0t\F1UH\89\E5\FF\D0]\E9z\FF\FF\FFf.\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\B0\00\00\00H\BF\10*@\00\00\00\00\00\C7E\FC\00\00\00\00\E8O\FE\FF\FFH\89E\F0H\83}\F0\00\0F\85\0C\00\00\00\C7E\EC\C8\00\00\00\E9\0C\00\00\00H\8B}\F0\E8\9B\FE\FF\FF\89E\EC\B8\02\00\00\00\8BM\EC\89E\90\89\C8\99\8BM\90\F7\F9\89E\EC\8BE\EC\C1\E0\01\89E\EC\83}\EC\0A\0F\8D \00\00\00H\BF#*@\00\00\00\00\00\B0\00\E8\1E\FE\FF\FF\C7E\FC\01\00\00\00\89E\8C\E96\02\00\00H\BF/*@\00\00\00\00\00HcE\ECHcM\ECH\0F\AF\C1H\89E\E0H\8BE\E0H\C1\E0\03HcM\ECH\C1\E1\03H\01\C8HcM\ECH\C1\E1\02H\01\C8H\89E\D8H\8BE\D8H\05\00\02\00\00H\C1\F8\0AH\89\C6\B0\00\E8\BB\FD\FF\FFH\8BM\D8H\89M\C8H\8BM\C8H;M\D8\89E\88\0F\85\1B\00\00\00H\8B}\C8\E8\C9\FD\FF\FFH\89\04%p@`\00H\83\F8\00\0F\85 \00\00\00H\BFH*@\00\00\00\00\00\B0\00\E8v\FD\FF\FF\C7E\FC\02\00\00\00\89E\84\E9\8E\01\00\00H\BF|*@\00\00\00\00\00H\BE\A0*@\00\00\00\00\00\B0\00\E8L\FD\FF\FFH\BF\A7*@\00\00\00\00\00\BE\0F\00\00\00\89E\80\B0\00\E83\FD\FF\FFH\BF\C7*@\00\00\00\00\00\8Bu\EC\8BU\EC\89\85|\FF\FF\FF\B0\00\E8\16\FD\FF\FFH\BF\DC*@\00\00\00\00\00\89\85x\FF\FF\FF\B0\00\E8\FF\FC\FF\FFH\BF\07+@\00\00\00\00\00\89\85t\FF\FF\FF\B0\00\E8\E8\FC\FF\FFH\BF;+@\00\00\00\00\00\89\85p\FF\FF\FF\B0\00\E8\D1\FC\FF\FFH\8D}\B81\D2\89\D6H\C7E\D0\01\00\00\00\89\85l\FF\FF\FF\E8\C6\FC\FF\FF\C7E\94\00\00\00\00\89\85h\FF\FF\FF\83}\94\0D\0F\8D.\00\00\00H\8B}\D0\8Bu\EC\E8\D3\00\00\00H\8B}\D0H\C1\E7\01H\89}\D0\F2\0F\11\85`\FF\FF\FF\8BE\94\83\C0\01\89E\94\E9\C8\FF\FF\FFH\8D}\A81\C0\89\C6\E8t\FC\FF\FFH\8B<%p@`\00\89\85\5C\FF\FF\FF\E81\FC\FF\FFH\BFz*@\00\00\00\00\00\B0\00\E8@\FC\FF\FF\89\85X\FF\FF\FFH\8BE\A8H+E\B8H\89E\98H\8BE\B0H+E\C0H\89E\A0H\83}\A0\00\0F\8D\1A\00\00\00H\8BE\98H\83\C0\FFH\89E\98H\8BE\A0H\05@B\0F\00H\89E\A0\E9\00\00\00\00H\BFq+@\00\00\00\00\00H\8Bu\98H\8BU\A0\B0\00\E8\DF\FB\FF\FF\89\85T\FF\FF\FF\8BE\FCH\81\C4\B0\00\00\00]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\B0\00\00\00\0FW\C0\F2\0F\10\0DR\1F\00\00\F2\0F\10\15R\1F\00\00\B8\02\00\00\00H\89}\F0\89u\EC\8Bu\EC\89u\84\8Bu\EC\89\85l\FF\FF\FF\89\F0\99\8B\B5l\FF\FF\FF\F7\FE\89E\8CHc}\ECHcM\ECH\0F\AF\F9H\89\BDp\FF\FF\FF\8BE\8C\F2\0F*\D8\0F(\E1\F2\0FY\E3\8BE\8C\F2\0F*\D8\F2\0FY\E3\8BE\8C\F2\0F*\D8\F2\0FY\E3\F2\0F^\E2\8BE\8C\F2\0F*\D0\F2\0FY\CA\8BE\8C\F2\0F*\D0\F2\0FY\CA\F2\0FX\E1\F2\0F\11e\98H\8B\0C%p@`\00H\89M\E0H\8BM\E0H\8B\BDp\FF\FF\FFH\C1\E7\03H\01\F9H\89M\D8H\8BM\D8Hc}\ECH\C1\E7\03H\01\F9H\89M\90\F2\0F\11E\B8\F2\0F\11E\B0\E8\FB\02\00\00\F2\0F\11E\A8H\C7\85x\FF\FF\FF\00\00\00\00H\8B\85x\FF\FF\FFH;E\F0\0F\8D\B5\00\00\00L\8DE\D0H\8B}\E0\8Bu\84\8BU\8CH\8BM\D8\E8\E3\02\00\00\E8\BE\02\00\00L\8DE\88A\B9\01\00\00\00\F2\0F\11E\C8H\8B}\E0\8Bu\84\8BU\8CH\8BM\90\E8\8C\04\00\00\E8\97\02\00\00\F2\0F\5CE\C8\F2\0FXE\B0\F2\0F\11E\B0\E8\83\02\00\00E1\C9\BA\01\00\00\00\F2\0F\11E\C8H\8B}\E0\8Bu\84\8BE\8CH\8BM\90L\8BE\D8\89\95h\FF\FF\FF\89\C2\C7\04$\01\00\00\00\E80\0A\00\00\E8K\02\00\00\F2\0F\5CE\C8\F2\0FXE\B8\F2\0F\11E\B8H\8B\85x\FF\FF\FFH\83\C0\01H\89\85x\FF\FF\FF\E9:\FF\FF\FFH\C7\85x\FF\FF\FF\00\00\00\00H\8B\85x\FF\FF\FFH;E\F0\0F\8D\A5\00\00\00L\8DE\D0H\8B}\E0\8Bu\84\8BU\8CH\8BM\D8\E8\12\02\00\00\E8\ED\01\00\00L\8DE\88E1\C9\F2\0F\11E\C8H\8B}\E0\8Bu\84\8BU\8CH\8BM\90\E8\BE\03\00\00\E8\C9\01\00\00\F2\0F\5CE\C8\F2\0FXE\B0\F2\0F\11E\B0\E8\B5\01\00\00E1\C9\F2\0F\11E\C8H\8B}\E0\8Bu\84\8BU\8CH\8BM\90L\8BE\D8\C7\04$\00\00\00\00\E8o\09\00\00\E8\8A\01\00\00\F2\0F\5CE\C8\F2\0FXE\B8\F2\0F\11E\B8H\8B\85x\FF\FF\FFH\83\C0\01H\89\85x\FF\FF\FF\E9J\FF\FF\FF\E8_\01\00\00\F2\0F\10\0D\EF\1C\00\00\F2\0F\5CE\A8\F2\0F\11E\A8f\0F.M\A8\0F\87\1C\00\00\00\F2\0F\10\05\DA\1C\00\00\F2\0F\10M\B0\F2\0FXM\B8f\0F.\C1\0F\86\0D\00\00\00\0FW\C0\F2\0F\11E\F8\E9\03\01\00\00\0FW\C0\F2\0F\10\0D\B6\1C\00\00\F2\0F\10\15\8E\1C\00\00H\8BE\F0\F2H\0F*\D8\F2\0FY\D3\F2\0FYU\98\F2\0F\10]\B0\F2\0FX]\B8\F2\0FY\CB\F2\0F^\D1\F2\0F\11U\C0\F2\0F\10M\A8\F2\0F\5CM\B0\F2\0F\5CM\B8\F2\0F\11M\A0f\0F.E\B0\0F\86\08\00\00\00\0FW\C0\F2\0F\11E\B0\0FW\C0f\0F.E\B8\0F\86\08\00\00\00\0FW\C0\F2\0F\11E\B8\0FW\C0f\0F.E\A0\0F\86\08\00\00\00\0FW\C0\F2\0F\11E\A0H\BF\82+@\00\00\00\00\00\F2\0F\10\05(\1C\00\00H\8Bu\F0\F2\0F\10M\A8\0F(\D0\F2\0FYU\B0\F2\0F^U\A8\0F(\D8\F2\0FY]\B8\F2\0F^]\A8\F2\0FYE\A0\F2\0F^E\A8\F2\0F\10e\C0\F2\0F\11\85`\FF\FF\FF\0F(\C1\0F(\CA\0F(\D3\F2\0F\10\9D`\FF\FF\FF\B0\05\E8\06\F8\FF\FF\F2\0F\10E\A8\F2\0F\11E\F8\89\85\5C\FF\FF\FF\F2\0F\10E\F8H\81\C4\B0\00\00\00]\C3\0F\1F\84\00\00\00\00\00UH\89\E5\E8\C7\F7\FF\FF\F2\0F\10\05\A7\1B\00\00\F2H\0F*\C8\F2\0F^\C8\0F(\C1]\C3\90UH\89\E5\0FW\C0H\89}\F8\89u\F4\89U\F0H\89M\E8L\89E\E0\C7E\DC-\05\00\00H\8BM\E0\F2\0F\11\01\C7E\D4\00\00\00\00\8BE\D4;E\F0\0F\8D\E3\00\00\00\C7E\D8\00\00\00\00\8BE\D8;E\F0\0F\8D\BD\00\00\00\F2\0F\10\05J\1B\00\00\F2\0F\10\0DJ\1B\00\00\B8\00\00\01\00\89\C1HcU\DCHi\C25\0C\00\00H\99H\F7\F9\89\D6\89u\DC\8Bu\DC\F2\0F*\D6\F2\0F\5C\D1\F2\0F^\D0H\8BM\F8\8Bu\F4\0F\AFu\D4\03u\D8Hc\D6\F2\0F\11\14\D1H\8BM\F8\8Bu\F4\0F\AFu\D4\03u\D8Hc\D6\F2\0F\10\04\D1H\8BM\E0f\0F.\01\0F\86 \00\00\00H\8BE\F8\8BM\F4\0F\AFM\D4\03M\D8Hc\D1\F2\0F\10\04\D0\F2\0F\11E\C8\E9\0D\00\00\00H\8BE\E0\F2\0F\10\00\F2\0F\11E\C8\F2\0F\10E\C8H\8BE\E0\F2\0F\11\00\8BE\D8\83\C0\01\89E\D8\E97\FF\FF\FF\E9\00\00\00\00\8BE\D4\83\C0\01\89E\D4\E9\11\FF\FF\FF\C7E\D8\00\00\00\00\8BE\D8;E\F0\0F\8D\1E\00\00\00\0FW\C0H\8BE\E8HcM\D8\F2\0F\11\04\C8\8BE\D8\83\C0\01\89E\D8\E9\D6\FF\FF\FF\C7E\D4\00\00\00\00\8BE\D4;E\F0\0F\8Dd\00\00\00\C7E\D8\00\00\00\00\8BE\D8;E\F0\0F\8D>\00\00\00H\8BE\E8HcM\D8\F2\0F\10\04\C8H\8BE\F8\8BU\F4\0F\AFU\D4\03U\D8Hc\CA\F2\0FX\04\C8H\8BE\E8HcM\D8\F2\0F\11\04\C8\8BE\D8\83\C0\01\89E\D8\E9\B6\FF\FF\FF\E9\00\00\00\00\8BE\D4\83\C0\01\89E\D4\E9\90\FF\FF\FF]\C3\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC`H\89}\F8\89u\F4\89U\F0H\89M\E8L\89E\E0D\89M\DC\83}\DC\00\0F\84\E0\02\00\00H\8BE\E0\C7\00\00\00\00\00\8BM\F0\83\E9\01\89M\BC\83}\BC\00\0F\8Ci\02\00\00\C7E\C8\00\00\00\00\8BE\C8;E\BC\0F\8DQ\02\00\00\BA\01\00\00\00\8BE\C8\83\C0\01\89E\C4\8BE\F0+E\C8H\8BM\F8\8Bu\F4\0F\AFu\C8\03u\C8Hc\FEH\C1\E7\03H\01\F9\89\C7H\89\CE\E8\92\0C\00\00\0FW\C0\03E\C8\89E\C0\8BE\C0H\8BM\E8Hcu\C8\89\04\B1H\8BM\F8\8BE\F4\0F\AFE\C8\03E\C0Hc\F0\F2\0F\10\0C\F1f\0F.\C8\0F\85\0B\00\00\00\0F\8A\05\00\00\00\E9\BD\01\00\00\8BE\C0;E\C8\0F\84b\00\00\00H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C0Hc\D1\F2\0F\10\04\D0\F2\0F\11E\D0H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C8Hc\D1\F2\0F\10\04\D0H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C0Hc\D1\F2\0F\11\04\D0\F2\0F\10E\D0H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C8Hc\D1\F2\0F\11\04\D0\BA\01\00\00\00\F2\0F\10\05\95\18\00\00H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C8Hc\F1\F2\0F^\04\F0\F2\0F\11E\D0\8BM\F0\8B}\C8\83\C7\01)\F9\F2\0F\10E\D0H\8BE\F8\8B}\F4\0F\AF}\C8\03}\C8\83\C7\01Hc\F7H\C1\E6\03H\01\F0\89\CFH\89\C6\E8\05\0D\00\00\8BM\C4\89M\CC\8BE\CC;E\F0\0F\8D\DB\00\00\00H\8BE\F8\8BM\F4\0F\AFM\CC\03M\C0Hc\D1\F2\0F\10\04\D0\F2\0F\11E\D0\8BM\C0;M\C8\0F\84G\00\00\00H\8BE\F8\8BM\F4\0F\AFM\CC\03M\C8Hc\D1\F2\0F\10\04\D0H\8BE\F8\8BM\F4\0F\AFM\CC\03M\C0Hc\D1\F2\0F\11\04\D0\F2\0F\10E\D0H\8BE\F8\8BM\F4\0F\AFM\CC\03M\C8Hc\D1\F2\0F\11\04\D0\B8\01\00\00\00\8BM\F0\8BU\C8\83\C2\01)\D1\F2\0F\10E\D0H\8Bu\F8\8BU\F4\0F\AFU\C8\03U\C8\83\C2\01Hc\FAH\C1\E7\03H\01\FEH\8B}\F8\8BU\F4\0F\AFU\CC\03U\C8\83\C2\01Lc\C2I\C1\E0\03L\01\C7H\89}\B0\89\CF\89\C2H\8BM\B0A\89\C0\E8\E6\0C\00\00\8BE\CC\83\C0\01\89E\CC\E9\19\FF\FF\FF\E9\09\00\00\00\8BE\C8H\8BM\E0\89\01\E9\00\00\00\00\8BE\C8\83\C0\01\89E\C8\E9\A3\FD\FF\FF\E9\00\00\00\00\0FW\C0\8BE\F0\83\E8\01H\8BM\E8\8BU\F0\83\EA\01Hc\F2\89\04\B1H\8BM\F8\8BE\F4\8BU\F0\83\EA\01\0F\AF\C2\8BU\F0\83\EA\01\01\D0Hc\F0\F2\0F\10\0C\F1f\0F.\C8\0F\85\12\00\00\00\0F\8A\0C\00\00\00\8BE\F0\83\E8\01H\8BM\E0\89\01\E9\E0\02\00\00H\8BE\E0\C7\00\00\00\00\00\8BM\F0\83\E9\01\89M\BC\83}\BC\00\0F\8Ci\02\00\00\C7E\C8\00\00\00\00\8BE\C8;E\BC\0F\8DQ\02\00\00\BA\01\00\00\00\8BE\C8\83\C0\01\89E\C4\8BE\F0+E\C8H\8BM\F8\8Bu\F4\0F\AFu\C8\03u\C8Hc\FEH\C1\E7\03H\01\F9\89\C7H\89\CE\E8\B2\09\00\00\0FW\C0\03E\C8\89E\C0\8BE\C0H\8BM\E8Hcu\C8\89\04\B1H\8BM\F8\8BE\F4\0F\AFE\C8\03E\C0Hc\F0\F2\0F\10\0C\F1f\0F.\C8\0F\85\0B\00\00\00\0F\8A\05\00\00\00\E9\BD\01\00\00\8BE\C0;E\C8\0F\84b\00\00\00H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C0Hc\D1\F2\0F\10\04\D0\F2\0F\11E\D0H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C8Hc\D1\F2\0F\10\04\D0H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C0Hc\D1\F2\0F\11\04\D0\F2\0F\10E\D0H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C8Hc\D1\F2\0F\11\04\D0\BA\01\00\00\00\F2\0F\10\05\B5\15\00\00H\8BE\F8\8BM\F4\0F\AFM\C8\03M\C8Hc\F1\F2\0F^\04\F0\F2\0F\11E\D0\8BM\F0\8B}\C8\83\C7\01)\F9\F2\0F\10E\D0H\8BE\F8\8B}\F4\0F\AF}\C8\03}\C8\83\C7\01Hc\F7H\C1\E6\03H\01\F0\89\CFH\89\C6\E8E\0C\00\00\8BM\C4\89M\CC\8BE\CC;E\F0\0F\8D\DB\00\00\00H\8BE\F8\8BM\F4\0F\AFM\CC\03M\C0Hc\D1\F2\0F\10\04\D0\F2\0F\11E\D0\8BM\C0;M\C8\0F\84G\00\00\00H\8BE\F8\8BM\F4\0F\AFM\CC\03M\C8Hc\D1\F2\0F\10\04\D0H\8BE\F8\8BM\F4\0F\AFM\CC\03M\C0Hc\D1\F2\0F\11\04\D0\F2\0F\10E\D0H\8BE\F8\8BM\F4\0F\AFM\CC\03M\C8Hc\D1\F2\0F\11\04\D0\B8\01\00\00\00\8BM\F0\8BU\C8\83\C2\01)\D1\F2\0F\10E\D0H\8Bu\F8\8BU\F4\0F\AFU\C8\03U\C8\83\C2\01Hc\FAH\C1\E7\03H\01\FEH\8B}\F8\8BU\F4\0F\AFU\CC\03U\C8\83\C2\01Lc\C2I\C1\E0\03L\01\C7H\89}\A8\89\CF\89\C2H\8BM\A8A\89\C0\E8F\0D\00\00\8BE\CC\83\C0\01\89E\CC\E9\19\FF\FF\FF\E9\09\00\00\00\8BE\C8H\8BM\E0\89\01\E9\00\00\00\00\8BE\C8\83\C0\01\89E\C8\E9\A3\FD\FF\FF\E9\00\00\00\00\0FW\C0\8BE\F0\83\E8\01H\8BM\E8\8BU\F0\83\EA\01Hc\F2\89\04\B1H\8BM\F8\8BE\F4\8BU\F0\83\EA\01\0F\AF\C2\8BU\F0\83\EA\01\01\D0Hc\F0\F2\0F\10\0C\F1f\0F.\C8\0F\85\12\00\00\00\0F\8A\0C\00\00\00\8BE\F0\83\E8\01H\8BM\E0\89\01\E9\00\00\00\00H\83\C4`]\C3f\90UH\89\E5H\81\EC\90\00\00\00\8BE\10H\89}\F8\89u\F4\89U\F0H\89M\E8L\89E\E0D\89M\DC\83}\10\00\89E\BC\0F\84q\03\00\00\8BE\F0\83\E8\01\89E\C0\83}\DC\00\0F\85\AA\01\00\00\83}\C0\01\0F\8C\D6\00\00\00\C7E\CC\00\00\00\00\8BE\CC;E\C0\0F\8D\BE\00\00\00H\8BE\E8HcM\CC\8B\14\88\89U\C4H\8BE\E0HcM\C4\F2\0F\10\04\C8\F2\0F\11E\D0\8BU\C4;U\CC\0F\84,\00\00\00H\8BE\E0HcM\CC\F2\0F\10\04\C8H\8BE\E0HcM\C4\F2\0F\11\04\C8\F2\0F\10E\D0H\8BE\E0HcM\CC\F2\0F\11\04\C8\B8\01\00\00\00\8BM\F0\8BU\CC\83\C2\01)\D1\F2\0F\10E\D0H\8Bu\F8\8BU\F4\0F\AFU\CC\03U\CC\83\C2\01Hc\FAH\C1\E7\03H\01\FEH\8B}\E0\8BU\CC\83\C2\01Lc\C2I\C1\E0\03L\01\C7H\89}\B0\89\CF\89\C2H\8BM\B0A\89\C0\E8_\08\00\00\8BE\CC\83\C0\01\89E\CC\E96\FF\FF\FF\E9\00\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\F0\0F\8D\B2\00\00\00\B8\01\00\00\00H\B9\00\00\00\00\00\00\00\80\8BU\F0\8Bu\C8\83\C6\01)\F2\89U\CCH\8B}\E0LcE\CC\F2B\0F\10\04\C7H\8B}\F8\8BU\F4\0F\AFU\CC\03U\CCLc\C2\F2B\0F^\04\C7H\8B}\E0LcE\CC\F2B\0F\11\04\C7H\8B}\E0LcE\CC\F2B\0F\10\04\C7fH\0F~\C7H1\CFfH\0Fn\C7\F2\0F\11E\D0\8B}\CC\F2\0F\10E\D0H\8BM\F8\8BU\F4\0F\AFU\CC\83\C2\00Lc\C2I\C1\E0\03L\01\C1L\8BE\E0H\89\CE\89\C2L\89\C1A\89\C0\E8\95\07\00\00\8BE\C8\83\C0\01\89E\C8\E9B\FF\FF\FF\E9\AF\01\00\00\C7E\CC\00\00\00\00\8BE\CC;E\F0\0F\8D\81\00\00\00\B8\01\00\00\00\8B}\CCH\8BM\F8\8BU\F4\0F\AFU\CC\83\C2\00Hc\F2H\C1\E6\03H\01\F1H\8Bu\E0H\89u\A8H\89\CE\89\C2H\8BM\A8A\89\C0\E8\16\0D\00\00\F2\0F\11E\D0H\8BM\E0Hcu\CC\F2\0F\10\04\F1\F2\0F\5CE\D0H\8BM\F8\8BE\F4\0F\AFE\CC\03E\CCHc\F0\F2\0F^\04\F1H\8BM\E0Hcu\CC\F2\0F\11\04\F1\8BE\CC\83\C0\01\89E\CC\E9s\FF\FF\FF\83}\C0\01\0F\8C\0C\01\00\00\C7E\C8\01\00\00\00\8BE\C8;E\C0\0F\8D\F4\00\00\00\B8\01\00\00\00\8BM\F0\8BU\C8\83\C2\01)\D1\89M\CCH\8Bu\E0Hc}\CC\F2\0F\10\04\FE\8BM\F0\8BU\CC\83\C2\01)\D1H\8Bu\F8\8BU\F4\0F\AFU\CC\03U\CC\83\C2\01Hc\FAH\C1\E7\03H\01\FEH\8B}\E0\8BU\CC\83\C2\01Lc\C2I\C1\E0\03L\01\C7H\89}\A0\89\CF\89\C2H\8BM\A0A\89\C0\F2\0F\11E\98\E8>\0C\00\00\F2\0F\10M\98\F2\0FX\C8H\8BM\E0Hcu\CC\F2\0F\11\0C\F1H\8BM\E8Hcu\CC\8B\04\B1\89E\C4\8BE\C4;E\CC\0F\84>\00\00\00H\8BE\E0HcM\C4\F2\0F\10\04\C8\F2\0F\11E\D0H\8BE\E0HcM\CC\F2\0F\10\04\C8H\8BE\E0HcM\C4\F2\0F\11\04\C8\F2\0F\10E\D0H\8BE\E0HcM\CC\F2\0F\11\04\C8\E9\00\00\00\00\8BE\C8\83\C0\01\89E\C8\E9\00\FF\FF\FF\E9\00\00\00\00\E9\00\00\00\00\E9w\03\00\00\8BE\F0\83\E8\01\89E\C0\83}\DC\00\0F\85\AA\01\00\00\83}\C0\01\0F\8C\D6\00\00\00\C7E\CC\00\00\00\00\8BE\CC;E\C0\0F\8D\BE\00\00\00H\8BE\E8HcM\CC\8B\14\88\89U\C4H\8BE\E0HcM\C4\F2\0F\10\04\C8\F2\0F\11E\D0\8BU\C4;U\CC\0F\84,\00\00\00H\8BE\E0HcM\CC\F2\0F\10\04\C8H\8BE\E0HcM\C4\F2\0F\11\04\C8\F2\0F\10E\D0H\8BE\E0HcM\CC\F2\0F\11\04\C8\B8\01\00\00\00\8BM\F0\8BU\CC\83\C2\01)\D1\F2\0F\10E\D0H\8Bu\F8\8BU\F4\0F\AFU\CC\03U\CC\83\C2\01Hc\FAH\C1\E7\03H\01\FEH\8B}\E0\8BU\CC\83\C2\01Lc\C2I\C1\E0\03L\01\C7H\89}\90\89\CF\89\C2H\8BM\90A\89\C0\E8.\08\00\00\8BE\CC\83\C0\01\89E\CC\E96\FF\FF\FF\E9\00\00\00\00\C7E\C8\00\00\00\00\8BE\C8;E\F0\0F\8D\B2\00\00\00\B8\01\00\00\00H\B9\00\00\00\00\00\00\00\80\8BU\F0\8Bu\C8\83\C6\01)\F2\89U\CCH\8B}\E0LcE\CC\F2B\0F\10\04\C7H\8B}\F8\8BU\F4\0F\AFU\CC\03U\CCLc\C2\F2B\0F^\04\C7H\8B}\E0LcE\CC\F2B\0F\11\04\C7H\8B}\E0LcE\CC\F2B\0F\10\04\C7fH\0F~\C7H1\CFfH\0Fn\C7\F2\0F\11E\D0\8B}\CC\F2\0F\10E\D0H\8BM\F8\8BU\F4\0F\AFU\CC\83\C2\00Lc\C2I\C1\E0\03L\01\C1L\8BE\E0H\89\CE\89\C2L\89\C1A\89\C0\E8d\07\00\00\8BE\C8\83\C0\01\89E\C8\E9B\FF\FF\FF\E9\B5\01\00\00\C7E\CC\00\00\00\00\8BE\CC;E\F0\0F\8D\81\00\00\00\B8\01\00\00\00\8B}\CCH\8BM\F8\8BU\F4\0F\AFU\CC\83\C2\00Hc\F2H\C1\E6\03H\01\F1H\8Bu\E0H\89u\88H\89\CE\89\C2H\8BM\88A\89\C0\E8\F5\0A\00\00\F2\0F\11E\D0H\8BM\E0Hcu\CC\F2\0F\10\04\F1\F2\0F\5CE\D0H\8BM\F8\8BE\F4\0F\AFE\CC\03E\CCHc\F0\F2\0F^\04\F1H\8BM\E0Hcu\CC\F2\0F\11\04\F1\8BE\CC\83\C0\01\89E\CC\E9s\FF\FF\FF\83}\C0\01\0F\8C\12\01\00\00\C7E\C8\01\00\00\00\8BE\C8;E\C0\0F\8D\FA\00\00\00\B8\01\00\00\00\8BM\F0\8BU\C8\83\C2\01)\D1\89M\CCH\8Bu\E0Hc}\CC\F2\0F\10\04\FE\8BM\F0\8BU\CC\83\C2\01)\D1H\8Bu\F8\8BU\F4\0F\AFU\CC\03U\CC\83\C2\01Hc\FAH\C1\E7\03H\01\FEH\8B}\E0\8BU\CC\83\C2\01Lc\C2I\C1\E0\03L\01\C7H\89}\80\89\CF\89\C2H\8BM\80A\89\C0\F2\0F\11\85x\FF\FF\FF\E8\1A\0A\00\00\F2\0F\10\8Dx\FF\FF\FF\F2\0FX\C8H\8BM\E0Hcu\CC\F2\0F\11\0C\F1H\8BM\E8Hcu\CC\8B\04\B1\89E\C4\8BE\C4;E\CC\0F\84>\00\00\00H\8BE\E0HcM\C4\F2\0F\10\04\C8\F2\0F\11E\D0H\8BE\E0HcM\CC\F2\0F\10\04\C8H\8BE\E0HcM\C4\F2\0F\11\04\C8\F2\0F\10E\D0H\8BE\E0HcM\CC\F2\0F\11\04\C8\E9\00\00\00\00\8BE\C8\83\C0\01\89E\C8\E9\FA\FE\FF\FF\E9\00\00\00\00\E9\00\00\00\00\E9\00\00\00\00H\81\C4\90\00\00\00]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5\89}\F8H\89u\F0\89U\EC\83}\F8\01\0F\8D\0C\00\00\00\C7E\FC\FF\FF\FF\FF\E9S\01\00\00\83}\F8\01\0F\85\0C\00\00\00\C7E\FC\00\00\00\00\E9=\01\00\00\83}\EC\01\0F\84\9D\00\00\00\C7E\D8\01\00\00\00H\8BE\F0\F2\0F\10\00\0F(\0Dv\0C\00\00f\0F\DB\C1\F2\0F\11E\E0\8BM\D8\03M\EC\89M\D8\C7E\DC\01\00\00\00\8BE\DC;E\F8\0F\8D]\00\00\00H\8BE\F0HcM\D8\F2\0F\10\04\C8\0F(\0D=\0C\00\00f\0F\DB\C1f\0F.E\E0\0F\86#\00\00\00\8BE\DC\89E\D4H\8BM\F0HcU\D8\F2\0F\10\04\D1\0F(\0D\14\0C\00\00f\0F\DB\C1\F2\0F\11E\E0\8BE\D8\03E\EC\89E\D8\8BE\DC\83\C0\01\89E\DC\E9\97\FF\FF\FF\E9\90\00\00\00\C7E\D4\00\00\00\00H\8BE\F0\F2\0F\10\00\0F(\0D\D9\0B\00\00f\0F\DB\C1\F2\0F\11E\E0\C7E\DC\01\00\00\00\8BE\DC;E\F8\0F\8DY\00\00\00H\8BE\F0HcM\DC\F2\0F\10\04\C8\0F(\0D\A9\0B\00\00f\0F\DB\C1f\0F.E\E0\0F\86#\00\00\00\8BE\DC\89E\D4H\8BM\F0HcU\DC\F2\0F\10\04\D1\0F(\0D\80\0B\00\00f\0F\DB\C1\F2\0F\11E\E0\E9\00\00\00\00\8BE\DC\83\C0\01\89E\DC\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\D4\89E\FC\8BE\FC]\C3", i32 0, [540 x i8] c"UH\89\E5\89}\FC\F2\0F\11E\F0H\89u\E8\89U\E4\83}\FC\00\0F\8F\05\00\00\00\E9\99\00\00\00\83}\E4\01\0F\84O\00\00\00\8BE\FC\0F\AFE\E4\89E\DC\C7E\E0\00\00\00\00\8BE\E0;E\DC\0F\8D-\00\00\00\F2\0F\10E\F0H\8BE\E8HcM\E0\F2\0FY\04\C8H\8BE\E8HcM\E0\F2\0F\11\04\C8\8BE\E0\03E\E4\89E\E0\E9\C7\FF\FF\FF\E9@\00\00\00\C7E\E0\00\00\00\00\8BE\E0;E\FC\0F\8D-\00\00\00\F2\0F\10E\F0H\8BE\E8HcM\E0\F2\0FY\04\C8H\8BE\E8HcM\E0\F2\0F\11\04\C8\8BE\E0\83\C0\01\89E\E0\E9\C7\FF\FF\FF]\C3\0F\1F\00UH\89\E5\89}\FC\F2\0F\11E\F0H\89u\E8\89U\E4H\89M\D8D\89E\D4\83}\FC\00\0F\8F\05\00\00\00\E90\01\00\00\0FW\C0\F2\0F\10M\F0f\0F.\C8\0F\85\0B\00\00\00\0F\8A\05\00\00\00\E9\13\01\00\00\83}\E4\01\0F\85\0A\00\00\00\83}\D4\01\0F\84\AE\00\00\00\C7E\CC\01\00\00\00\C7E\C8\01\00\00\00\83}\E4\00\0F\8D\12\00\00\001\C0+E\FC\83\C0\01\0F\AFE\E4\83\C0\01\89E\CC\83}\D4\00\0F\8D\12\00\00\001\C0+E\FC\83\C0\01\0F\AFE\D4\83\C0\01\89E\C8\C7E\D0\00\00\00\00\8BE\D0;E\FC\0F\8DP\00\00\00H\8BE\D8HcM\C8\F2\0F\10\04\C8\F2\0F\10M\F0H\8BE\E8HcM\CC\F2\0FY\0C\C8\F2\0FX\C1H\8BE\D8HcM\C8\F2\0F\11\04\C8\8BU\CC\03U\E4\89U\CC\8BU\C8\03U\D4\89U\C8\8BE\D0\83\C0\01\89E\D0\E9\A4\FF\FF\FF\E9Q\00\00\00\C7E\D0\00\00\00\00\8BE\D0;E\FC\0F\8D>\00\00\00H\8BE\D8HcM\D0\F2\0F\10\04\C8\F2\0F\10M\F0H\8BE\E8HcM\D0\F2\0FY\0C\C8\F2\0FX\C1H\8BE\D8HcM\D0\F2\0F\11\04\C8\8BE\D0\83\C0\01\89E\D0\E9\B6\FF\FF\FF]\C3", i32 0, [2242 x i8] c"UH\89\E5\89}\FC\F2\0F\11E\F0H\89u\E8\89U\E4\83}\FC\00\0F\8F\05\00\00\00\E9\B0\01\00\00\83}\E4\01\0F\84O\00\00\00\8BE\FC\0F\AFE\E4\89E\D8\C7E\E0\00\00\00\00\8BE\E0;E\D8\0F\8D-\00\00\00\F2\0F\10E\F0H\8BE\E8HcM\E0\F2\0FY\04\C8H\8BE\E8HcM\E0\F2\0F\11\04\C8\8BE\E0\03E\E4\89E\E0\E9\C7\FF\FF\FF\E9W\01\00\00\B8\05\00\00\00\8BM\FC\89E\D4\89\C8\99\8BM\D4\F7\F9\89U\DC\83}\DC\00\0F\84T\00\00\00\C7E\E0\00\00\00\00\8BE\E0;E\DC\0F\8D-\00\00\00\F2\0F\10E\F0H\8BE\E8HcM\E0\F2\0FY\04\C8H\8BE\E8HcM\E0\F2\0F\11\04\C8\8BE\E0\83\C0\01\89E\E0\E9\C7\FF\FF\FF\83}\FC\05\0F\8D\05\00\00\00\E9\E8\00\00\00\E9\00\00\00\00\8BE\DC\89E\E0\8BE\E0;E\FC\0F\8D\D1\00\00\00\F2\0F\10E\F0H\8BE\E8HcM\E0\F2\0FY\04\C8H\8BE\E8HcM\E0\F2\0F\11\04\C8\F2\0F\10E\F0H\8BE\E8\8BU\E0\83\C2\01Hc\CA\F2\0FY\04\C8H\8BE\E8\8BU\E0\83\C2\01Hc\CA\F2\0F\11\04\C8\F2\0F\10E\F0H\8BE\E8\8BU\E0\83\C2\02Hc\CA\F2\0FY\04\C8H\8BE\E8\8BU\E0\83\C2\02Hc\CA\F2\0F\11\04\C8\F2\0F\10E\F0H\8BE\E8\8BU\E0\83\C2\03Hc\CA\F2\0FY\04\C8H\8BE\E8\8BU\E0\83\C2\03Hc\CA\F2\0F\11\04\C8\F2\0F\10E\F0H\8BE\E8\8BU\E0\83\C2\04Hc\CA\F2\0FY\04\C8H\8BE\E8\8BU\E0\83\C2\04Hc\CA\F2\0F\11\04\C8\8BE\E0\83\C0\05\89E\E0\E9#\FF\FF\FF]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5\89}\FC\F2\0F\11E\F0H\89u\E8\89U\E4H\89M\D8D\89E\D4\83}\FC\00\0F\8F\05\00\00\00\E9q\02\00\00\0FW\C0\F2\0F\10M\F0f\0F.\C8\0F\85\0B\00\00\00\0F\8A\05\00\00\00\E9T\02\00\00\83}\E4\01\0F\85\0A\00\00\00\83}\D4\01\0F\84\AE\00\00\00\C7E\CC\01\00\00\00\C7E\C8\01\00\00\00\83}\E4\00\0F\8D\12\00\00\001\C0+E\FC\83\C0\01\0F\AFE\E4\83\C0\01\89E\CC\83}\D4\00\0F\8D\12\00\00\001\C0+E\FC\83\C0\01\0F\AFE\D4\83\C0\01\89E\C8\C7E\D0\00\00\00\00\8BE\D0;E\FC\0F\8DP\00\00\00H\8BE\D8HcM\C8\F2\0F\10\04\C8\F2\0F\10M\F0H\8BE\E8HcM\CC\F2\0FY\0C\C8\F2\0FX\C1H\8BE\D8HcM\C8\F2\0F\11\04\C8\8BU\CC\03U\E4\89U\CC\8BU\C8\03U\D4\89U\C8\8BE\D0\83\C0\01\89E\D0\E9\A4\FF\FF\FF\E9\92\01\00\00\B8\04\00\00\00\8BM\FC\89E\C0\89\C8\99\8BM\C0\F7\F9\89U\C4\83}\C4\00\0F\84e\00\00\00\C7E\D0\00\00\00\00\8BE\D0;E\C4\0F\8D>\00\00\00H\8BE\D8HcM\D0\F2\0F\10\04\C8\F2\0F\10M\F0H\8BE\E8HcM\D0\F2\0FY\0C\C8\F2\0FX\C1H\8BE\D8HcM\D0\F2\0F\11\04\C8\8BE\D0\83\C0\01\89E\D0\E9\B6\FF\FF\FF\83}\FC\04\0F\8D\05\00\00\00\E9\12\01\00\00\E9\00\00\00\00\8BE\C4\89E\D0\8BE\D0;E\FC\0F\8D\FB\00\00\00H\8BE\D8HcM\D0\F2\0F\10\04\C8\F2\0F\10M\F0H\8BE\E8HcM\D0\F2\0FY\0C\C8\F2\0FX\C1H\8BE\D8HcM\D0\F2\0F\11\04\C8H\8BE\D8\8BU\D0\83\C2\01Hc\CA\F2\0F\10\04\C8\F2\0F\10M\F0H\8BE\E8\8BU\D0\83\C2\01Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\D8\8BU\D0\83\C2\01Hc\CA\F2\0F\11\04\C8H\8BE\D8\8BU\D0\83\C2\02Hc\CA\F2\0F\10\04\C8\F2\0F\10M\F0H\8BE\E8\8BU\D0\83\C2\02Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\D8\8BU\D0\83\C2\02Hc\CA\F2\0F\11\04\C8H\8BE\D8\8BU\D0\83\C2\03Hc\CA\F2\0F\10\04\C8\F2\0F\10M\F0H\8BE\E8\8BU\D0\83\C2\03Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\D8\8BU\D0\83\C2\03Hc\CA\F2\0F\11\04\C8\8BE\D0\83\C0\04\89E\D0\E9\F9\FE\FF\FF]\C3\0F\1F\00UH\89\E5\0FW\C0\89}\F4H\89u\E8\89U\E4H\89M\D8D\89E\D4\F2\0F\11E\C8\83}\F4\00\0F\8F\0D\00\00\00\0FW\C0\F2\0F\11E\F8\E9\11\01\00\00\83}\E4\01\0F\85\0A\00\00\00\83}\D4\01\0F\84\AA\00\00\00\C7E\C0\00\00\00\00\C7E\BC\00\00\00\00\83}\E4\00\0F\8D\0F\00\00\001\C0+E\F4\83\C0\01\0F\AFE\E4\89E\C0\83}\D4\00\0F\8D\0F\00\00\001\C0+E\F4\83\C0\01\0F\AFE\D4\89E\BC\C7E\C4\00\00\00\00\8BE\C4;E\F4\0F\8DH\00\00\00\F2\0F\10E\C8H\8BE\E8HcM\C0\F2\0F\10\0C\C8H\8BE\D8HcM\BC\F2\0FY\0C\C8\F2\0FX\C1\F2\0F\11E\C8\8BU\C0\03U\E4\89U\C0\8BU\BC\03U\D4\89U\BC\8BE\C4\83\C0\01\89E\C4\E9\AC\FF\FF\FF\F2\0F\10E\C8\F2\0F\11E\F8\E9S\00\00\00\C7E\C4\00\00\00\00\8BE\C4;E\F4\0F\8D6\00\00\00\F2\0F\10E\C8H\8BE\E8HcM\C4\F2\0F\10\0C\C8H\8BE\D8HcM\C4\F2\0FY\0C\C8\F2\0FX\C1\F2\0F\11E\C8\8BE\C4\83\C0\01\89E\C4\E9\BE\FF\FF\FF\F2\0F\10E\C8\F2\0F\11E\F8\F2\0F\10E\F8]\C3\0F\1F\00UH\89\E5\0FW\C0\89}\F4H\89u\E8\89U\E4H\89M\D8D\89E\D4\F2\0F\11E\C8\83}\F4\00\0F\8F\0D\00\00\00\0FW\C0\F2\0F\11E\F8\E97\02\00\00\83}\E4\01\0F\85\0A\00\00\00\83}\D4\01\0F\84\AA\00\00\00\C7E\C0\00\00\00\00\C7E\BC\00\00\00\00\83}\E4\00\0F\8D\0F\00\00\001\C0+E\F4\83\C0\01\0F\AFE\E4\89E\C0\83}\D4\00\0F\8D\0F\00\00\001\C0+E\F4\83\C0\01\0F\AFE\D4\89E\BC\C7E\C4\00\00\00\00\8BE\C4;E\F4\0F\8DH\00\00\00\F2\0F\10E\C8H\8BE\E8HcM\C0\F2\0F\10\0C\C8H\8BE\D8HcM\BC\F2\0FY\0C\C8\F2\0FX\C1\F2\0F\11E\C8\8BU\C0\03U\E4\89U\C0\8BU\BC\03U\D4\89U\BC\8BE\C4\83\C0\01\89E\C4\E9\AC\FF\FF\FF\F2\0F\10E\C8\F2\0F\11E\F8\E9y\01\00\00\B8\05\00\00\00\8BM\F4\89E\B4\89\C8\99\8BM\B4\F7\F9\89U\B8\83}\B8\00\0F\84g\00\00\00\C7E\C4\00\00\00\00\8BE\C4;E\B8\0F\8D6\00\00\00\F2\0F\10E\C8H\8BE\E8HcM\C4\F2\0F\10\0C\C8H\8BE\D8HcM\C4\F2\0FY\0C\C8\F2\0FX\C1\F2\0F\11E\C8\8BE\C4\83\C0\01\89E\C4\E9\BE\FF\FF\FF\83}\F4\05\0F\8D\0F\00\00\00\F2\0F\10E\C8\F2\0F\11E\F8\E9\F7\00\00\00\E9\00\00\00\00\8BE\B8\89E\C4\8BE\C4;E\F4\0F\8D\D6\00\00\00\F2\0F\10E\C8H\8BE\E8HcM\C4\F2\0F\10\0C\C8H\8BE\D8HcM\C4\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E8\8BU\C4\83\C2\01Hc\CA\F2\0F\10\0C\C8H\8BE\D8\8BU\C4\83\C2\01Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E8\8BU\C4\83\C2\02Hc\CA\F2\0F\10\0C\C8H\8BE\D8\8BU\C4\83\C2\02Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E8\8BU\C4\83\C2\03Hc\CA\F2\0F\10\0C\C8H\8BE\D8\8BU\C4\83\C2\03Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E8\8BU\C4\83\C2\04Hc\CA\F2\0F\10\0C\C8H\8BE\D8\8BU\C4\83\C2\04Hc\CA\F2\0FY\0C\C8\F2\0FX\C1\F2\0F\11E\C8\8BE\C4\83\C0\05\89E\C4\E9\1E\FF\FF\FF\F2\0F\10E\C8\F2\0F\11E\F8\F2\0F\10E\F8]\C3f.\0F\1F\84\00\00\00\00\00\0F\1F\00AWAVA\89\FFAUATL\8D%\CE\14 \00UH\8D-\CE\14 \00SI\89\F6I\89\D5L)\E5H\83\EC\08H\C1\FD\03\E8O\DC\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\EAL\89\F6D\89\FFA\FF\14\DCH\83\C3\01H9\EBu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4029a0__rodata = internal constant %seg_4029a0__rodata_type <{ [112 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@\00\00\00\00\00\00\E0?\9A\99\99\99\99\99\C9?\00\00\00\00\00@\8F@\00\00\00\00\00\00Y@\00\00\00\00\80\84.A\00\00\00\00\00\00\D0@\00\00\00\00\00\00\E0@\00\00\00\00\00\00\F0\BF\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [19 x i8] c"LINPACK_ARRAY_SIZE\00", [12 x i8] c"Too small.\0A\00", [25 x i8] c"Memory required:  %ldK.\0A\00", [52 x i8] c"Not enough memory available for given array size.\0A\0A\00", [36 x i8] c"\0A\0ALINPACK benchmark, %s precision.\0A\00", [7 x i8] c"Double\00", [32 x i8] c"Machine precision:  %d digits.\0A\00", [21 x i8] c"Array size %d X %d.\0A\00", [43 x i8] c"Average rolled and unrolled performance:\0A\0A\00", [106 x i8] c"    Reps Time(s) DGEFA   DGESL  OVERHEAD    KFLOPS\0A\00----------------------------------------------------\0A\00", [17 x i8] c"time: %ld.%06ld\0A\00", [43 x i8] c"%8ld %6.2f %6.2f%% %6.2f%% %6.2f%%  %9.3f\0A\00" }>
@seg_603e00__init_array = internal global %seg_603e00__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400730_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400710___do_global_dtors_aux to i64) }>
@seg_603e10__jcr = internal global %seg_603e10__jcr_type zeroinitializer
@seg_603ff8__got = internal global %seg_603ff8__got_type <{ i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_604000__got_plt = internal global %seg_604000__got_plt_type <{ [24 x i8] c"\18>`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @getenv to i64), i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 ()* @clock to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64)* @atoi to i64) }>
@__bss_start = global %__bss_start_type zeroinitializer
@__mcsema_reg_state = internal thread_local global %struct.State zeroinitializer
@__mcsema_stack = internal thread_local global [131072 x i64] zeroinitializer
@__mcsema_tls = internal thread_local global [512 x i64] zeroinitializer
@0 = internal global i1 false
@llvm.global_dtors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

; Function Attrs: noduplicate noinline nounwind optnone
define %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #0 {
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @clock() #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @atoi(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @getenv(i64) #2

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005c0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_4005c0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_604000__got_plt_type* @seg_604000__got_plt to i64), i64 8) to i64*)
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 1, !tbaa !1947
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8
  store i64 %7, i64* %5, align 8, !tbaa !1947
  %9 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_604000__got_plt_type* @seg_604000__got_plt to i64), i64 16) to i64*)
  store i64 %9, i64* %3, align 8, !tbaa !1947
  %10 = icmp eq i64 %9, 4195788
  br i1 %10, label %block_4005cc, label %12

block_4005cc:                                     ; preds = %block_4005c0
  store i64 4195792, i64* %3, align 8
  %11 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 4195792, %struct.Memory* %2)
  ret %struct.Memory* %11

; <label>:12                                      ; preds = %block_4005c0
  %13 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4026a0_ddot_ur(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_4026a0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %12 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* %14, align 1, !tbaa !1947
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21
  store i64 %20, i64* %14, align 8, !tbaa !1947
  store i64 %20, i64* %15, align 8, !tbaa !1947
  %22 = bitcast [32 x %union.VectorReg]* %16 to i8*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast [32 x %union.VectorReg]* %16 to i32*
  store i32 0, i32* %24, align 1, !tbaa !1951
  %25 = getelementptr inbounds i8, i8* %22, i64 4
  %26 = bitcast i8* %25 to i32*
  store i32 0, i32* %26, align 1, !tbaa !1951
  %27 = bitcast i64* %23 to i32*
  store i32 0, i32* %27, align 1, !tbaa !1951
  %28 = getelementptr inbounds i8, i8* %22, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 0, i32* %29, align 1, !tbaa !1951
  %30 = add i64 %19, -20
  %31 = load i32, i32* %7, align 4
  %32 = inttoptr i64 %30 to i32*
  store i32 %31, i32* %32
  %33 = add i64 %19, -32
  %34 = load i64, i64* %13, align 8
  %35 = inttoptr i64 %33 to i64*
  store i64 %34, i64* %35
  %36 = add i64 %19, -36
  %37 = load i32, i32* %5, align 4
  %38 = inttoptr i64 %36 to i32*
  store i32 %37, i32* %38
  %39 = add i64 %19, -48
  %40 = load i64, i64* %11, align 8
  %41 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %41
  %42 = add i64 %19, -52
  %43 = load i32, i32* %9, align 4
  %44 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %44
  %45 = add i64 %19, -64
  %46 = bitcast [32 x %union.VectorReg]* %16 to double*
  %47 = load double, double* %46, align 1
  %48 = inttoptr i64 %45 to double*
  store double %47, double* %48
  %49 = inttoptr i64 %30 to i32*
  %50 = load i32, i32* %49
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %51, align 1, !tbaa !1953
  %52 = and i32 %50, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #6
  %54 = and i32 %53, 1
  %55 = xor i32 %54, 1
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %56, i8* %57, align 1, !tbaa !1966
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !1967
  %59 = icmp eq i32 %50, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1, !tbaa !1968
  %62 = lshr i32 %50, 31
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1, !tbaa !1969
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %65, align 1, !tbaa !1970
  %66 = xor i1 %59, true
  %67 = icmp eq i8 %63, 0
  %68 = and i1 %67, %66
  %69 = select i1 %68, i64 53, i64 40
  %70 = add i64 %69, %1
  br i1 %68, label %block_4026d5, label %block_4026c8

block_4026e9:                                     ; preds = %block_4026d5, %block_4026df
  %71 = phi i64 [ %114, %block_4026d5 ], [ %109, %block_4026df ]
  %72 = add i64 %19, -72
  %73 = inttoptr i64 %72 to i32*
  store i32 0, i32* %73
  %74 = add i64 %19, -76
  %75 = inttoptr i64 %74 to i32*
  store i32 0, i32* %75
  %76 = add i64 %71, 18
  %77 = inttoptr i64 %36 to i32*
  %78 = load i32, i32* %77
  %79 = lshr i32 %78, 31
  %80 = trunc i32 %79 to i8
  %81 = icmp ne i8 %80, 0
  %82 = select i1 %81, i64 6, i64 21
  %83 = add i64 %82, %76
  %84 = icmp eq i8 %80, 0
  br i1 %84, label %block_402710, label %block_402701

block_4026df:                                     ; preds = %block_4026d5
  %85 = inttoptr i64 %42 to i32*
  %86 = load i32, i32* %85
  %87 = add i32 %86, -1
  %88 = icmp eq i32 %86, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %51, align 1, !tbaa !1953
  %90 = and i32 %87, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #6
  %92 = and i32 %91, 1
  %93 = xor i32 %92, 1
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %57, align 1, !tbaa !1966
  %95 = xor i32 %87, %86
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %58, align 1, !tbaa !1967
  %99 = icmp eq i32 %86, 1
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %61, align 1, !tbaa !1968
  %101 = lshr i32 %87, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %64, align 1, !tbaa !1969
  %103 = lshr i32 %86, 31
  %104 = xor i32 %101, %103
  %105 = add nuw nsw i32 %104, %103
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %65, align 1, !tbaa !1970
  %108 = select i1 %99, i64 180, i64 10
  %109 = add i64 %114, %108
  br i1 %99, label %block_402793, label %block_4026e9

block_4026d5:                                     ; preds = %block_4026a0
  %110 = inttoptr i64 %36 to i32*
  %111 = load i32, i32* %110
  %112 = icmp eq i32 %111, 1
  %113 = select i1 %112, i64 10, i64 20
  %114 = add i64 %70, %113
  br i1 %112, label %block_4026df, label %block_4026e9

block_4027c6:                                     ; preds = %block_4027ba
  %115 = inttoptr i64 %161 to double*
  %116 = load double, double* %115
  %117 = inttoptr i64 %163 to i64*
  %118 = load i64, i64* %117
  %119 = sext i32 %256 to i64
  %120 = shl nsw i64 %119, 3
  %121 = add i64 %120, %118
  %122 = inttoptr i64 %121 to double*
  %123 = load double, double* %122
  %124 = inttoptr i64 %166 to i64*
  %125 = load i64, i64* %124
  store i64 %119, i64* %11, align 8, !tbaa !1947
  %126 = add i64 %120, %125
  %127 = inttoptr i64 %126 to double*
  %128 = load double, double* %127
  %129 = fmul double %123, %128
  store double %129, double* %164, align 1, !tbaa !1971
  store i64 0, i64* %165, align 1, !tbaa !1971
  %130 = fadd double %116, %129
  store double %130, double* %46, align 1, !tbaa !1971
  store i64 0, i64* %23, align 1, !tbaa !1971
  %131 = inttoptr i64 %161 to double*
  store double %130, double* %131
  %132 = inttoptr i64 %413 to i32*
  %133 = load i32, i32* %132
  %134 = add i32 %133, 1
  %135 = inttoptr i64 %413 to i32*
  store i32 %134, i32* %135
  %136 = add i64 %270, -12
  br label %block_4027ba

block_402820:                                     ; preds = %block_40281a, %block_40282c
  %137 = phi i64 [ %485, %block_40281a ], [ %252, %block_40282c ]
  %138 = phi %struct.Memory* [ %481, %block_40281a ], [ %138, %block_40282c ]
  %139 = inttoptr i64 %413 to i32*
  %140 = load i32, i32* %139
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %10, align 8, !tbaa !1947
  %142 = inttoptr i64 %479 to i32*
  %143 = load i32, i32* %142
  %144 = sub i32 %140, %143
  %145 = lshr i32 %144, 31
  %146 = trunc i32 %145 to i8
  %147 = lshr i32 %140, 31
  %148 = lshr i32 %143, 31
  %149 = xor i32 %148, %147
  %150 = xor i32 %145, %147
  %151 = add nuw nsw i32 %150, %149
  %152 = icmp eq i32 %151, 2
  %153 = icmp ne i8 %146, 0
  %154 = xor i1 %153, %152
  %155 = select i1 %154, i64 12, i64 226
  %156 = add i64 %137, %155
  %157 = inttoptr i64 %478 to double*
  %158 = load double, double* %157
  store double 0.000000e+00, double* %477, align 1, !tbaa !1971
  br i1 %154, label %block_40282c, label %block_402902

block_4027b3:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %159 = add i64 %412, 7
  %160 = inttoptr i64 %413 to i32*
  store i32 0, i32* %160
  %161 = add i64 %404, -56
  %162 = bitcast i64* %23 to double*
  %163 = add i64 %404, -24
  %164 = bitcast %union.VectorReg* %17 to double*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %166 = add i64 %404, -40
  br label %block_4027ba

block_402730:                                     ; preds = %block_40273c, %block_402729
  %167 = phi i64 [ %275, %block_402729 ], [ %374, %block_40273c ]
  %168 = phi %struct.Memory* [ %273, %block_402729 ], [ %168, %block_40273c ]
  %169 = inttoptr i64 %274 to i32*
  %170 = load i32, i32* %169
  %171 = inttoptr i64 %277 to i32*
  %172 = load i32, i32* %171
  %173 = sub i32 %170, %172
  %174 = lshr i32 %173, 31
  %175 = trunc i32 %174 to i8
  %176 = lshr i32 %170, 31
  %177 = lshr i32 %172, 31
  %178 = xor i32 %177, %176
  %179 = xor i32 %174, %176
  %180 = add nuw nsw i32 %179, %178
  %181 = icmp eq i32 %180, 2
  %182 = icmp ne i8 %175, 0
  %183 = xor i1 %182, %181
  %184 = select i1 %183, i64 12, i64 84
  %185 = add i64 %167, %184
  %186 = inttoptr i64 %278 to double*
  %187 = load double, double* %186
  br i1 %183, label %block_40273c, label %block_402784

block_40282c:                                     ; preds = %block_402820
  %188 = inttoptr i64 %476 to i64*
  %189 = load i64, i64* %188
  %190 = sext i32 %140 to i64
  %191 = shl nsw i64 %190, 3
  %192 = add i64 %191, %189
  %193 = inttoptr i64 %192 to double*
  %194 = load double, double* %193
  %195 = inttoptr i64 %473 to i64*
  %196 = load i64, i64* %195
  %197 = add i64 %191, %196
  %198 = inttoptr i64 %197 to double*
  %199 = load double, double* %198
  %200 = fmul double %194, %199
  %201 = fadd double %158, %200
  %202 = add i32 %140, 1
  %203 = sext i32 %202 to i64
  %204 = shl nsw i64 %203, 3
  %205 = add i64 %204, %189
  %206 = inttoptr i64 %205 to double*
  %207 = load double, double* %206
  %208 = add i64 %204, %196
  %209 = inttoptr i64 %208 to double*
  %210 = load double, double* %209
  %211 = fmul double %207, %210
  %212 = fadd double %201, %211
  %213 = add i32 %140, 2
  %214 = sext i32 %213 to i64
  %215 = shl nsw i64 %214, 3
  %216 = add i64 %215, %189
  %217 = inttoptr i64 %216 to double*
  %218 = load double, double* %217
  %219 = add i64 %215, %196
  %220 = inttoptr i64 %219 to double*
  %221 = load double, double* %220
  %222 = fmul double %218, %221
  %223 = fadd double %212, %222
  %224 = add i32 %140, 3
  %225 = sext i32 %224 to i64
  %226 = shl nsw i64 %225, 3
  %227 = add i64 %226, %189
  %228 = inttoptr i64 %227 to double*
  %229 = load double, double* %228
  %230 = add i64 %226, %196
  %231 = inttoptr i64 %230 to double*
  %232 = load double, double* %231
  %233 = fmul double %229, %232
  %234 = fadd double %223, %233
  %235 = add i32 %140, 4
  %236 = zext i32 %235 to i64
  %237 = sext i32 %235 to i64
  %238 = shl nsw i64 %237, 3
  %239 = add i64 %238, %189
  %240 = inttoptr i64 %239 to double*
  %241 = load double, double* %240
  store double 0.000000e+00, double* %482, align 1, !tbaa !1971
  store i64 %236, i64* %12, align 8, !tbaa !1947
  store i64 %237, i64* %11, align 8, !tbaa !1947
  %242 = add i64 %238, %196
  %243 = inttoptr i64 %242 to double*
  %244 = load double, double* %243
  %245 = fmul double %241, %244
  store double %245, double* %475, align 1, !tbaa !1971
  store i64 0, i64* %474, align 1, !tbaa !1971
  %246 = fadd double %234, %245
  %247 = inttoptr i64 %478 to double*
  store double %246, double* %247
  %248 = inttoptr i64 %413 to i32*
  %249 = load i32, i32* %248
  %250 = add i32 %249, 5
  %251 = inttoptr i64 %413 to i32*
  store i32 %250, i32* %251
  %252 = add i64 %156, -12
  br label %block_402820

block_4027ba:                                     ; preds = %block_4027b3, %block_4027c6
  %253 = phi i64 [ %159, %block_4027b3 ], [ %136, %block_4027c6 ]
  %254 = phi %struct.Memory* [ %405, %block_4027b3 ], [ %254, %block_4027c6 ]
  %255 = inttoptr i64 %413 to i32*
  %256 = load i32, i32* %255
  %257 = inttoptr i64 %406 to i32*
  %258 = load i32, i32* %257
  %259 = sub i32 %256, %258
  %260 = lshr i32 %259, 31
  %261 = lshr i32 %256, 31
  %262 = lshr i32 %258, 31
  %263 = xor i32 %262, %261
  %264 = xor i32 %260, %261
  %265 = add nuw nsw i32 %264, %263
  %266 = icmp eq i32 %265, 2
  %267 = icmp ne i32 %260, 0
  %268 = xor i1 %267, %266
  %269 = select i1 %268, i64 12, i64 66
  %270 = add i64 %253, %269
  br i1 %268, label %block_4027c6, label %block_4027fc

block_402729:                                     ; preds = %block_402710, %block_40271a
  %271 = phi i64 [ %446, %block_402710 ], [ %330, %block_40271a ]
  %272 = phi i64 [ %436, %block_402710 ], [ %327, %block_40271a ]
  %273 = phi %struct.Memory* [ %437, %block_402710 ], [ %437, %block_40271a ]
  %274 = add i64 %272, -60
  %275 = add i64 %271, 7
  %276 = inttoptr i64 %274 to i32*
  store i32 0, i32* %276
  %277 = add i64 %272, -12
  %278 = add i64 %272, -56
  %279 = bitcast i64* %23 to double*
  %280 = add i64 %272, -24
  %281 = add i64 %272, -64
  %282 = bitcast %union.VectorReg* %17 to double*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %284 = add i64 %272, -40
  %285 = add i64 %272, -68
  %286 = add i64 %272, -28
  %287 = add i64 %272, -44
  br label %block_402730

block_4027fc:                                     ; preds = %block_4027ba
  %288 = phi i64 [ %270, %block_4027ba ]
  %289 = phi i32 [ %256, %block_4027ba ]
  %290 = phi %struct.Memory* [ %254, %block_4027ba ]
  %291 = zext i32 %289 to i64
  store i64 %291, i64* %10, align 8, !tbaa !1947
  %292 = add i64 %404, -12
  %293 = inttoptr i64 %292 to i32*
  %294 = load i32, i32* %293
  %295 = add i32 %294, -5
  %296 = icmp ult i32 %294, 5
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %51, align 1, !tbaa !1953
  %298 = and i32 %295, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298) #6
  %300 = and i32 %299, 1
  %301 = xor i32 %300, 1
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %57, align 1, !tbaa !1966
  %303 = xor i32 %295, %294
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %58, align 1, !tbaa !1967
  %307 = icmp eq i32 %294, 5
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %61, align 1, !tbaa !1968
  %309 = lshr i32 %295, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %64, align 1, !tbaa !1969
  %311 = lshr i32 %294, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %311
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %65, align 1, !tbaa !1970
  %316 = icmp ne i8 %310, 0
  %317 = xor i1 %316, %314
  %318 = select i1 %317, i64 10, i64 25
  %319 = add i64 %288, %318
  br i1 %317, label %block_402806, label %block_402815

block_40271a:                                     ; preds = %block_402710
  %320 = add i64 %436, -12
  %321 = inttoptr i64 %320 to i32*
  %322 = load i32, i32* %321
  %323 = sub i32 1, %322
  %324 = sext i32 %323 to i64
  %325 = sext i32 %441 to i64
  %326 = mul nsw i64 %325, %324
  %327 = load i64, i64* %15, align 8
  %328 = add i64 %327, -68
  %329 = trunc i64 %326 to i32
  %330 = add i64 %446, 15
  %331 = inttoptr i64 %328 to i32*
  store i32 %329, i32* %331
  br label %block_402729

block_4026c8:                                     ; preds = %block_4026a0
  store i32 0, i32* %24, align 1, !tbaa !1951
  store i32 0, i32* %26, align 1, !tbaa !1951
  store i32 0, i32* %27, align 1, !tbaa !1951
  store i32 0, i32* %29, align 1, !tbaa !1951
  %332 = add i64 %19, -16
  %333 = load double, double* %46, align 1
  %334 = inttoptr i64 %332 to double*
  store double %333, double* %334
  %335 = bitcast i64* %23 to double*
  br label %block_40290c

block_40273c:                                     ; preds = %block_402730
  %336 = inttoptr i64 %280 to i64*
  %337 = load i64, i64* %336
  %338 = inttoptr i64 %281 to i32*
  %339 = load i32, i32* %338
  %340 = sext i32 %339 to i64
  %341 = shl nsw i64 %340, 3
  %342 = add i64 %341, %337
  %343 = inttoptr i64 %342 to double*
  %344 = load double, double* %343
  %345 = inttoptr i64 %284 to i64*
  %346 = load i64, i64* %345
  %347 = inttoptr i64 %285 to i32*
  %348 = load i32, i32* %347
  %349 = sext i32 %348 to i64
  store i64 %349, i64* %11, align 8, !tbaa !1947
  %350 = shl nsw i64 %349, 3
  %351 = add i64 %350, %346
  %352 = inttoptr i64 %351 to double*
  %353 = load double, double* %352
  %354 = fmul double %344, %353
  store double %354, double* %282, align 1, !tbaa !1971
  store i64 0, i64* %283, align 1, !tbaa !1971
  %355 = fadd double %187, %354
  %356 = inttoptr i64 %278 to double*
  store double %355, double* %356
  %357 = inttoptr i64 %281 to i32*
  %358 = load i32, i32* %357
  %359 = inttoptr i64 %286 to i32*
  %360 = load i32, i32* %359
  %361 = add i32 %360, %358
  %362 = inttoptr i64 %281 to i32*
  store i32 %361, i32* %362
  %363 = inttoptr i64 %285 to i32*
  %364 = load i32, i32* %363
  %365 = inttoptr i64 %287 to i32*
  %366 = load i32, i32* %365
  %367 = add i32 %366, %364
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %12, align 8, !tbaa !1947
  %369 = inttoptr i64 %285 to i32*
  store i32 %367, i32* %369
  %370 = inttoptr i64 %274 to i32*
  %371 = load i32, i32* %370
  %372 = add i32 %371, 1
  %373 = inttoptr i64 %274 to i32*
  store i32 %372, i32* %373
  %374 = add i64 %185, -12
  br label %block_402730

block_402793:                                     ; preds = %block_4026df
  %375 = add i64 %19, -84
  %376 = inttoptr i64 %375 to i32*
  store i32 5, i32* %376
  %377 = zext i32 %50 to i64
  store i64 %377, i64* %10, align 8, !tbaa !1947
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %379 = sext i32 %50 to i64
  %380 = lshr i64 %379, 32
  store i64 %380, i64* %378, align 8, !tbaa !1947
  %381 = inttoptr i64 %375 to i32*
  %382 = load i32, i32* %381
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %11, align 8, !tbaa !1947
  %384 = add i64 %109, 19
  store i64 %384, i64* %3, align 8
  %385 = zext i32 %50 to i64
  %386 = sext i32 %382 to i64
  %387 = shl nuw i64 %380, 32
  %388 = or i64 %387, %385
  %389 = sdiv i64 %388, %386
  %390 = shl i64 %389, 32
  %391 = ashr exact i64 %390, 32
  %392 = icmp eq i64 %389, %391
  br i1 %392, label %398, label %393

; <label>:393                                     ; preds = %block_402793
  %394 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %384, %struct.Memory* %2) #11
  %395 = load i64, i64* %15, align 8
  %396 = load i32, i32* %5, align 4
  %397 = load i64, i64* %3, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:398                                     ; preds = %block_402793
  %399 = srem i64 %388, %386
  %400 = and i64 %399, 4294967295
  store i64 %400, i64* %12, align 8, !tbaa !1947
  %401 = trunc i64 %399 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %398, %393
  %402 = phi i64 [ %397, %393 ], [ %384, %398 ]
  %403 = phi i32 [ %396, %393 ], [ %401, %398 ]
  %404 = phi i64 [ %395, %393 ], [ %20, %398 ]
  %405 = phi %struct.Memory* [ %394, %393 ], [ %2, %398 ]
  %406 = add i64 %404, -72
  %407 = inttoptr i64 %406 to i32*
  store i32 %403, i32* %407
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408
  %410 = icmp eq i32 %409, 0
  %411 = select i1 %410, i64 116, i64 13
  %412 = add i64 %402, %411
  %413 = add i64 %404, -60
  br i1 %410, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge, label %block_4027b3

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %414 = add i64 %404, -12
  %415 = add i64 %404, -56
  %416 = bitcast i64* %23 to double*
  %417 = add i64 %404, -24
  %418 = bitcast %union.VectorReg* %17 to double*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %420 = add i64 %404, -40
  br label %block_40281a

block_40290c:                                     ; preds = %block_402806, %block_402902, %block_402784, %block_4026c8
  %421 = phi double* [ %162, %block_402806 ], [ %477, %block_402902 ], [ %279, %block_402784 ], [ %335, %block_4026c8 ]
  %422 = phi i64 [ %404, %block_402806 ], [ %511, %block_402902 ], [ %272, %block_402784 ], [ %20, %block_4026c8 ]
  %423 = phi %struct.Memory* [ %290, %block_402806 ], [ %493, %block_402902 ], [ %454, %block_402784 ], [ %2, %block_4026c8 ]
  %424 = add i64 %422, -8
  %425 = inttoptr i64 %424 to double*
  %426 = load double, double* %425
  store double %426, double* %46, align 1, !tbaa !1971
  store double 0.000000e+00, double* %421, align 1, !tbaa !1971
  %427 = load i64, i64* %14, align 1, !tbaa !1947
  %428 = add i64 %427, 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429
  store i64 %430, i64* %15, align 8, !tbaa !1947
  %431 = inttoptr i64 %428 to i64*
  %432 = load i64, i64* %431
  store i64 %432, i64* %3, align 8, !tbaa !1947
  %433 = add i64 %427, 16
  store i64 %433, i64* %14, align 8, !tbaa !1947
  ret %struct.Memory* %423

block_402815:                                     ; preds = %block_4027fc
  %434 = add i64 %319, 5
  br label %block_40281a

block_402710:                                     ; preds = %block_402701, %block_4026e9
  %435 = phi i64 [ %83, %block_4026e9 ], [ %525, %block_402701 ]
  %436 = phi i64 [ %20, %block_4026e9 ], [ %522, %block_402701 ]
  %437 = phi %struct.Memory* [ %2, %block_4026e9 ], [ %2, %block_402701 ]
  %438 = add i64 %436, -44
  %439 = add i64 %435, 4
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440
  %442 = lshr i32 %441, 31
  %443 = trunc i32 %442 to i8
  %444 = icmp ne i8 %443, 0
  %445 = select i1 %444, i64 6, i64 21
  %446 = add i64 %445, %439
  %447 = icmp eq i8 %443, 0
  br i1 %447, label %block_402729, label %block_40271a

block_402784:                                     ; preds = %block_402730
  %448 = phi double [ %187, %block_402730 ]
  %449 = phi i1 [ %181, %block_402730 ]
  %450 = phi i8 [ %175, %block_402730 ]
  %451 = phi i32 [ %173, %block_402730 ]
  %452 = phi i32 [ %172, %block_402730 ]
  %453 = phi i32 [ %170, %block_402730 ]
  %454 = phi %struct.Memory* [ %168, %block_402730 ]
  %455 = zext i32 %453 to i64
  store i64 %455, i64* %10, align 8, !tbaa !1947
  store double 0.000000e+00, double* %279, align 1, !tbaa !1971
  %456 = icmp ult i32 %453, %452
  %457 = zext i1 %456 to i8
  %458 = and i32 %451, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458) #6
  %460 = and i32 %459, 1
  %461 = xor i32 %460, 1
  %462 = trunc i32 %461 to i8
  %463 = xor i32 %452, %453
  %464 = xor i32 %463, %451
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = icmp eq i32 %453, %452
  %469 = zext i1 %468 to i8
  %470 = zext i1 %449 to i8
  store i8 %457, i8* %51, align 1, !tbaa !1953
  store i8 %462, i8* %57, align 1, !tbaa !1966
  store i8 %467, i8* %58, align 1, !tbaa !1967
  store i8 %469, i8* %61, align 1, !tbaa !1968
  store i8 %450, i8* %64, align 1, !tbaa !1969
  store i8 %470, i8* %65, align 1, !tbaa !1970
  store double %448, double* %46, align 1
  %471 = add i64 %272, -8
  %472 = inttoptr i64 %471 to double*
  store double %448, double* %472
  br label %block_40290c

block_40281a:                                     ; preds = %block_402815, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge
  %473 = phi i64 [ %420, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %166, %block_402815 ]
  %474 = phi i64* [ %419, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %165, %block_402815 ]
  %475 = phi double* [ %418, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %164, %block_402815 ]
  %476 = phi i64 [ %417, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %163, %block_402815 ]
  %477 = phi double* [ %416, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %162, %block_402815 ]
  %478 = phi i64 [ %415, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %161, %block_402815 ]
  %479 = phi i64 [ %414, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %292, %block_402815 ]
  %480 = phi i64 [ %412, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %434, %block_402815 ]
  %481 = phi %struct.Memory* [ %405, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40281a_crit_edge ], [ %290, %block_402815 ]
  %482 = bitcast i64* %474 to double*
  %483 = inttoptr i64 %406 to i32*
  %484 = load i32, i32* %483
  %485 = add i64 %480, 6
  %486 = inttoptr i64 %413 to i32*
  store i32 %484, i32* %486
  br label %block_402820

block_402902:                                     ; preds = %block_402820
  %487 = phi double [ %158, %block_402820 ]
  %488 = phi i1 [ %152, %block_402820 ]
  %489 = phi i8 [ %146, %block_402820 ]
  %490 = phi i32 [ %144, %block_402820 ]
  %491 = phi i32 [ %143, %block_402820 ]
  %492 = phi i32 [ %140, %block_402820 ]
  %493 = phi %struct.Memory* [ %138, %block_402820 ]
  %494 = icmp ult i32 %492, %491
  %495 = zext i1 %494 to i8
  %496 = and i32 %490, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496) #6
  %498 = and i32 %497, 1
  %499 = xor i32 %498, 1
  %500 = trunc i32 %499 to i8
  %501 = xor i32 %491, %492
  %502 = xor i32 %501, %490
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = icmp eq i32 %492, %491
  %507 = zext i1 %506 to i8
  %508 = zext i1 %488 to i8
  store i8 %495, i8* %51, align 1, !tbaa !1953
  store i8 %500, i8* %57, align 1, !tbaa !1966
  store i8 %505, i8* %58, align 1, !tbaa !1967
  store i8 %507, i8* %61, align 1, !tbaa !1968
  store i8 %489, i8* %64, align 1, !tbaa !1969
  store i8 %508, i8* %65, align 1, !tbaa !1970
  store double %487, double* %46, align 1
  %509 = add i64 %404, -8
  %510 = inttoptr i64 %509 to double*
  store double %487, double* %510
  %511 = load i64, i64* %15, align 8
  br label %block_40290c

block_402806:                                     ; preds = %block_4027fc
  %512 = inttoptr i64 %161 to double*
  %513 = load double, double* %512
  store double %513, double* %46, align 1, !tbaa !1971
  store double 0.000000e+00, double* %162, align 1, !tbaa !1971
  %514 = add i64 %404, -8
  %515 = inttoptr i64 %514 to double*
  store double %513, double* %515
  br label %block_40290c

block_402701:                                     ; preds = %block_4026e9
  %516 = inttoptr i64 %30 to i32*
  %517 = load i32, i32* %516
  %518 = sub i32 1, %517
  %519 = sext i32 %518 to i64
  %520 = sext i32 %78 to i64
  %521 = mul nsw i64 %520, %519
  %522 = load i64, i64* %15, align 8
  %523 = add i64 %522, -64
  %524 = trunc i64 %521 to i32
  %525 = add i64 %83, 15
  %526 = inttoptr i64 %523 to i32*
  store i32 %524, i32* %526
  br label %block_402710
}

; Function Attrs: noinline
define %struct.Memory* @sub_400660__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {
block_400660:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %10, align 8, !tbaa !1947
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %12, align 8, !tbaa !1947
  %20 = load i64, i64* %9, align 1, !tbaa !1947
  %21 = add i64 %20, 8
  %22 = inttoptr i64 %20 to i64*
  %23 = load i64, i64* %22
  store i64 %23, i64* %7, align 8, !tbaa !1947
  store i64 %21, i64* %6, align 8, !tbaa !1947
  %24 = and i64 %21, -16
  store i8 0, i8* %13, align 1, !tbaa !1953
  %25 = trunc i64 %21 to i32
  %26 = and i32 %25, 240
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #6
  %28 = and i32 %27, 1
  %29 = xor i32 %28, 1
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !1966
  %31 = icmp eq i64 %24, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !1968
  %33 = lshr i64 %21, 63
  %34 = trunc i64 %33 to i8
  store i8 %34, i8* %16, align 1, !tbaa !1969
  store i8 0, i8* %17, align 1, !tbaa !1970
  store i8 0, i8* %18, align 1, !tbaa !1967
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %24, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37
  %38 = add i64 %24, -16
  %39 = inttoptr i64 %38 to i64*
  store i64 %36, i64* %39
  store i64 ptrtoint (i64 ()* @callback_sub_402990___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1947
  store i64 ptrtoint (i64 ()* @callback_sub_402920___libc_csu_init to i64), i64* %5, align 8, !tbaa !1947
  store i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64* %8, align 8, !tbaa !1947
  %40 = add i64 %1, 41
  %41 = add i64 %24, -24
  %42 = inttoptr i64 %41 to i64*
  store i64 %40, i64* %42
  %43 = inttoptr i64 %38 to i64*
  %44 = load i64, i64* %43
  %45 = add i64 %24, -8
  %46 = inttoptr i64 %45 to i64*
  %47 = load i64, i64* %46
  %48 = inttoptr i64 %41 to i64*
  %49 = load i64, i64* %48
  store i64 %38, i64* %9, align 8, !alias.scope !1973, !noalias !1976
  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_402920___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_402990___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1973
  store i64 %50, i64* %4, align 8, !alias.scope !1973, !noalias !1976
  %51 = add i64 %49, 1
  store i64 %51, i64* %3, align 8
  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)
  ret %struct.Memory* %52
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {
block_400760:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %11, align 1, !tbaa !1947
  %16 = add i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %14, i64* %17
  store i64 %16, i64* %12, align 8, !tbaa !1947
  %18 = add i64 %15, -184
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 112), i64* %10, align 8, !tbaa !1947
  %25 = add i64 %15, -12
  %26 = inttoptr i64 %25 to i32*
  store i32 0, i32* %26
  %27 = add i64 %1, 33
  %28 = add i64 %15, -192
  %29 = inttoptr i64 %28 to i64*
  store i64 %27, i64* %29
  %30 = inttoptr i64 %28 to i64*
  %31 = load i64, i64* %30
  store i64 %31, i64* %3, align 8, !alias.scope !1978, !noalias !1981
  store i64 %18, i64* %11, align 8, !alias.scope !1978, !noalias !1981
  %32 = tail call i64 @getenv(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 112)), !noalias !1978
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %33, -16
  %35 = load i64, i64* %3, align 8
  %36 = inttoptr i64 %34 to i64*
  store i64 %32, i64* %36
  %37 = inttoptr i64 %34 to i64*
  %38 = load i64, i64* %37
  store i8 0, i8* %19, align 1, !tbaa !1953
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 255
  %41 = tail call i32 @llvm.ctpop.i32(i32 %40) #6
  %42 = and i32 %41, 1
  %43 = xor i32 %42, 1
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %20, align 1, !tbaa !1966
  store i8 0, i8* %21, align 1, !tbaa !1967
  %45 = icmp eq i64 %38, 0
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %22, align 1, !tbaa !1968
  %47 = lshr i64 %38, 63
  %48 = trunc i64 %47 to i8
  store i8 %48, i8* %23, align 1, !tbaa !1969
  store i8 0, i8* %24, align 1, !tbaa !1970
  %49 = select i1 %45, i64 15, i64 27
  %50 = add i64 %35, %49
  br i1 %45, label %block_400790, label %block_40079c

block_40085e:                                     ; preds = %block_4007f1
  %51 = inttoptr i64 %376 to i64*
  %52 = load i64, i64* %51
  %53 = add i64 %387, 9
  %54 = load i64, i64* %11, align 1, !tbaa !1947
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %53, i64* %56
  %57 = inttoptr i64 %55 to i64*
  %58 = load i64, i64* %57
  store i64 %58, i64* %3, align 8, !alias.scope !1983, !noalias !1986
  %59 = tail call i64 @malloc(i64 %52), !noalias !1983
  %60 = load i64, i64* %3, align 8
  store i64 %59, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 8) to i64*)
  %61 = icmp eq i64 %59, 0
  %62 = select i1 %61, i64 18, i64 50
  %63 = add i64 %60, %62
  br i1 %61, label %block_40085e.block_400879_crit_edge, label %block_400899

block_40085e.block_400879_crit_edge:              ; preds = %block_40085e
  %64 = load i64, i64* %331, align 8, !alias.scope !1988, !noalias !1991
  br label %block_400879

block_400961:                                     ; preds = %block_400957
  %65 = add i64 %550, -48
  %66 = inttoptr i64 %65 to i64*
  %67 = load i64, i64* %66
  store i64 %67, i64* %10, align 8, !tbaa !1947
  %68 = add i64 %550, -20
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %9, align 8, !tbaa !1947
  %72 = add i64 %565, 223
  %73 = add i64 %565, 12
  %74 = load i64, i64* %11, align 1, !tbaa !1947
  %75 = add i64 %74, -8
  %76 = inttoptr i64 %75 to i64*
  store i64 %73, i64* %76
  store i64 %75, i64* %11, align 8, !tbaa !1947
  %77 = tail call %struct.Memory* @sub_400a40_linpack(%struct.State* nonnull %0, i64 %72, %struct.Memory* %551)
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, -48
  %80 = load i64, i64* %3, align 8
  %81 = inttoptr i64 %79 to i64*
  %82 = load i64, i64* %81
  %83 = shl i64 %82, 1
  %84 = inttoptr i64 %79 to i64*
  store i64 %83, i64* %84
  %85 = add i64 %78, -160
  %86 = load double, double* %860, align 1
  %87 = inttoptr i64 %85 to double*
  store double %86, double* %87
  %88 = add i64 %78, -108
  %89 = inttoptr i64 %88 to i32*
  %90 = load i32, i32* %89
  %91 = add i32 %90, 1
  %92 = inttoptr i64 %88 to i32*
  store i32 %91, i32* %92
  %93 = add i64 %80, -22
  br label %block_400957

block_400a03:                                     ; preds = %block_40098f, %block_4009e9
  %94 = phi i64 [ %301, %block_4009e9 ], [ %497, %block_40098f ]
  %95 = phi %struct.Memory* [ %402, %block_4009e9 ], [ %402, %block_40098f ]
  store i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 465), i64* %10, align 8, !tbaa !1947
  %96 = add i64 %499, -104
  %97 = inttoptr i64 %96 to i64*
  %98 = load i64, i64* %97
  store i64 %98, i64* %9, align 8, !tbaa !1947
  %99 = add i64 %499, -96
  %100 = inttoptr i64 %99 to i64*
  %101 = load i64, i64* %100
  store i64 %101, i64* %8, align 8, !tbaa !1947
  %102 = add i64 %94, 30
  %103 = load i64, i64* %11, align 1, !tbaa !1947
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105
  %106 = load i64, i64* %331, align 8, !alias.scope !1993, !noalias !1996
  %107 = load i64, i64* %332, align 8, !alias.scope !1993, !noalias !1996
  %108 = load i64, i64* %333, align 8, !alias.scope !1993, !noalias !1996
  %109 = inttoptr i64 %103 to i64*
  %110 = load i64, i64* %109
  %111 = add i64 %103, 8
  %112 = inttoptr i64 %111 to i64*
  %113 = load i64, i64* %112
  %114 = add i64 %103, 16
  %115 = inttoptr i64 %114 to i64*
  %116 = load i64, i64* %115
  %117 = add i64 %103, 24
  %118 = inttoptr i64 %117 to i64*
  %119 = load i64, i64* %118
  %120 = add i64 %103, 32
  %121 = inttoptr i64 %120 to i64*
  %122 = load i64, i64* %121
  %123 = add i64 %103, 40
  %124 = inttoptr i64 %123 to i64*
  %125 = load i64, i64* %124
  %126 = add i64 %103, 48
  %127 = inttoptr i64 %126 to i64*
  %128 = load i64, i64* %127
  %129 = add i64 %103, 56
  %130 = inttoptr i64 %129 to i64*
  %131 = load i64, i64* %130
  %132 = add i64 %103, 64
  %133 = inttoptr i64 %132 to i64*
  %134 = load i64, i64* %133
  %135 = add i64 %103, 72
  %136 = inttoptr i64 %135 to i64*
  %137 = load i64, i64* %136
  %138 = inttoptr i64 %104 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %3, align 8, !alias.scope !1993, !noalias !1996
  %140 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 465), i64 %98, i64 %101, i64 %106, i64 %107, i64 %108, i64 %110, i64 %113, i64 %116, i64 %119, i64 %122, i64 %125, i64 %128, i64 %131, i64 %134, i64 %137), !noalias !1993
  %141 = load i64, i64* %12, align 8
  %142 = add i64 %141, -172
  %143 = trunc i64 %140 to i32
  %144 = inttoptr i64 %142 to i32*
  store i32 %143, i32* %144
  br label %block_400a27

block_4007d1:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 131), i64* %10, align 8, !tbaa !1947
  %145 = add i64 %252, 17
  %146 = load i64, i64* %11, align 1, !tbaa !1947
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %152 = load i64, i64* %9, align 8, !alias.scope !1998, !noalias !2001
  %153 = load i64, i64* %204, align 8, !alias.scope !1998, !noalias !2001
  %154 = load i64, i64* %149, align 8, !alias.scope !1998, !noalias !2001
  %155 = load i64, i64* %150, align 8, !alias.scope !1998, !noalias !2001
  %156 = load i64, i64* %151, align 8, !alias.scope !1998, !noalias !2001
  %157 = inttoptr i64 %146 to i64*
  %158 = load i64, i64* %157
  %159 = add i64 %146, 8
  %160 = inttoptr i64 %159 to i64*
  %161 = load i64, i64* %160
  %162 = add i64 %146, 16
  %163 = inttoptr i64 %162 to i64*
  %164 = load i64, i64* %163
  %165 = add i64 %146, 24
  %166 = inttoptr i64 %165 to i64*
  %167 = load i64, i64* %166
  %168 = add i64 %146, 32
  %169 = inttoptr i64 %168 to i64*
  %170 = load i64, i64* %169
  %171 = add i64 %146, 40
  %172 = inttoptr i64 %171 to i64*
  %173 = load i64, i64* %172
  %174 = add i64 %146, 48
  %175 = inttoptr i64 %174 to i64*
  %176 = load i64, i64* %175
  %177 = add i64 %146, 56
  %178 = inttoptr i64 %177 to i64*
  %179 = load i64, i64* %178
  %180 = add i64 %146, 64
  %181 = inttoptr i64 %180 to i64*
  %182 = load i64, i64* %181
  %183 = add i64 %146, 72
  %184 = inttoptr i64 %183 to i64*
  %185 = load i64, i64* %184
  %186 = inttoptr i64 %147 to i64*
  %187 = load i64, i64* %186
  store i64 %187, i64* %3, align 8, !alias.scope !1998, !noalias !2001
  %188 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 131), i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %158, i64 %161, i64 %164, i64 %167, i64 %170, i64 %173, i64 %176, i64 %179, i64 %182, i64 %185), !noalias !1998
  %189 = load i64, i64* %12, align 8
  %190 = add i64 %189, -4
  %191 = inttoptr i64 %190 to i32*
  store i32 1, i32* %191
  %192 = add i64 %189, -116
  %193 = trunc i64 %188 to i32
  %194 = inttoptr i64 %192 to i32*
  store i32 %193, i32* %194
  br label %block_400a27

block_4007a8:                                     ; preds = %block_40079c, %block_400790
  %195 = phi i64 [ %395, %block_40079c ], [ %33, %block_400790 ]
  %196 = phi i64 [ %399, %block_40079c ], [ %291, %block_400790 ]
  %197 = phi %struct.Memory* [ %2, %block_40079c ], [ %2, %block_400790 ]
  %198 = add i64 %195, -20
  %199 = inttoptr i64 %198 to i32*
  %200 = load i32, i32* %199
  %201 = add i64 %195, -112
  %202 = inttoptr i64 %201 to i32*
  store i32 2, i32* %202
  %203 = zext i32 %200 to i64
  store i64 %203, i64* %6, align 8, !tbaa !1947
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %205 = sext i32 %200 to i64
  %206 = lshr i64 %205, 32
  store i64 %206, i64* %204, align 8, !tbaa !1947
  %207 = inttoptr i64 %201 to i32*
  %208 = load i32, i32* %207
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %7, align 8, !tbaa !1947
  %210 = add i64 %196, 19
  store i64 %210, i64* %3, align 8
  %211 = zext i32 %200 to i64
  %212 = sext i32 %208 to i64
  %213 = shl nuw i64 %206, 32
  %214 = or i64 %213, %211
  %215 = sdiv i64 %214, %212
  %216 = shl i64 %215, 32
  %217 = ashr exact i64 %216, 32
  %218 = icmp eq i64 %215, %217
  br i1 %218, label %224, label %219

; <label>:219                                     ; preds = %block_4007a8
  %220 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %210, %struct.Memory* %197) #11
  %221 = load i64, i64* %12, align 8
  %222 = load i32, i32* %5, align 4
  %223 = load i64, i64* %3, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:224                                     ; preds = %block_4007a8
  %225 = srem i64 %214, %212
  %226 = and i64 %225, 4294967295
  store i64 %226, i64* %8, align 8, !tbaa !1947
  %227 = trunc i64 %215 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %224, %219
  %228 = phi i64 [ %223, %219 ], [ %210, %224 ]
  %229 = phi i32 [ %222, %219 ], [ %227, %224 ]
  %230 = phi i64 [ %221, %219 ], [ %195, %224 ]
  %231 = phi %struct.Memory* [ %220, %219 ], [ %197, %224 ]
  %232 = add i64 %230, -20
  %233 = inttoptr i64 %232 to i32*
  store i32 %229, i32* %233
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234
  %236 = zext i32 %235 to i64
  %237 = shl nuw nsw i64 %236, 1
  %238 = trunc i64 %237 to i32
  %239 = inttoptr i64 %232 to i32*
  store i32 %238, i32* %239
  %240 = inttoptr i64 %232 to i32*
  %241 = load i32, i32* %240
  %242 = add i32 %241, -10
  %243 = lshr i32 %242, 31
  %244 = trunc i32 %243 to i8
  %245 = lshr i32 %241, 31
  %246 = xor i32 %243, %245
  %247 = add nuw nsw i32 %246, %245
  %248 = icmp eq i32 %247, 2
  %249 = icmp ne i8 %244, 0
  %250 = xor i1 %249, %248
  %251 = select i1 %250, i64 22, i64 54
  %252 = add i64 %228, %251
  br i1 %250, label %block_4007d1, label %block_4007f1

block_400a27:                                     ; preds = %block_400879, %block_4007d1, %block_400a03
  %253 = phi i64 [ %543, %block_400879 ], [ %141, %block_400a03 ], [ %189, %block_4007d1 ]
  %254 = phi %struct.Memory* [ %502, %block_400879 ], [ %95, %block_400a03 ], [ %231, %block_4007d1 ]
  %255 = add i64 %253, -4
  %256 = inttoptr i64 %255 to i32*
  %257 = load i32, i32* %256
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %6, align 8, !tbaa !1947
  %259 = load i64, i64* %11, align 8
  %260 = add i64 %259, 176
  %261 = icmp ugt i64 %259, -177
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %19, align 1, !tbaa !1953
  %263 = trunc i64 %260 to i32
  %264 = and i32 %263, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #6
  %266 = and i32 %265, 1
  %267 = xor i32 %266, 1
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %20, align 1, !tbaa !1966
  %269 = xor i64 %259, 16
  %270 = xor i64 %269, %260
  %271 = lshr i64 %270, 4
  %272 = trunc i64 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %21, align 1, !tbaa !1967
  %274 = icmp eq i64 %260, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %22, align 1, !tbaa !1968
  %276 = lshr i64 %260, 63
  %277 = trunc i64 %276 to i8
  store i8 %277, i8* %23, align 1, !tbaa !1969
  %278 = lshr i64 %259, 63
  %279 = xor i64 %276, %278
  %280 = add nuw nsw i64 %279, %276
  %281 = icmp eq i64 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %24, align 1, !tbaa !1970
  %283 = add i64 %259, 184
  %284 = inttoptr i64 %260 to i64*
  %285 = load i64, i64* %284
  store i64 %285, i64* %12, align 8, !tbaa !1947
  %286 = inttoptr i64 %283 to i64*
  %287 = load i64, i64* %286
  store i64 %287, i64* %3, align 8, !tbaa !1947
  %288 = add i64 %259, 192
  store i64 %288, i64* %11, align 8, !tbaa !1947
  ret %struct.Memory* %254

block_400790:                                     ; preds = %block_400760
  %289 = add i64 %33, -20
  %290 = inttoptr i64 %289 to i32*
  store i32 200, i32* %290
  %291 = add i64 %50, 24
  br label %block_4007a8

block_4009e9:                                     ; preds = %block_40098f
  %292 = add i64 %499, -104
  %293 = inttoptr i64 %292 to i64*
  %294 = load i64, i64* %293
  %295 = add i64 %294, -1
  %296 = inttoptr i64 %292 to i64*
  store i64 %295, i64* %296
  %297 = add i64 %499, -96
  %298 = inttoptr i64 %297 to i64*
  %299 = load i64, i64* %298
  %300 = add i64 %299, 1000000
  %301 = add i64 %497, 26
  %302 = inttoptr i64 %297 to i64*
  store i64 %300, i64* %302
  br label %block_400a03

block_4007f1:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 143), i64* %10, align 8, !tbaa !1947
  %303 = sext i32 %241 to i64
  %304 = mul nsw i64 %303, %303
  %305 = add i64 %230, -32
  %306 = inttoptr i64 %305 to i64*
  store i64 %304, i64* %306
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307
  %309 = inttoptr i64 %232 to i32*
  %310 = load i32, i32* %309
  %311 = sext i32 %310 to i64
  %312 = add i64 %311, %308
  %313 = shl i64 %312, 3
  %314 = load i64, i64* %12, align 8
  %315 = add i64 %314, -20
  %316 = inttoptr i64 %315 to i32*
  %317 = load i32, i32* %316
  %318 = sext i32 %317 to i64
  %319 = shl nsw i64 %318, 2
  store i64 %319, i64* %7, align 8, !tbaa !1947
  %320 = add i64 %319, %313
  %321 = add i64 %314, -40
  %322 = inttoptr i64 %321 to i64*
  store i64 %320, i64* %322
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323
  %325 = add i64 %324, 512
  %326 = ashr i64 %325, 10
  store i64 %326, i64* %9, align 8, !tbaa !1947
  %327 = add i64 %252, 84
  %328 = load i64, i64* %11, align 1, !tbaa !1947
  %329 = add i64 %328, -8
  %330 = inttoptr i64 %329 to i64*
  store i64 %327, i64* %330
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %334 = load i64, i64* %10, align 8, !alias.scope !2003, !noalias !2006
  %335 = load i64, i64* %204, align 8, !alias.scope !2003, !noalias !2006
  %336 = load i64, i64* %331, align 8, !alias.scope !2003, !noalias !2006
  %337 = load i64, i64* %332, align 8, !alias.scope !2003, !noalias !2006
  %338 = load i64, i64* %333, align 8, !alias.scope !2003, !noalias !2006
  %339 = inttoptr i64 %328 to i64*
  %340 = load i64, i64* %339
  %341 = add i64 %328, 8
  %342 = inttoptr i64 %341 to i64*
  %343 = load i64, i64* %342
  %344 = add i64 %328, 16
  %345 = inttoptr i64 %344 to i64*
  %346 = load i64, i64* %345
  %347 = add i64 %328, 24
  %348 = inttoptr i64 %347 to i64*
  %349 = load i64, i64* %348
  %350 = add i64 %328, 32
  %351 = inttoptr i64 %350 to i64*
  %352 = load i64, i64* %351
  %353 = add i64 %328, 40
  %354 = inttoptr i64 %353 to i64*
  %355 = load i64, i64* %354
  %356 = add i64 %328, 48
  %357 = inttoptr i64 %356 to i64*
  %358 = load i64, i64* %357
  %359 = add i64 %328, 56
  %360 = inttoptr i64 %359 to i64*
  %361 = load i64, i64* %360
  %362 = add i64 %328, 64
  %363 = inttoptr i64 %362 to i64*
  %364 = load i64, i64* %363
  %365 = add i64 %328, 72
  %366 = inttoptr i64 %365 to i64*
  %367 = load i64, i64* %366
  %368 = inttoptr i64 %329 to i64*
  %369 = load i64, i64* %368
  store i64 %369, i64* %3, align 8, !alias.scope !2003, !noalias !2006
  %370 = tail call i64 @printf(i64 %334, i64 %326, i64 %335, i64 %336, i64 %337, i64 %338, i64 %340, i64 %343, i64 %346, i64 %349, i64 %352, i64 %355, i64 %358, i64 %361, i64 %364, i64 %367), !noalias !2003
  %371 = load i64, i64* %12, align 8
  %372 = add i64 %371, -40
  %373 = load i64, i64* %3, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374
  %376 = add i64 %371, -56
  %377 = inttoptr i64 %376 to i64*
  store i64 %375, i64* %377
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378
  store i64 %379, i64* %7, align 8, !tbaa !1947
  %380 = inttoptr i64 %372 to i64*
  %381 = load i64, i64* %380
  %382 = icmp eq i64 %379, %381
  %383 = add i64 %371, -120
  %384 = trunc i64 %370 to i32
  %385 = inttoptr i64 %383 to i32*
  store i32 %384, i32* %385
  %386 = select i1 %382, i64 25, i64 52
  %387 = add i64 %373, %386
  br i1 %382, label %block_40085e, label %block_400879

block_40079c:                                     ; preds = %block_400760
  store i64 %38, i64* %10, align 8, !tbaa !1947
  %388 = add i64 %50, 9
  %389 = load i64, i64* %11, align 1, !tbaa !1947
  %390 = add i64 %389, -8
  %391 = inttoptr i64 %390 to i64*
  store i64 %388, i64* %391
  %392 = inttoptr i64 %390 to i64*
  %393 = load i64, i64* %392
  store i64 %393, i64* %3, align 8, !alias.scope !2008, !noalias !2011
  %394 = tail call i64 @atoi(i64 %38), !noalias !2008
  %395 = load i64, i64* %12, align 8
  %396 = add i64 %395, -20
  %397 = trunc i64 %394 to i32
  %398 = load i64, i64* %3, align 8
  %399 = add i64 %398, 3
  %400 = inttoptr i64 %396 to i32*
  store i32 %397, i32* %400
  br label %block_4007a8

block_40098f:                                     ; preds = %block_400957
  %401 = phi i64 [ %565, %block_400957 ]
  %402 = phi %struct.Memory* [ %551, %block_400957 ]
  %403 = phi i64 [ %550, %block_400957 ]
  %404 = add i64 %403, -88
  store i64 0, i64* %9, align 8, !tbaa !1947
  %405 = add i64 %401, 13
  %406 = load i64, i64* %11, align 1, !tbaa !1947
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408
  %409 = inttoptr i64 %407 to i64*
  %410 = load i64, i64* %409
  store i64 %410, i64* %3, align 8, !alias.scope !2013, !noalias !2016
  %411 = tail call i64 @gettimeofday(i64 %404, i64 0), !noalias !2013
  %412 = load i64, i64* %3, align 8
  %413 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 8) to i64*)
  %414 = load i64, i64* %12, align 8
  %415 = add i64 %414, -164
  %416 = trunc i64 %411 to i32
  %417 = inttoptr i64 %415 to i32*
  store i32 %416, i32* %417
  %418 = add i64 %412, 19
  %419 = load i64, i64* %11, align 1, !tbaa !1947
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %418, i64* %421
  %422 = inttoptr i64 %420 to i64*
  %423 = load i64, i64* %422
  store i64 %423, i64* %3, align 8, !alias.scope !2018, !noalias !2021
  %424 = tail call i64 @free(i64 %413), !noalias !2018
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, 17
  %427 = load i64, i64* %11, align 1, !tbaa !1947
  %428 = add i64 %427, -8
  %429 = inttoptr i64 %428 to i64*
  store i64 %426, i64* %429
  %430 = load i64, i64* %9, align 8, !alias.scope !2023, !noalias !2026
  %431 = load i64, i64* %204, align 8, !alias.scope !2023, !noalias !2026
  %432 = load i64, i64* %331, align 8, !alias.scope !2023, !noalias !2026
  %433 = load i64, i64* %332, align 8, !alias.scope !2023, !noalias !2026
  %434 = load i64, i64* %333, align 8, !alias.scope !2023, !noalias !2026
  %435 = inttoptr i64 %427 to i64*
  %436 = load i64, i64* %435
  %437 = add i64 %427, 8
  %438 = inttoptr i64 %437 to i64*
  %439 = load i64, i64* %438
  %440 = add i64 %427, 16
  %441 = inttoptr i64 %440 to i64*
  %442 = load i64, i64* %441
  %443 = add i64 %427, 24
  %444 = inttoptr i64 %443 to i64*
  %445 = load i64, i64* %444
  %446 = add i64 %427, 32
  %447 = inttoptr i64 %446 to i64*
  %448 = load i64, i64* %447
  %449 = add i64 %427, 40
  %450 = inttoptr i64 %449 to i64*
  %451 = load i64, i64* %450
  %452 = add i64 %427, 48
  %453 = inttoptr i64 %452 to i64*
  %454 = load i64, i64* %453
  %455 = add i64 %427, 56
  %456 = inttoptr i64 %455 to i64*
  %457 = load i64, i64* %456
  %458 = add i64 %427, 64
  %459 = inttoptr i64 %458 to i64*
  %460 = load i64, i64* %459
  %461 = add i64 %427, 72
  %462 = inttoptr i64 %461 to i64*
  %463 = load i64, i64* %462
  %464 = inttoptr i64 %428 to i64*
  %465 = load i64, i64* %464
  store i64 %465, i64* %3, align 8, !alias.scope !2023, !noalias !2026
  %466 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 218), i64 %430, i64 %431, i64 %432, i64 %433, i64 %434, i64 %436, i64 %439, i64 %442, i64 %445, i64 %448, i64 %451, i64 %454, i64 %457, i64 %460, i64 %463), !noalias !2023
  %467 = load i64, i64* %12, align 8
  %468 = add i64 %467, -168
  %469 = trunc i64 %466 to i32
  %470 = load i64, i64* %3, align 8
  %471 = inttoptr i64 %468 to i32*
  store i32 %469, i32* %471
  %472 = add i64 %467, -88
  %473 = inttoptr i64 %472 to i64*
  %474 = load i64, i64* %473
  %475 = add i64 %467, -72
  %476 = inttoptr i64 %475 to i64*
  %477 = load i64, i64* %476
  %478 = sub i64 %474, %477
  %479 = add i64 %467, -104
  %480 = inttoptr i64 %479 to i64*
  store i64 %478, i64* %480
  %481 = add i64 %467, -80
  %482 = inttoptr i64 %481 to i64*
  %483 = load i64, i64* %482
  %484 = add i64 %467, -64
  %485 = inttoptr i64 %484 to i64*
  %486 = load i64, i64* %485
  %487 = sub i64 %483, %486
  %488 = add i64 %467, -96
  %489 = inttoptr i64 %488 to i64*
  store i64 %487, i64* %489
  %490 = add i64 %470, 35
  %491 = inttoptr i64 %488 to i64*
  %492 = load i64, i64* %491
  %493 = lshr i64 %492, 63
  %494 = trunc i64 %493 to i8
  %495 = icmp ne i8 %494, 0
  %496 = select i1 %495, i64 6, i64 32
  %497 = add i64 %496, %490
  %498 = icmp eq i8 %494, 0
  %499 = load i64, i64* %12, align 8
  br i1 %498, label %block_400a03, label %block_4009e9

block_400879:                                     ; preds = %block_4007f1, %block_40085e.block_400879_crit_edge
  %500 = phi i64 [ %379, %block_4007f1 ], [ %64, %block_40085e.block_400879_crit_edge ]
  %501 = phi i64 [ %387, %block_4007f1 ], [ %63, %block_40085e.block_400879_crit_edge ]
  %502 = phi %struct.Memory* [ %231, %block_4007f1 ], [ %231, %block_40085e.block_400879_crit_edge ]
  store i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 168), i64* %10, align 8, !tbaa !1947
  %503 = add i64 %501, 17
  %504 = load i64, i64* %11, align 1, !tbaa !1947
  %505 = add i64 %504, -8
  %506 = inttoptr i64 %505 to i64*
  store i64 %503, i64* %506
  %507 = load i64, i64* %9, align 8, !alias.scope !1988, !noalias !1991
  %508 = load i64, i64* %204, align 8, !alias.scope !1988, !noalias !1991
  %509 = load i64, i64* %332, align 8, !alias.scope !1988, !noalias !1991
  %510 = load i64, i64* %333, align 8, !alias.scope !1988, !noalias !1991
  %511 = inttoptr i64 %504 to i64*
  %512 = load i64, i64* %511
  %513 = add i64 %504, 8
  %514 = inttoptr i64 %513 to i64*
  %515 = load i64, i64* %514
  %516 = add i64 %504, 16
  %517 = inttoptr i64 %516 to i64*
  %518 = load i64, i64* %517
  %519 = add i64 %504, 24
  %520 = inttoptr i64 %519 to i64*
  %521 = load i64, i64* %520
  %522 = add i64 %504, 32
  %523 = inttoptr i64 %522 to i64*
  %524 = load i64, i64* %523
  %525 = add i64 %504, 40
  %526 = inttoptr i64 %525 to i64*
  %527 = load i64, i64* %526
  %528 = add i64 %504, 48
  %529 = inttoptr i64 %528 to i64*
  %530 = load i64, i64* %529
  %531 = add i64 %504, 56
  %532 = inttoptr i64 %531 to i64*
  %533 = load i64, i64* %532
  %534 = add i64 %504, 64
  %535 = inttoptr i64 %534 to i64*
  %536 = load i64, i64* %535
  %537 = add i64 %504, 72
  %538 = inttoptr i64 %537 to i64*
  %539 = load i64, i64* %538
  %540 = inttoptr i64 %505 to i64*
  %541 = load i64, i64* %540
  store i64 %541, i64* %3, align 8, !alias.scope !1988, !noalias !1991
  %542 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 168), i64 %507, i64 %508, i64 %500, i64 %509, i64 %510, i64 %512, i64 %515, i64 %518, i64 %521, i64 %524, i64 %527, i64 %530, i64 %533, i64 %536, i64 %539), !noalias !1988
  %543 = load i64, i64* %12, align 8
  %544 = add i64 %543, -4
  %545 = inttoptr i64 %544 to i32*
  store i32 2, i32* %545
  %546 = add i64 %543, -124
  %547 = trunc i64 %542 to i32
  %548 = inttoptr i64 %546 to i32*
  store i32 %547, i32* %548
  br label %block_400a27

block_400957:                                     ; preds = %block_400899, %block_400961
  %549 = phi i64 [ %858, %block_400899 ], [ %93, %block_400961 ]
  %550 = phi i64 [ %852, %block_400899 ], [ %78, %block_400961 ]
  %551 = phi %struct.Memory* [ %231, %block_400899 ], [ %77, %block_400961 ]
  %552 = add i64 %550, -108
  %553 = inttoptr i64 %552 to i32*
  %554 = load i32, i32* %553
  %555 = add i32 %554, -13
  %556 = lshr i32 %555, 31
  %557 = trunc i32 %556 to i8
  %558 = lshr i32 %554, 31
  %559 = xor i32 %556, %558
  %560 = add nuw nsw i32 %559, %558
  %561 = icmp eq i32 %560, 2
  %562 = icmp ne i8 %557, 0
  %563 = xor i1 %562, %561
  %564 = select i1 %563, i64 10, i64 56
  %565 = add i64 %549, %564
  br i1 %563, label %block_400961, label %block_40098f

block_400899:                                     ; preds = %block_40085e
  %566 = add i64 %63, 27
  %567 = load i64, i64* %11, align 1, !tbaa !1947
  %568 = add i64 %567, -8
  %569 = inttoptr i64 %568 to i64*
  store i64 %566, i64* %569
  %570 = load i64, i64* %204, align 8, !alias.scope !2028, !noalias !2031
  %571 = load i64, i64* %331, align 8, !alias.scope !2028, !noalias !2031
  %572 = load i64, i64* %332, align 8, !alias.scope !2028, !noalias !2031
  %573 = load i64, i64* %333, align 8, !alias.scope !2028, !noalias !2031
  %574 = inttoptr i64 %567 to i64*
  %575 = load i64, i64* %574
  %576 = add i64 %567, 8
  %577 = inttoptr i64 %576 to i64*
  %578 = load i64, i64* %577
  %579 = add i64 %567, 16
  %580 = inttoptr i64 %579 to i64*
  %581 = load i64, i64* %580
  %582 = add i64 %567, 24
  %583 = inttoptr i64 %582 to i64*
  %584 = load i64, i64* %583
  %585 = add i64 %567, 32
  %586 = inttoptr i64 %585 to i64*
  %587 = load i64, i64* %586
  %588 = add i64 %567, 40
  %589 = inttoptr i64 %588 to i64*
  %590 = load i64, i64* %589
  %591 = add i64 %567, 48
  %592 = inttoptr i64 %591 to i64*
  %593 = load i64, i64* %592
  %594 = add i64 %567, 56
  %595 = inttoptr i64 %594 to i64*
  %596 = load i64, i64* %595
  %597 = add i64 %567, 64
  %598 = inttoptr i64 %597 to i64*
  %599 = load i64, i64* %598
  %600 = add i64 %567, 72
  %601 = inttoptr i64 %600 to i64*
  %602 = load i64, i64* %601
  %603 = inttoptr i64 %568 to i64*
  %604 = load i64, i64* %603
  store i64 %604, i64* %3, align 8, !alias.scope !2028, !noalias !2031
  %605 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 220), i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 256), i64 %570, i64 %571, i64 %572, i64 %573, i64 %575, i64 %578, i64 %581, i64 %584, i64 %587, i64 %590, i64 %593, i64 %596, i64 %599, i64 %602), !noalias !2028
  %606 = load i64, i64* %3, align 8
  %607 = load i64, i64* %12, align 8
  %608 = add i64 %607, -128
  %609 = trunc i64 %605 to i32
  %610 = inttoptr i64 %608 to i32*
  store i32 %609, i32* %610
  %611 = add i64 %606, 25
  %612 = load i64, i64* %11, align 1, !tbaa !1947
  %613 = add i64 %612, -8
  %614 = inttoptr i64 %613 to i64*
  store i64 %611, i64* %614
  %615 = load i64, i64* %204, align 8, !alias.scope !2033, !noalias !2036
  %616 = load i64, i64* %331, align 8, !alias.scope !2033, !noalias !2036
  %617 = load i64, i64* %332, align 8, !alias.scope !2033, !noalias !2036
  %618 = load i64, i64* %333, align 8, !alias.scope !2033, !noalias !2036
  %619 = inttoptr i64 %612 to i64*
  %620 = load i64, i64* %619
  %621 = add i64 %612, 8
  %622 = inttoptr i64 %621 to i64*
  %623 = load i64, i64* %622
  %624 = add i64 %612, 16
  %625 = inttoptr i64 %624 to i64*
  %626 = load i64, i64* %625
  %627 = add i64 %612, 24
  %628 = inttoptr i64 %627 to i64*
  %629 = load i64, i64* %628
  %630 = add i64 %612, 32
  %631 = inttoptr i64 %630 to i64*
  %632 = load i64, i64* %631
  %633 = add i64 %612, 40
  %634 = inttoptr i64 %633 to i64*
  %635 = load i64, i64* %634
  %636 = add i64 %612, 48
  %637 = inttoptr i64 %636 to i64*
  %638 = load i64, i64* %637
  %639 = add i64 %612, 56
  %640 = inttoptr i64 %639 to i64*
  %641 = load i64, i64* %640
  %642 = add i64 %612, 64
  %643 = inttoptr i64 %642 to i64*
  %644 = load i64, i64* %643
  %645 = add i64 %612, 72
  %646 = inttoptr i64 %645 to i64*
  %647 = load i64, i64* %646
  %648 = inttoptr i64 %613 to i64*
  %649 = load i64, i64* %648
  store i64 %649, i64* %3, align 8, !alias.scope !2033, !noalias !2036
  %650 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 263), i64 15, i64 %615, i64 %616, i64 %617, i64 %618, i64 %620, i64 %623, i64 %626, i64 %629, i64 %632, i64 %635, i64 %638, i64 %641, i64 %644, i64 %647), !noalias !2033
  %651 = load i64, i64* %3, align 8
  %652 = load i64, i64* %12, align 8
  %653 = add i64 %652, -20
  %654 = inttoptr i64 %653 to i32*
  %655 = load i32, i32* %654
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %9, align 8, !tbaa !1947
  store i64 %656, i64* %8, align 8, !tbaa !1947
  %657 = add i64 %652, -132
  %658 = trunc i64 %650 to i32
  %659 = inttoptr i64 %657 to i32*
  store i32 %658, i32* %659
  %660 = add i64 %651, 29
  %661 = load i64, i64* %11, align 1, !tbaa !1947
  %662 = add i64 %661, -8
  %663 = inttoptr i64 %662 to i64*
  store i64 %660, i64* %663
  %664 = load i64, i64* %331, align 8, !alias.scope !2038, !noalias !2041
  %665 = load i64, i64* %332, align 8, !alias.scope !2038, !noalias !2041
  %666 = load i64, i64* %333, align 8, !alias.scope !2038, !noalias !2041
  %667 = inttoptr i64 %661 to i64*
  %668 = load i64, i64* %667
  %669 = add i64 %661, 8
  %670 = inttoptr i64 %669 to i64*
  %671 = load i64, i64* %670
  %672 = add i64 %661, 16
  %673 = inttoptr i64 %672 to i64*
  %674 = load i64, i64* %673
  %675 = add i64 %661, 24
  %676 = inttoptr i64 %675 to i64*
  %677 = load i64, i64* %676
  %678 = add i64 %661, 32
  %679 = inttoptr i64 %678 to i64*
  %680 = load i64, i64* %679
  %681 = add i64 %661, 40
  %682 = inttoptr i64 %681 to i64*
  %683 = load i64, i64* %682
  %684 = add i64 %661, 48
  %685 = inttoptr i64 %684 to i64*
  %686 = load i64, i64* %685
  %687 = add i64 %661, 56
  %688 = inttoptr i64 %687 to i64*
  %689 = load i64, i64* %688
  %690 = add i64 %661, 64
  %691 = inttoptr i64 %690 to i64*
  %692 = load i64, i64* %691
  %693 = add i64 %661, 72
  %694 = inttoptr i64 %693 to i64*
  %695 = load i64, i64* %694
  %696 = inttoptr i64 %662 to i64*
  %697 = load i64, i64* %696
  store i64 %697, i64* %3, align 8, !alias.scope !2038, !noalias !2041
  %698 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 295), i64 %656, i64 %656, i64 %664, i64 %665, i64 %666, i64 %668, i64 %671, i64 %674, i64 %677, i64 %680, i64 %683, i64 %686, i64 %689, i64 %692, i64 %695), !noalias !2038
  %699 = load i64, i64* %3, align 8
  %700 = load i64, i64* %12, align 8
  %701 = add i64 %700, -136
  %702 = trunc i64 %698 to i32
  %703 = inttoptr i64 %701 to i32*
  store i32 %702, i32* %703
  %704 = add i64 %699, 23
  %705 = load i64, i64* %11, align 1, !tbaa !1947
  %706 = add i64 %705, -8
  %707 = inttoptr i64 %706 to i64*
  store i64 %704, i64* %707
  %708 = load i64, i64* %9, align 8, !alias.scope !2043, !noalias !2046
  %709 = load i64, i64* %204, align 8, !alias.scope !2043, !noalias !2046
  %710 = load i64, i64* %331, align 8, !alias.scope !2043, !noalias !2046
  %711 = load i64, i64* %332, align 8, !alias.scope !2043, !noalias !2046
  %712 = load i64, i64* %333, align 8, !alias.scope !2043, !noalias !2046
  %713 = inttoptr i64 %705 to i64*
  %714 = load i64, i64* %713
  %715 = add i64 %705, 8
  %716 = inttoptr i64 %715 to i64*
  %717 = load i64, i64* %716
  %718 = add i64 %705, 16
  %719 = inttoptr i64 %718 to i64*
  %720 = load i64, i64* %719
  %721 = add i64 %705, 24
  %722 = inttoptr i64 %721 to i64*
  %723 = load i64, i64* %722
  %724 = add i64 %705, 32
  %725 = inttoptr i64 %724 to i64*
  %726 = load i64, i64* %725
  %727 = add i64 %705, 40
  %728 = inttoptr i64 %727 to i64*
  %729 = load i64, i64* %728
  %730 = add i64 %705, 48
  %731 = inttoptr i64 %730 to i64*
  %732 = load i64, i64* %731
  %733 = add i64 %705, 56
  %734 = inttoptr i64 %733 to i64*
  %735 = load i64, i64* %734
  %736 = add i64 %705, 64
  %737 = inttoptr i64 %736 to i64*
  %738 = load i64, i64* %737
  %739 = add i64 %705, 72
  %740 = inttoptr i64 %739 to i64*
  %741 = load i64, i64* %740
  %742 = inttoptr i64 %706 to i64*
  %743 = load i64, i64* %742
  store i64 %743, i64* %3, align 8, !alias.scope !2043, !noalias !2046
  %744 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 316), i64 %708, i64 %709, i64 %710, i64 %711, i64 %712, i64 %714, i64 %717, i64 %720, i64 %723, i64 %726, i64 %729, i64 %732, i64 %735, i64 %738, i64 %741), !noalias !2043
  %745 = load i64, i64* %3, align 8
  %746 = load i64, i64* %12, align 8
  %747 = add i64 %746, -140
  %748 = trunc i64 %744 to i32
  %749 = inttoptr i64 %747 to i32*
  store i32 %748, i32* %749
  %750 = add i64 %745, 23
  %751 = load i64, i64* %11, align 1, !tbaa !1947
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753
  %754 = load i64, i64* %9, align 8, !alias.scope !2048, !noalias !2051
  %755 = load i64, i64* %204, align 8, !alias.scope !2048, !noalias !2051
  %756 = load i64, i64* %331, align 8, !alias.scope !2048, !noalias !2051
  %757 = load i64, i64* %332, align 8, !alias.scope !2048, !noalias !2051
  %758 = load i64, i64* %333, align 8, !alias.scope !2048, !noalias !2051
  %759 = inttoptr i64 %751 to i64*
  %760 = load i64, i64* %759
  %761 = add i64 %751, 8
  %762 = inttoptr i64 %761 to i64*
  %763 = load i64, i64* %762
  %764 = add i64 %751, 16
  %765 = inttoptr i64 %764 to i64*
  %766 = load i64, i64* %765
  %767 = add i64 %751, 24
  %768 = inttoptr i64 %767 to i64*
  %769 = load i64, i64* %768
  %770 = add i64 %751, 32
  %771 = inttoptr i64 %770 to i64*
  %772 = load i64, i64* %771
  %773 = add i64 %751, 40
  %774 = inttoptr i64 %773 to i64*
  %775 = load i64, i64* %774
  %776 = add i64 %751, 48
  %777 = inttoptr i64 %776 to i64*
  %778 = load i64, i64* %777
  %779 = add i64 %751, 56
  %780 = inttoptr i64 %779 to i64*
  %781 = load i64, i64* %780
  %782 = add i64 %751, 64
  %783 = inttoptr i64 %782 to i64*
  %784 = load i64, i64* %783
  %785 = add i64 %751, 72
  %786 = inttoptr i64 %785 to i64*
  %787 = load i64, i64* %786
  %788 = inttoptr i64 %752 to i64*
  %789 = load i64, i64* %788
  store i64 %789, i64* %3, align 8, !alias.scope !2048, !noalias !2051
  %790 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 359), i64 %754, i64 %755, i64 %756, i64 %757, i64 %758, i64 %760, i64 %763, i64 %766, i64 %769, i64 %772, i64 %775, i64 %778, i64 %781, i64 %784, i64 %787), !noalias !2048
  %791 = load i64, i64* %3, align 8
  %792 = load i64, i64* %12, align 8
  %793 = add i64 %792, -144
  %794 = trunc i64 %790 to i32
  %795 = inttoptr i64 %793 to i32*
  store i32 %794, i32* %795
  %796 = add i64 %791, 23
  %797 = load i64, i64* %11, align 1, !tbaa !1947
  %798 = add i64 %797, -8
  %799 = inttoptr i64 %798 to i64*
  store i64 %796, i64* %799
  %800 = load i64, i64* %9, align 8, !alias.scope !2053, !noalias !2056
  %801 = load i64, i64* %204, align 8, !alias.scope !2053, !noalias !2056
  %802 = load i64, i64* %331, align 8, !alias.scope !2053, !noalias !2056
  %803 = load i64, i64* %332, align 8, !alias.scope !2053, !noalias !2056
  %804 = load i64, i64* %333, align 8, !alias.scope !2053, !noalias !2056
  %805 = inttoptr i64 %797 to i64*
  %806 = load i64, i64* %805
  %807 = add i64 %797, 8
  %808 = inttoptr i64 %807 to i64*
  %809 = load i64, i64* %808
  %810 = add i64 %797, 16
  %811 = inttoptr i64 %810 to i64*
  %812 = load i64, i64* %811
  %813 = add i64 %797, 24
  %814 = inttoptr i64 %813 to i64*
  %815 = load i64, i64* %814
  %816 = add i64 %797, 32
  %817 = inttoptr i64 %816 to i64*
  %818 = load i64, i64* %817
  %819 = add i64 %797, 40
  %820 = inttoptr i64 %819 to i64*
  %821 = load i64, i64* %820
  %822 = add i64 %797, 48
  %823 = inttoptr i64 %822 to i64*
  %824 = load i64, i64* %823
  %825 = add i64 %797, 56
  %826 = inttoptr i64 %825 to i64*
  %827 = load i64, i64* %826
  %828 = add i64 %797, 64
  %829 = inttoptr i64 %828 to i64*
  %830 = load i64, i64* %829
  %831 = add i64 %797, 72
  %832 = inttoptr i64 %831 to i64*
  %833 = load i64, i64* %832
  %834 = inttoptr i64 %798 to i64*
  %835 = load i64, i64* %834
  store i64 %835, i64* %3, align 8, !alias.scope !2053, !noalias !2056
  %836 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 411), i64 %800, i64 %801, i64 %802, i64 %803, i64 %804, i64 %806, i64 %809, i64 %812, i64 %815, i64 %818, i64 %821, i64 %824, i64 %827, i64 %830, i64 %833), !noalias !2053
  %837 = load i64, i64* %12, align 8
  %838 = add i64 %837, -72
  %839 = load i64, i64* %3, align 8
  store i64 0, i64* %8, align 8, !tbaa !1947
  %840 = add i64 %837, -48
  %841 = inttoptr i64 %840 to i64*
  store i64 1, i64* %841
  %842 = add i64 %837, -148
  %843 = trunc i64 %836 to i32
  %844 = inttoptr i64 %842 to i32*
  store i32 %843, i32* %844
  %845 = add i64 %839, 27
  %846 = load i64, i64* %11, align 1, !tbaa !1947
  %847 = add i64 %846, -8
  %848 = inttoptr i64 %847 to i64*
  store i64 %845, i64* %848
  %849 = inttoptr i64 %847 to i64*
  %850 = load i64, i64* %849
  store i64 %850, i64* %3, align 8, !alias.scope !2058, !noalias !2061
  %851 = tail call i64 @gettimeofday(i64 %838, i64 0), !noalias !2058
  %852 = load i64, i64* %12, align 8
  %853 = add i64 %852, -108
  %854 = load i64, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  store i32 0, i32* %855
  %856 = add i64 %852, -152
  %857 = trunc i64 %851 to i32
  %858 = add i64 %854, 13
  %859 = inttoptr i64 %856 to i32*
  store i32 %857, i32* %859
  %860 = bitcast %union.VectorReg* %13 to double*
  br label %block_400957
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_402550_ddot_r(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_402550:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %12 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* %14, align 1, !tbaa !1947
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21
  store i64 %20, i64* %14, align 8, !tbaa !1947
  store i64 %20, i64* %15, align 8, !tbaa !1947
  %22 = bitcast [32 x %union.VectorReg]* %16 to i8*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast [32 x %union.VectorReg]* %16 to i32*
  store i32 0, i32* %24, align 1, !tbaa !1951
  %25 = getelementptr inbounds i8, i8* %22, i64 4
  %26 = bitcast i8* %25 to i32*
  store i32 0, i32* %26, align 1, !tbaa !1951
  %27 = bitcast i64* %23 to i32*
  store i32 0, i32* %27, align 1, !tbaa !1951
  %28 = getelementptr inbounds i8, i8* %22, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 0, i32* %29, align 1, !tbaa !1951
  %30 = add i64 %19, -20
  %31 = load i32, i32* %7, align 4
  %32 = inttoptr i64 %30 to i32*
  store i32 %31, i32* %32
  %33 = add i64 %19, -32
  %34 = load i64, i64* %13, align 8
  %35 = inttoptr i64 %33 to i64*
  store i64 %34, i64* %35
  %36 = add i64 %19, -36
  %37 = load i32, i32* %5, align 4
  %38 = inttoptr i64 %36 to i32*
  store i32 %37, i32* %38
  %39 = add i64 %19, -48
  %40 = load i64, i64* %11, align 8
  %41 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %41
  %42 = add i64 %19, -52
  %43 = load i32, i32* %9, align 4
  %44 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %44
  %45 = add i64 %19, -64
  %46 = bitcast [32 x %union.VectorReg]* %16 to double*
  %47 = load double, double* %46, align 1
  %48 = inttoptr i64 %45 to double*
  store double %47, double* %48
  %49 = inttoptr i64 %30 to i32*
  %50 = load i32, i32* %49
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %51, align 1, !tbaa !1953
  %52 = and i32 %50, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #6
  %54 = and i32 %53, 1
  %55 = xor i32 %54, 1
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %56, i8* %57, align 1, !tbaa !1966
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !1967
  %59 = icmp eq i32 %50, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1, !tbaa !1968
  %62 = lshr i32 %50, 31
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1, !tbaa !1969
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %65, align 1, !tbaa !1970
  %66 = xor i1 %59, true
  %67 = icmp eq i8 %63, 0
  %68 = and i1 %67, %66
  %69 = select i1 %68, i64 53, i64 40
  %70 = add i64 %69, %1
  br i1 %68, label %block_402585, label %block_402578

block_402599:                                     ; preds = %block_402585, %block_40258f
  %71 = phi i64 [ %282, %block_402585 ], [ %130, %block_40258f ]
  %72 = add i64 %19, -72
  %73 = inttoptr i64 %72 to i32*
  store i32 0, i32* %73
  %74 = add i64 %19, -76
  %75 = inttoptr i64 %74 to i32*
  store i32 0, i32* %75
  %76 = add i64 %71, 18
  %77 = inttoptr i64 %36 to i32*
  %78 = load i32, i32* %77
  %79 = lshr i32 %78, 31
  %80 = trunc i32 %79 to i8
  %81 = icmp ne i8 %80, 0
  %82 = select i1 %81, i64 6, i64 21
  %83 = add i64 %82, %76
  %84 = icmp eq i8 %80, 0
  br i1 %84, label %block_4025c0, label %block_4025b1

block_402578:                                     ; preds = %block_402550
  store i32 0, i32* %24, align 1, !tbaa !1951
  store i32 0, i32* %26, align 1, !tbaa !1951
  store i32 0, i32* %27, align 1, !tbaa !1951
  store i32 0, i32* %29, align 1, !tbaa !1951
  %85 = add i64 %19, -16
  %86 = load double, double* %46, align 1
  %87 = inttoptr i64 %85 to double*
  store double %86, double* %87
  %88 = bitcast i64* %23 to double*
  br label %block_402696

block_4025b1:                                     ; preds = %block_402599
  %89 = inttoptr i64 %30 to i32*
  %90 = load i32, i32* %89
  %91 = sub i32 1, %90
  %92 = sext i32 %91 to i64
  %93 = sext i32 %78 to i64
  %94 = mul nsw i64 %93, %92
  %95 = load i64, i64* %15, align 8
  %96 = add i64 %95, -64
  %97 = trunc i64 %94 to i32
  %98 = add i64 %83, 15
  %99 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %99
  br label %block_4025c0

block_402634:                                     ; preds = %block_4025e0
  %100 = phi double [ %309, %block_4025e0 ]
  %101 = phi i1 [ %303, %block_4025e0 ]
  %102 = phi i8 [ %297, %block_4025e0 ]
  %103 = phi i32 [ %295, %block_4025e0 ]
  %104 = phi i32 [ %294, %block_4025e0 ]
  %105 = phi i32 [ %292, %block_4025e0 ]
  %106 = phi %struct.Memory* [ %290, %block_4025e0 ]
  %107 = zext i32 %105 to i64
  store i64 %107, i64* %10, align 8, !tbaa !1947
  store double 0.000000e+00, double* %176, align 1, !tbaa !1971
  %108 = icmp ult i32 %105, %104
  %109 = zext i1 %108 to i8
  %110 = and i32 %103, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #6
  %112 = and i32 %111, 1
  %113 = xor i32 %112, 1
  %114 = trunc i32 %113 to i8
  %115 = xor i32 %104, %105
  %116 = xor i32 %115, %103
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = icmp eq i32 %105, %104
  %121 = zext i1 %120 to i8
  %122 = zext i1 %101 to i8
  store i8 %109, i8* %51, align 1, !tbaa !1953
  store i8 %114, i8* %57, align 1, !tbaa !1966
  store i8 %119, i8* %58, align 1, !tbaa !1967
  store i8 %121, i8* %61, align 1, !tbaa !1968
  store i8 %102, i8* %64, align 1, !tbaa !1969
  store i8 %122, i8* %65, align 1, !tbaa !1970
  store double %100, double* %46, align 1
  %123 = add i64 %169, -8
  %124 = inttoptr i64 %123 to double*
  store double %100, double* %124
  %125 = load i64, i64* %14, align 1, !tbaa !1947
  br label %block_402696

block_40258f:                                     ; preds = %block_402585
  %126 = inttoptr i64 %42 to i32*
  %127 = load i32, i32* %126
  %128 = icmp eq i32 %127, 1
  %129 = select i1 %128, i64 180, i64 10
  %130 = add i64 %282, %129
  br i1 %128, label %block_402643, label %block_402599

block_40268c:                                     ; preds = %block_40264a
  %131 = phi double [ %257, %block_40264a ]
  %132 = phi i1 [ %251, %block_40264a ]
  %133 = phi i8 [ %245, %block_40264a ]
  %134 = phi i32 [ %243, %block_40264a ]
  %135 = phi i32 [ %242, %block_40264a ]
  %136 = phi i32 [ %240, %block_40264a ]
  %137 = phi %struct.Memory* [ %238, %block_40264a ]
  %138 = zext i32 %136 to i64
  store i64 %138, i64* %10, align 8, !tbaa !1947
  store double 0.000000e+00, double* %286, align 1, !tbaa !1971
  %139 = icmp ult i32 %136, %135
  %140 = zext i1 %139 to i8
  %141 = and i32 %134, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #6
  %143 = and i32 %142, 1
  %144 = xor i32 %143, 1
  %145 = trunc i32 %144 to i8
  %146 = xor i32 %135, %136
  %147 = xor i32 %146, %134
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = icmp eq i32 %136, %135
  %152 = zext i1 %151 to i8
  %153 = zext i1 %132 to i8
  store i8 %140, i8* %51, align 1, !tbaa !1953
  store i8 %145, i8* %57, align 1, !tbaa !1966
  store i8 %150, i8* %58, align 1, !tbaa !1967
  store i8 %152, i8* %61, align 1, !tbaa !1968
  store i8 %133, i8* %64, align 1, !tbaa !1969
  store i8 %153, i8* %65, align 1, !tbaa !1970
  store double %131, double* %46, align 1
  %154 = add i64 %19, -16
  %155 = inttoptr i64 %154 to double*
  store double %131, double* %155
  br label %block_402696

block_4025ca:                                     ; preds = %block_4025c0
  %156 = add i64 %311, -12
  %157 = inttoptr i64 %156 to i32*
  %158 = load i32, i32* %157
  %159 = sub i32 1, %158
  %160 = sext i32 %159 to i64
  %161 = sext i32 %316 to i64
  %162 = mul nsw i64 %161, %160
  %163 = load i64, i64* %15, align 8
  %164 = add i64 %163, -68
  %165 = trunc i64 %162 to i32
  %166 = add i64 %321, 15
  %167 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %167
  br label %block_4025d9

block_4025d9:                                     ; preds = %block_4025c0, %block_4025ca
  %168 = phi i64 [ %321, %block_4025c0 ], [ %166, %block_4025ca ]
  %169 = phi i64 [ %311, %block_4025c0 ], [ %163, %block_4025ca ]
  %170 = phi %struct.Memory* [ %312, %block_4025c0 ], [ %312, %block_4025ca ]
  %171 = add i64 %169, -60
  %172 = add i64 %168, 7
  %173 = inttoptr i64 %171 to i32*
  store i32 0, i32* %173
  %174 = add i64 %169, -12
  %175 = add i64 %169, -56
  %176 = bitcast i64* %23 to double*
  %177 = add i64 %169, -24
  %178 = add i64 %169, -64
  %179 = bitcast %union.VectorReg* %17 to double*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %181 = add i64 %169, -40
  %182 = add i64 %169, -68
  %183 = add i64 %169, -28
  %184 = add i64 %169, -44
  br label %block_4025e0

block_4025ec:                                     ; preds = %block_4025e0
  %185 = inttoptr i64 %177 to i64*
  %186 = load i64, i64* %185
  %187 = inttoptr i64 %178 to i32*
  %188 = load i32, i32* %187
  %189 = sext i32 %188 to i64
  %190 = shl nsw i64 %189, 3
  %191 = add i64 %190, %186
  %192 = inttoptr i64 %191 to double*
  %193 = load double, double* %192
  %194 = inttoptr i64 %181 to i64*
  %195 = load i64, i64* %194
  %196 = inttoptr i64 %182 to i32*
  %197 = load i32, i32* %196
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %11, align 8, !tbaa !1947
  %199 = shl nsw i64 %198, 3
  %200 = add i64 %199, %195
  %201 = inttoptr i64 %200 to double*
  %202 = load double, double* %201
  %203 = fmul double %193, %202
  store double %203, double* %179, align 1, !tbaa !1971
  store i64 0, i64* %180, align 1, !tbaa !1971
  %204 = fadd double %309, %203
  %205 = inttoptr i64 %175 to double*
  store double %204, double* %205
  %206 = inttoptr i64 %178 to i32*
  %207 = load i32, i32* %206
  %208 = inttoptr i64 %183 to i32*
  %209 = load i32, i32* %208
  %210 = add i32 %209, %207
  %211 = inttoptr i64 %178 to i32*
  store i32 %210, i32* %211
  %212 = inttoptr i64 %182 to i32*
  %213 = load i32, i32* %212
  %214 = inttoptr i64 %184 to i32*
  %215 = load i32, i32* %214
  %216 = add i32 %215, %213
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %12, align 8, !tbaa !1947
  %218 = inttoptr i64 %182 to i32*
  store i32 %216, i32* %218
  %219 = inttoptr i64 %171 to i32*
  %220 = load i32, i32* %219
  %221 = add i32 %220, 1
  %222 = inttoptr i64 %171 to i32*
  store i32 %221, i32* %222
  %223 = add i64 %307, -12
  br label %block_4025e0

block_402696:                                     ; preds = %block_40268c, %block_402634, %block_402578
  %224 = phi double* [ %286, %block_40268c ], [ %176, %block_402634 ], [ %88, %block_402578 ]
  %225 = phi i64 [ %20, %block_40268c ], [ %125, %block_402634 ], [ %20, %block_402578 ]
  %226 = phi i64 [ %20, %block_40268c ], [ %169, %block_402634 ], [ %20, %block_402578 ]
  %227 = phi %struct.Memory* [ %137, %block_40268c ], [ %106, %block_402634 ], [ %2, %block_402578 ]
  %228 = add i64 %226, -8
  %229 = inttoptr i64 %228 to double*
  %230 = load double, double* %229
  store double %230, double* %46, align 1, !tbaa !1971
  store double 0.000000e+00, double* %224, align 1, !tbaa !1971
  %231 = add i64 %225, 8
  %232 = inttoptr i64 %225 to i64*
  %233 = load i64, i64* %232
  store i64 %233, i64* %15, align 8, !tbaa !1947
  %234 = inttoptr i64 %231 to i64*
  %235 = load i64, i64* %234
  store i64 %235, i64* %3, align 8, !tbaa !1947
  %236 = add i64 %225, 16
  store i64 %236, i64* %14, align 8, !tbaa !1947
  ret %struct.Memory* %227

block_40264a:                                     ; preds = %block_402643, %block_402656
  %237 = phi i64 [ %284, %block_402643 ], [ %277, %block_402656 ]
  %238 = phi %struct.Memory* [ %2, %block_402643 ], [ %238, %block_402656 ]
  %239 = inttoptr i64 %283 to i32*
  %240 = load i32, i32* %239
  %241 = inttoptr i64 %30 to i32*
  %242 = load i32, i32* %241
  %243 = sub i32 %240, %242
  %244 = lshr i32 %243, 31
  %245 = trunc i32 %244 to i8
  %246 = lshr i32 %240, 31
  %247 = lshr i32 %242, 31
  %248 = xor i32 %247, %246
  %249 = xor i32 %244, %246
  %250 = add nuw nsw i32 %249, %248
  %251 = icmp eq i32 %250, 2
  %252 = icmp ne i8 %245, 0
  %253 = xor i1 %252, %251
  %254 = select i1 %253, i64 12, i64 66
  %255 = add i64 %237, %254
  %256 = inttoptr i64 %45 to double*
  %257 = load double, double* %256
  br i1 %253, label %block_402656, label %block_40268c

block_402656:                                     ; preds = %block_40264a
  %258 = inttoptr i64 %33 to i64*
  %259 = load i64, i64* %258
  %260 = sext i32 %240 to i64
  %261 = shl nsw i64 %260, 3
  %262 = add i64 %261, %259
  %263 = inttoptr i64 %262 to double*
  %264 = load double, double* %263
  %265 = inttoptr i64 %39 to i64*
  %266 = load i64, i64* %265
  store i64 %260, i64* %11, align 8, !tbaa !1947
  %267 = add i64 %261, %266
  %268 = inttoptr i64 %267 to double*
  %269 = load double, double* %268
  %270 = fmul double %264, %269
  store double %270, double* %287, align 1, !tbaa !1971
  store i64 0, i64* %288, align 1, !tbaa !1971
  %271 = fadd double %257, %270
  %272 = inttoptr i64 %45 to double*
  store double %271, double* %272
  %273 = inttoptr i64 %283 to i32*
  %274 = load i32, i32* %273
  %275 = add i32 %274, 1
  %276 = inttoptr i64 %283 to i32*
  store i32 %275, i32* %276
  %277 = add i64 %255, -12
  br label %block_40264a

block_402585:                                     ; preds = %block_402550
  %278 = inttoptr i64 %36 to i32*
  %279 = load i32, i32* %278
  %280 = icmp eq i32 %279, 1
  %281 = select i1 %280, i64 10, i64 20
  %282 = add i64 %70, %281
  br i1 %280, label %block_40258f, label %block_402599

block_402643:                                     ; preds = %block_40258f
  %283 = add i64 %19, -68
  %284 = add i64 %130, 7
  %285 = inttoptr i64 %283 to i32*
  store i32 0, i32* %285
  %286 = bitcast i64* %23 to double*
  %287 = bitcast %union.VectorReg* %17 to double*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  br label %block_40264a

block_4025e0:                                     ; preds = %block_4025ec, %block_4025d9
  %289 = phi i64 [ %172, %block_4025d9 ], [ %223, %block_4025ec ]
  %290 = phi %struct.Memory* [ %170, %block_4025d9 ], [ %290, %block_4025ec ]
  %291 = inttoptr i64 %171 to i32*
  %292 = load i32, i32* %291
  %293 = inttoptr i64 %174 to i32*
  %294 = load i32, i32* %293
  %295 = sub i32 %292, %294
  %296 = lshr i32 %295, 31
  %297 = trunc i32 %296 to i8
  %298 = lshr i32 %292, 31
  %299 = lshr i32 %294, 31
  %300 = xor i32 %299, %298
  %301 = xor i32 %296, %298
  %302 = add nuw nsw i32 %301, %300
  %303 = icmp eq i32 %302, 2
  %304 = icmp ne i8 %297, 0
  %305 = xor i1 %304, %303
  %306 = select i1 %305, i64 12, i64 84
  %307 = add i64 %289, %306
  %308 = inttoptr i64 %175 to double*
  %309 = load double, double* %308
  br i1 %305, label %block_4025ec, label %block_402634

block_4025c0:                                     ; preds = %block_4025b1, %block_402599
  %310 = phi i64 [ %83, %block_402599 ], [ %98, %block_4025b1 ]
  %311 = phi i64 [ %20, %block_402599 ], [ %95, %block_4025b1 ]
  %312 = phi %struct.Memory* [ %2, %block_402599 ], [ %2, %block_4025b1 ]
  %313 = add i64 %311, -44
  %314 = add i64 %310, 4
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315
  %317 = lshr i32 %316, 31
  %318 = trunc i32 %317 to i8
  %319 = icmp ne i8 %318, 0
  %320 = select i1 %319, i64 6, i64 21
  %321 = add i64 %320, %314
  %322 = icmp eq i8 %318, 0
  br i1 %322, label %block_4025d9, label %block_4025ca
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a40_linpack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {
block_400a40:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %6 = bitcast %union.anon* %5 to i32*
  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* %12, align 1, !tbaa !1947
  %22 = add i64 %21, -8
  %23 = inttoptr i64 %22 to i64*
  store i64 %20, i64* %23
  store i64 %22, i64* %13, align 8, !tbaa !1947
  %24 = add i64 %21, -184
  store i64 %24, i64* %12, align 8, !tbaa !1947
  %25 = icmp ult i64 %22, 176
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1, !tbaa !1953
  %28 = trunc i64 %24 to i32
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #6
  %31 = and i32 %30, 1
  %32 = xor i32 %31, 1
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1, !tbaa !1966
  %35 = xor i64 %22, 16
  %36 = xor i64 %35, %24
  %37 = lshr i64 %36, 4
  %38 = trunc i64 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1, !tbaa !1967
  %41 = icmp eq i64 %22, 176
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1, !tbaa !1968
  %44 = lshr i64 %24, 63
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1, !tbaa !1969
  %47 = lshr i64 %22, 63
  %48 = xor i64 %44, %47
  %49 = add nuw nsw i64 %48, %47
  %50 = icmp eq i64 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1, !tbaa !1970
  %53 = bitcast [32 x %union.VectorReg]* %15 to i8*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %55 = bitcast [32 x %union.VectorReg]* %15 to i32*
  store i32 0, i32* %55, align 1, !tbaa !1951
  %56 = getelementptr inbounds i8, i8* %53, i64 4
  %57 = bitcast i8* %56 to i32*
  store i32 0, i32* %57, align 1, !tbaa !1951
  %58 = bitcast i64* %54 to i32*
  store i32 0, i32* %58, align 1, !tbaa !1951
  %59 = getelementptr inbounds i8, i8* %53, i64 12
  %60 = bitcast i8* %59 to i32*
  store i32 0, i32* %60, align 1, !tbaa !1951
  %61 = bitcast %union.VectorReg* %16 to i8*
  %62 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 8) to double*)
  %63 = bitcast %union.VectorReg* %16 to double*
  store double %62, double* %63, align 1, !tbaa !1971
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %65 = bitcast i64* %64 to double*
  store double 0.000000e+00, double* %65, align 1, !tbaa !1971
  %66 = bitcast %union.VectorReg* %17 to i8*
  %67 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 16) to double*)
  %68 = bitcast %union.VectorReg* %17 to double*
  store double %67, double* %68, align 1, !tbaa !1971
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %70 = bitcast i64* %69 to double*
  store double 0.000000e+00, double* %70, align 1, !tbaa !1971
  %71 = add i64 %21, -24
  %72 = load i64, i64* %11, align 8
  %73 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %73
  %74 = add i64 %21, -28
  %75 = load i32, i32* %6, align 4
  %76 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %76
  %77 = inttoptr i64 %74 to i32*
  %78 = load i32, i32* %77
  %79 = add i64 %21, -132
  %80 = inttoptr i64 %79 to i32*
  store i32 %78, i32* %80
  %81 = inttoptr i64 %74 to i32*
  %82 = load i32, i32* %81
  %83 = add i64 %21, -156
  %84 = inttoptr i64 %83 to i32*
  store i32 2, i32* %84
  %85 = zext i32 %82 to i64
  store i64 %85, i64* %7, align 8, !tbaa !1947
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %87 = sext i32 %82 to i64
  %88 = lshr i64 %87, 32
  store i64 %88, i64* %86, align 8, !tbaa !1947
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, -148
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %91
  %93 = zext i32 %92 to i64
  store i64 %93, i64* %10, align 8, !tbaa !1947
  %94 = add i64 %1, 68
  store i64 %94, i64* %3, align 8
  %95 = zext i32 %82 to i64
  %96 = sext i32 %92 to i64
  %97 = shl nuw i64 %88, 32
  %98 = or i64 %97, %95
  %99 = sdiv i64 %98, %96
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %113, label %103

; <label>:103                                     ; preds = %block_400a40
  %104 = bitcast %union.anon* %4 to i32*
  %105 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %94, %struct.Memory* %2) #11
  %106 = load i64, i64* %13, align 8
  %107 = load i32, i32* %104, align 4
  %108 = load i64, i64* %3, align 8
  %109 = bitcast %union.VectorReg* %16 to <2 x float>*
  %110 = load <2 x float>, <2 x float>* %109, align 1
  %111 = bitcast i64* %64 to <2 x float>*
  %112 = load <2 x float>, <2 x float>* %111, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:113                                     ; preds = %block_400a40
  %114 = bitcast double %62 to i64
  %115 = bitcast i64 %114 to <2 x float>
  %116 = srem i64 %98, %96
  %117 = and i64 %116, 4294967295
  store i64 %117, i64* %9, align 8, !tbaa !1947
  %118 = trunc i64 %99 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %113, %103
  %119 = phi <2 x float> [ %112, %103 ], [ zeroinitializer, %113 ]
  %120 = phi <2 x float> [ %110, %103 ], [ %115, %113 ]
  %121 = phi i64 [ %108, %103 ], [ %94, %113 ]
  %122 = phi i32 [ %107, %103 ], [ %118, %113 ]
  %123 = phi i64 [ %106, %103 ], [ %89, %113 ]
  %124 = phi %struct.Memory* [ %105, %103 ], [ %2, %113 ]
  %125 = add i64 %123, -116
  %126 = inttoptr i64 %125 to i32*
  store i32 %122, i32* %126
  %127 = add i64 %123, -20
  %128 = inttoptr i64 %127 to i32*
  %129 = load i32, i32* %128
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, %130
  %132 = add i64 %123, -144
  %133 = inttoptr i64 %132 to i64*
  store i64 %131, i64* %133
  %134 = inttoptr i64 %125 to i32*
  %135 = load i32, i32* %134
  %136 = sitofp i32 %135 to double
  %137 = bitcast %union.VectorReg* %18 to double*
  %138 = bitcast %union.VectorReg* %19 to i8*
  %139 = extractelement <2 x float> %120, i32 0
  %140 = bitcast %union.VectorReg* %19 to float*
  store float %139, float* %140, align 1, !tbaa !2063
  %141 = extractelement <2 x float> %120, i32 1
  %142 = getelementptr inbounds i8, i8* %138, i64 4
  %143 = bitcast i8* %142 to float*
  store float %141, float* %143, align 1, !tbaa !2063
  %144 = extractelement <2 x float> %119, i32 0
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %146 = bitcast i64* %145 to float*
  store float %144, float* %146, align 1, !tbaa !2063
  %147 = extractelement <2 x float> %119, i32 1
  %148 = getelementptr inbounds i8, i8* %138, i64 12
  %149 = bitcast i8* %148 to float*
  store float %147, float* %149, align 1, !tbaa !2063
  %150 = bitcast %union.VectorReg* %19 to double*
  %151 = load double, double* %150, align 1
  %152 = fmul double %151, %136
  %153 = fmul double %152, %136
  %154 = load i64, i64* %13, align 8
  %155 = add i64 %154, -116
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32, i32* %156
  %158 = sitofp i32 %157 to double
  store double %158, double* %137, align 1, !tbaa !1971
  %159 = fmul double %153, %158
  %160 = load double, double* %68, align 1
  %161 = fdiv double %159, %160
  %162 = load double, double* %63, align 1
  %163 = fmul double %162, %158
  store double %158, double* %68, align 1, !tbaa !1971
  %164 = fmul double %163, %158
  store double %164, double* %63, align 1, !tbaa !1971
  %165 = fadd double %164, %161
  store double %165, double* %150, align 1, !tbaa !1971
  %166 = add i64 %154, -104
  %167 = inttoptr i64 %166 to double*
  store double %165, double* %167
  %168 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 8) to i64*)
  %169 = add i64 %154, -32
  %170 = inttoptr i64 %169 to i64*
  store i64 %168, i64* %170
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171
  %173 = add i64 %154, -144
  %174 = inttoptr i64 %173 to i64*
  %175 = load i64, i64* %174
  %176 = shl i64 %175, 3
  %177 = add i64 %176, %172
  %178 = load i64, i64* %13, align 8
  %179 = add i64 %178, -40
  %180 = inttoptr i64 %179 to i64*
  store i64 %177, i64* %180
  %181 = inttoptr i64 %179 to i64*
  %182 = load i64, i64* %181
  %183 = add i64 %178, -20
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184
  %186 = sext i32 %185 to i64
  %187 = shl nsw i64 %186, 3
  store i64 %187, i64* %11, align 8, !tbaa !1947
  %188 = add i64 %187, %182
  store i64 %188, i64* %8, align 8, !tbaa !1947
  %189 = icmp ult i64 %188, %182
  %190 = icmp ult i64 %188, %187
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %27, align 1, !tbaa !1953
  %193 = trunc i64 %188 to i32
  %194 = and i32 %193, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #6
  %196 = and i32 %195, 1
  %197 = xor i32 %196, 1
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %34, align 1, !tbaa !1966
  %199 = xor i64 %187, %182
  %200 = xor i64 %199, %188
  %201 = lshr i64 %200, 4
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %40, align 1, !tbaa !1967
  %204 = icmp eq i64 %188, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %43, align 1, !tbaa !1968
  %206 = lshr i64 %188, 63
  %207 = trunc i64 %206 to i8
  store i8 %207, i8* %46, align 1, !tbaa !1969
  %208 = lshr i64 %182, 63
  %209 = lshr i64 %186, 60
  %210 = and i64 %209, 1
  %211 = xor i64 %206, %208
  %212 = xor i64 %206, %210
  %213 = add nuw nsw i64 %211, %212
  %214 = icmp eq i64 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %52, align 1, !tbaa !1970
  %216 = add i64 %178, -112
  %217 = inttoptr i64 %216 to i64*
  store i64 %188, i64* %217
  %218 = add i64 %178, -72
  %219 = bitcast [32 x %union.VectorReg]* %15 to double*
  %220 = load double, double* %219, align 1
  %221 = inttoptr i64 %218 to double*
  store double %220, double* %221
  %222 = add i64 %178, -80
  %223 = inttoptr i64 %222 to double*
  store double %220, double* %223
  %224 = add i64 %121, 924
  %225 = add i64 %121, 161
  %226 = load i64, i64* %12, align 1, !tbaa !1947
  %227 = add i64 %226, -8
  %228 = inttoptr i64 %227 to i64*
  store i64 %225, i64* %228
  store i64 %227, i64* %12, align 8, !tbaa !1947
  %229 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %224, %struct.Memory* %124)
  %230 = load i64, i64* %13, align 8
  %231 = add i64 %230, -88
  %232 = load i64, i64* %3, align 8
  %233 = load double, double* %219, align 1
  %234 = inttoptr i64 %231 to double*
  store double %233, double* %234
  %235 = add i64 %230, -136
  %236 = add i64 %232, 16
  %237 = inttoptr i64 %235 to i64*
  store i64 0, i64* %237
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  br label %block_400b35

block_400cde:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit20
  %239 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 32) to double*)
  store double %239, double* %219, align 1, !tbaa !1971
  %240 = bitcast i64* %54 to double*
  store double 0.000000e+00, double* %240, align 1, !tbaa !1971
  %241 = load i64, i64* %13, align 8
  %242 = add i64 %241, -80
  %243 = inttoptr i64 %242 to double*
  %244 = load double, double* %243
  %245 = add i64 %241, -72
  %246 = inttoptr i64 %245 to double*
  %247 = load double, double* %246
  %248 = fadd double %244, %247
  store double %248, double* %63, align 1, !tbaa !1971
  store i64 0, i64* %64, align 1, !tbaa !1971
  %249 = add i64 %372, 22
  store i64 %249, i64* %3, align 8
  %250 = fcmp uno double %239, %248
  br i1 %250, label %251, label %265

; <label>:251                                     ; preds = %block_400cde
  %252 = fadd double %239, %248
  %253 = bitcast double %252 to i64
  %254 = and i64 %253, 9221120237041090560
  %255 = icmp eq i64 %254, 9218868437227405312
  %256 = and i64 %253, 2251799813685247
  %257 = icmp ne i64 %256, 0
  %258 = and i1 %255, %257
  br i1 %258, label %259, label %264

; <label>:259                                     ; preds = %251
  %260 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %249, %struct.Memory* %365) #11
  %261 = load i64, i64* %3, align 8
  %262 = load i8, i8* %27, align 1, !tbaa !1953
  %263 = load i8, i8* %43, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:264                                     ; preds = %251
  store i8 1, i8* %43, align 1, !tbaa !2065
  store i8 1, i8* %34, align 1, !tbaa !2065
  store i8 1, i8* %27, align 1, !tbaa !2065
  br label %274

; <label>:265                                     ; preds = %block_400cde
  %266 = fcmp ogt double %239, %248
  br i1 %266, label %267, label %268

; <label>:267                                     ; preds = %265
  store i8 0, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 0, i8* %27, align 1, !tbaa !2065
  br label %274

; <label>:268                                     ; preds = %265
  %269 = fcmp olt double %239, %248
  br i1 %269, label %270, label %271

; <label>:270                                     ; preds = %268
  store i8 0, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 1, i8* %27, align 1, !tbaa !2065
  br label %274

; <label>:271                                     ; preds = %268
  %272 = fcmp oeq double %239, %248
  br i1 %272, label %273, label %274

; <label>:273                                     ; preds = %271
  store i8 1, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 0, i8* %27, align 1, !tbaa !2065
  br label %274

; <label>:274                                     ; preds = %273, %271, %270, %267, %264
  %275 = phi i8 [ 1, %273 ], [ %369, %271 ], [ 0, %270 ], [ 0, %267 ], [ 1, %264 ]
  %276 = phi i8 [ 0, %273 ], [ %368, %271 ], [ 1, %270 ], [ 0, %267 ], [ 1, %264 ]
  store i8 0, i8* %52, align 1, !tbaa !2065
  store i8 0, i8* %46, align 1, !tbaa !2065
  store i8 0, i8* %40, align 1, !tbaa !2065
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %274, %259
  %277 = phi i8 [ %263, %259 ], [ %275, %274 ]
  %278 = phi i8 [ %262, %259 ], [ %276, %274 ]
  %279 = phi i64 [ %261, %259 ], [ %249, %274 ]
  %280 = phi %struct.Memory* [ %260, %259 ], [ %365, %274 ]
  %281 = or i8 %277, %278
  %282 = icmp ne i8 %281, 0
  %283 = select i1 %282, i64 19, i64 6
  %284 = add i64 %279, %283
  br i1 %282, label %block_400d07, label %block_400cfa

block_400e0a:                                     ; preds = %block_400d96, %block_400cfa
  %285 = phi double* [ %240, %block_400d96 ], [ %385, %block_400cfa ]
  %286 = phi i64 [ %515, %block_400d96 ], [ %381, %block_400cfa ]
  %287 = phi %struct.Memory* [ %393, %block_400d96 ], [ %380, %block_400cfa ]
  %288 = add i64 %286, -8
  %289 = inttoptr i64 %288 to double*
  %290 = load double, double* %289
  store double %290, double* %219, align 1, !tbaa !1971
  store double 0.000000e+00, double* %285, align 1, !tbaa !1971
  %291 = load i64, i64* %12, align 8
  %292 = add i64 %291, 176
  %293 = icmp ugt i64 %291, -177
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %27, align 1, !tbaa !1953
  %295 = trunc i64 %292 to i32
  %296 = and i32 %295, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296) #6
  %298 = and i32 %297, 1
  %299 = xor i32 %298, 1
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %34, align 1, !tbaa !1966
  %301 = xor i64 %291, 16
  %302 = xor i64 %301, %292
  %303 = lshr i64 %302, 4
  %304 = trunc i64 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %40, align 1, !tbaa !1967
  %306 = icmp eq i64 %292, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %43, align 1, !tbaa !1968
  %308 = lshr i64 %292, 63
  %309 = trunc i64 %308 to i8
  store i8 %309, i8* %46, align 1, !tbaa !1969
  %310 = lshr i64 %291, 63
  %311 = xor i64 %308, %310
  %312 = add nuw nsw i64 %311, %308
  %313 = icmp eq i64 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %52, align 1, !tbaa !1970
  %315 = add i64 %291, 184
  %316 = inttoptr i64 %292 to i64*
  %317 = load i64, i64* %316
  store i64 %317, i64* %13, align 8, !tbaa !1947
  %318 = inttoptr i64 %315 to i64*
  %319 = load i64, i64* %318
  store i64 %319, i64* %3, align 8, !tbaa !1947
  %320 = add i64 %291, 192
  store i64 %320, i64* %12, align 8, !tbaa !1947
  ret %struct.Memory* %287

block_400cbc:                                     ; preds = %block_400c06
  %321 = phi i64 [ %708, %block_400c06 ]
  %322 = phi %struct.Memory* [ %673, %block_400c06 ]
  %323 = add i64 %321, 356
  %324 = add i64 %321, 5
  %325 = load i64, i64* %12, align 1, !tbaa !1947
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327
  store i64 %326, i64* %12, align 8, !tbaa !1947
  %328 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %323, %struct.Memory* %322)
  %329 = load i64, i64* %3, align 8
  %330 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 24) to double*)
  store double %330, double* %63, align 1, !tbaa !1971
  store double 0.000000e+00, double* %65, align 1, !tbaa !1971
  %331 = load i64, i64* %13, align 8
  %332 = add i64 %331, -88
  %333 = load double, double* %219, align 1
  %334 = inttoptr i64 %332 to double*
  %335 = load double, double* %334
  %336 = fsub double %333, %335
  store double %336, double* %219, align 1, !tbaa !1971
  %337 = inttoptr i64 %332 to double*
  store double %336, double* %337
  %338 = add i64 %329, 23
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %332 to double*
  %340 = load double, double* %339
  %341 = fcmp uno double %330, %340
  br i1 %341, label %342, label %354

; <label>:342                                     ; preds = %block_400cbc
  %343 = fadd double %330, %340
  %344 = bitcast double %343 to i64
  %345 = and i64 %344, 9221120237041090560
  %346 = icmp eq i64 %345, 9218868437227405312
  %347 = and i64 %344, 2251799813685247
  %348 = icmp ne i64 %347, 0
  %349 = and i1 %346, %348
  br i1 %349, label %350, label %353

; <label>:350                                     ; preds = %342
  %351 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %338, %struct.Memory* %328) #11
  %352 = load i64, i64* %3, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit20

; <label>:353                                     ; preds = %342
  store i8 1, i8* %43, align 1, !tbaa !2065
  store i8 1, i8* %34, align 1, !tbaa !2065
  store i8 1, i8* %27, align 1, !tbaa !2065
  br label %363

; <label>:354                                     ; preds = %block_400cbc
  %355 = fcmp ogt double %330, %340
  br i1 %355, label %356, label %357

; <label>:356                                     ; preds = %354
  store i8 0, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 0, i8* %27, align 1, !tbaa !2065
  br label %363

; <label>:357                                     ; preds = %354
  %358 = fcmp olt double %330, %340
  br i1 %358, label %359, label %360

; <label>:359                                     ; preds = %357
  store i8 0, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 1, i8* %27, align 1, !tbaa !2065
  br label %363

; <label>:360                                     ; preds = %357
  %361 = fcmp oeq double %330, %340
  br i1 %361, label %362, label %363

; <label>:362                                     ; preds = %360
  store i8 1, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 0, i8* %27, align 1, !tbaa !2065
  br label %363

; <label>:363                                     ; preds = %362, %360, %359, %356, %353
  store i8 0, i8* %52, align 1, !tbaa !2065
  store i8 0, i8* %46, align 1, !tbaa !2065
  store i8 0, i8* %40, align 1, !tbaa !2065
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit20

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit20: ; preds = %363, %350
  %364 = phi i64 [ %352, %350 ], [ %338, %363 ]
  %365 = phi %struct.Memory* [ %351, %350 ], [ %328, %363 ]
  %366 = add i64 %364, 34
  %367 = add i64 %364, 6
  %368 = load i8, i8* %27, align 1, !tbaa !1953
  %369 = load i8, i8* %43, align 1, !tbaa !1968
  %370 = or i8 %369, %368
  %371 = icmp eq i8 %370, 0
  %372 = select i1 %371, i64 %366, i64 %367
  br i1 %371, label %block_400cfa, label %block_400cde

block_400bfb:                                     ; preds = %block_400b35
  %373 = phi i64 [ %670, %block_400b35 ]
  %374 = phi i64 [ %652, %block_400b35 ]
  %375 = phi %struct.Memory* [ %651, %block_400b35 ]
  %376 = phi i64 [ %650, %block_400b35 ]
  %377 = bitcast %union.VectorReg* %18 to i8*
  %378 = add i64 %373, 11
  %379 = inttoptr i64 %374 to i64*
  store i64 0, i64* %379
  br label %block_400c06

block_400cfa:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit20, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %380 = phi %struct.Memory* [ %365, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit20 ], [ %280, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  store i32 0, i32* %55, align 1, !tbaa !1951
  store i32 0, i32* %57, align 1, !tbaa !1951
  store i32 0, i32* %58, align 1, !tbaa !1951
  store i32 0, i32* %60, align 1, !tbaa !1951
  %381 = load i64, i64* %13, align 8
  %382 = add i64 %381, -8
  %383 = load double, double* %219, align 1
  %384 = inttoptr i64 %382 to double*
  store double %383, double* %384
  %385 = bitcast i64* %54 to double*
  br label %block_400e0a

block_400d78:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23
  store i32 0, i32* %55, align 1, !tbaa !1951
  store i32 0, i32* %57, align 1, !tbaa !1951
  store i32 0, i32* %58, align 1, !tbaa !1951
  store i32 0, i32* %60, align 1, !tbaa !1951
  %386 = load i64, i64* %13, align 8
  %387 = add i64 %386, -72
  %388 = add i64 %571, 8
  %389 = load double, double* %219, align 1
  %390 = inttoptr i64 %387 to double*
  store double %389, double* %390
  br label %block_400d80

block_400d96:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400d96_crit_edge, %block_400d8e
  %391 = phi i64 [ %1025, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400d96_crit_edge ], [ %524, %block_400d8e ]
  %392 = phi i64 [ %1024, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400d96_crit_edge ], [ %526, %block_400d8e ]
  %393 = phi %struct.Memory* [ %1020, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400d96_crit_edge ], [ %1020, %block_400d8e ]
  store i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 482), i64* %11, align 8, !tbaa !1947
  %394 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 48) to double*)
  %395 = add i64 %391, -16
  %396 = inttoptr i64 %395 to i64*
  %397 = load i64, i64* %396
  store i64 %397, i64* %10, align 8, !tbaa !1947
  %398 = add i64 %391, -88
  %399 = inttoptr i64 %398 to double*
  %400 = load double, double* %399
  store double %400, double* %63, align 1, !tbaa !1971
  store double 0.000000e+00, double* %65, align 1, !tbaa !1971
  %401 = bitcast double %394 to <2 x float>
  %402 = extractelement <2 x float> %401, i32 0
  %403 = bitcast %union.VectorReg* %17 to float*
  store float %402, float* %403, align 1, !tbaa !2063
  %404 = extractelement <2 x float> %401, i32 1
  %405 = getelementptr inbounds i8, i8* %66, i64 4
  %406 = bitcast i8* %405 to float*
  store float %404, float* %406, align 1, !tbaa !2063
  %407 = bitcast i64* %69 to float*
  store float 0.000000e+00, float* %407, align 1, !tbaa !2063
  %408 = getelementptr inbounds i8, i8* %66, i64 12
  %409 = bitcast i8* %408 to float*
  store float 0.000000e+00, float* %409, align 1, !tbaa !2063
  %410 = add i64 %391, -80
  %411 = load double, double* %68, align 1
  %412 = bitcast i64* %69 to <2 x float>*
  %413 = load <2 x float>, <2 x float>* %412, align 1
  %414 = inttoptr i64 %410 to double*
  %415 = load double, double* %414
  %416 = fmul double %411, %415
  %417 = fdiv double %416, %400
  store double %417, double* %68, align 1, !tbaa !1971
  %418 = bitcast %union.VectorReg* %18 to float*
  store float %402, float* %418, align 1, !tbaa !2063
  %419 = getelementptr inbounds i8, i8* %377, i64 4
  %420 = bitcast i8* %419 to float*
  store float %404, float* %420, align 1, !tbaa !2063
  %421 = bitcast i64* %588 to float*
  store float 0.000000e+00, float* %421, align 1, !tbaa !2063
  %422 = getelementptr inbounds i8, i8* %377, i64 12
  %423 = bitcast i8* %422 to float*
  store float 0.000000e+00, float* %423, align 1, !tbaa !2063
  %424 = add i64 %391, -72
  %425 = load double, double* %137, align 1
  %426 = bitcast i64* %588 to <2 x float>*
  %427 = load <2 x float>, <2 x float>* %426, align 1
  %428 = inttoptr i64 %424 to double*
  %429 = load double, double* %428
  %430 = fmul double %425, %429
  %431 = fdiv double %430, %400
  %432 = add i64 %391, -96
  %433 = inttoptr i64 %432 to double*
  %434 = load double, double* %433
  %435 = fmul double %394, %434
  %436 = fdiv double %435, %400
  store double %436, double* %219, align 1, !tbaa !1971
  store i64 0, i64* %54, align 1, !tbaa !1971
  %437 = add i64 %391, -64
  %438 = inttoptr i64 %437 to double*
  %439 = load double, double* %438
  store double %439, double* %150, align 1, !tbaa !1971
  %440 = bitcast i64* %145 to double*
  store double 0.000000e+00, double* %440, align 1, !tbaa !1971
  %441 = add i64 %391, -160
  %442 = inttoptr i64 %441 to double*
  store double %436, double* %442
  %443 = bitcast double %400 to <2 x float>
  %444 = extractelement <2 x float> %443, i32 0
  %445 = bitcast [32 x %union.VectorReg]* %15 to float*
  store float %444, float* %445, align 1, !tbaa !2063
  %446 = extractelement <2 x float> %443, i32 1
  %447 = bitcast i8* %56 to float*
  store float %446, float* %447, align 1, !tbaa !2063
  %448 = bitcast i64* %54 to float*
  store float 0.000000e+00, float* %448, align 1, !tbaa !2063
  %449 = bitcast i8* %59 to float*
  store float 0.000000e+00, float* %449, align 1, !tbaa !2063
  %450 = bitcast double %417 to <2 x float>
  %451 = extractelement <2 x float> %450, i32 0
  %452 = bitcast %union.VectorReg* %16 to float*
  store float %451, float* %452, align 1, !tbaa !2063
  %453 = extractelement <2 x float> %450, i32 1
  %454 = getelementptr inbounds i8, i8* %61, i64 4
  %455 = bitcast i8* %454 to float*
  store float %453, float* %455, align 1, !tbaa !2063
  %456 = extractelement <2 x float> %413, i32 0
  %457 = bitcast i64* %64 to float*
  store float %456, float* %457, align 1, !tbaa !2063
  %458 = extractelement <2 x float> %413, i32 1
  %459 = getelementptr inbounds i8, i8* %61, i64 12
  %460 = bitcast i8* %459 to float*
  store float %458, float* %460, align 1, !tbaa !2063
  %461 = bitcast double %431 to <2 x float>
  %462 = extractelement <2 x float> %461, i32 0
  store float %462, float* %403, align 1, !tbaa !2063
  %463 = extractelement <2 x float> %461, i32 1
  store float %463, float* %406, align 1, !tbaa !2063
  %464 = extractelement <2 x float> %427, i32 0
  store float %464, float* %407, align 1, !tbaa !2063
  %465 = extractelement <2 x float> %427, i32 1
  store float %465, float* %409, align 1, !tbaa !2063
  %466 = load i64, i64* %13, align 8
  %467 = add i64 %466, -160
  %468 = inttoptr i64 %467 to double*
  %469 = load double, double* %468
  store double %469, double* %137, align 1, !tbaa !1971
  store double 0.000000e+00, double* %589, align 1, !tbaa !1971
  %470 = add i64 %392, 100
  %471 = load i64, i64* %12, align 1, !tbaa !1947
  %472 = add i64 %471, -8
  %473 = inttoptr i64 %472 to i64*
  store i64 %470, i64* %473
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %477 = load i64, i64* %11, align 8, !alias.scope !2066, !noalias !2069
  %478 = load i64, i64* %475, align 8, !alias.scope !2066, !noalias !2069
  %479 = load i64, i64* %86, align 8, !alias.scope !2066, !noalias !2069
  %480 = load i64, i64* %8, align 8, !alias.scope !2066, !noalias !2069
  %481 = load i64, i64* %14, align 8, !alias.scope !2066, !noalias !2069
  %482 = load i64, i64* %476, align 8, !alias.scope !2066, !noalias !2069
  %483 = inttoptr i64 %471 to i64*
  %484 = load i64, i64* %483
  %485 = add i64 %471, 8
  %486 = inttoptr i64 %485 to i64*
  %487 = load i64, i64* %486
  %488 = add i64 %471, 16
  %489 = inttoptr i64 %488 to i64*
  %490 = load i64, i64* %489
  %491 = add i64 %471, 24
  %492 = inttoptr i64 %491 to i64*
  %493 = load i64, i64* %492
  %494 = add i64 %471, 32
  %495 = inttoptr i64 %494 to i64*
  %496 = load i64, i64* %495
  %497 = add i64 %471, 40
  %498 = inttoptr i64 %497 to i64*
  %499 = load i64, i64* %498
  %500 = add i64 %471, 48
  %501 = inttoptr i64 %500 to i64*
  %502 = load i64, i64* %501
  %503 = add i64 %471, 56
  %504 = inttoptr i64 %503 to i64*
  %505 = load i64, i64* %504
  %506 = add i64 %471, 64
  %507 = inttoptr i64 %506 to i64*
  %508 = load i64, i64* %507
  %509 = add i64 %471, 72
  %510 = inttoptr i64 %509 to i64*
  %511 = load i64, i64* %510
  %512 = inttoptr i64 %472 to i64*
  %513 = load i64, i64* %512
  store i64 %513, i64* %3, align 8, !alias.scope !2066, !noalias !2069
  %514 = tail call i64 @printf(i64 %477, i64 %478, i64 %479, i64 %480, i64 %481, i64 %482, i64 %484, i64 %487, i64 %490, i64 %493, i64 %496, i64 %499, i64 %502, i64 %505, i64 %508, i64 %511), !noalias !2066
  store i64 %514, i64* %474, align 8, !alias.scope !2066, !noalias !2069
  %515 = load i64, i64* %13, align 8
  %516 = add i64 %515, -88
  %517 = inttoptr i64 %516 to double*
  %518 = load double, double* %517
  store double %518, double* %219, align 1, !tbaa !1971
  store double 0.000000e+00, double* %240, align 1, !tbaa !1971
  %519 = add i64 %515, -8
  %520 = inttoptr i64 %519 to double*
  store double %518, double* %520
  %521 = add i64 %515, -164
  %522 = trunc i64 %514 to i32
  %523 = inttoptr i64 %521 to i32*
  store i32 %522, i32* %523
  br label %block_400e0a

block_400d8e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i32 0, i32* %55, align 1, !tbaa !1951
  store i32 0, i32* %57, align 1, !tbaa !1951
  store i32 0, i32* %58, align 1, !tbaa !1951
  store i32 0, i32* %60, align 1, !tbaa !1951
  %524 = load i64, i64* %13, align 8
  %525 = add i64 %524, -96
  %526 = add i64 %1024, 8
  %527 = load double, double* %219, align 1
  %528 = inttoptr i64 %525 to double*
  store double %527, double* %528
  br label %block_400d96

block_400d6a:                                     ; preds = %block_400d62, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26.block_400d6a_crit_edge
  %529 = phi i64 [ %648, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26.block_400d6a_crit_edge ], [ %709, %block_400d62 ]
  %530 = phi i64 [ %647, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26.block_400d6a_crit_edge ], [ %711, %block_400d62 ]
  %531 = phi %struct.Memory* [ %643, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26.block_400d6a_crit_edge ], [ %643, %block_400d62 ]
  store i32 0, i32* %55, align 1, !tbaa !1951
  store i32 0, i32* %57, align 1, !tbaa !1951
  store i32 0, i32* %58, align 1, !tbaa !1951
  store i32 0, i32* %60, align 1, !tbaa !1951
  %532 = add i64 %529, -72
  %533 = add i64 %530, 8
  store i64 %533, i64* %3, align 8
  %534 = load double, double* %219, align 1
  %535 = inttoptr i64 %532 to double*
  %536 = load double, double* %535
  %537 = fcmp uno double %534, %536
  br i1 %537, label %538, label %552

; <label>:538                                     ; preds = %block_400d6a
  %539 = fadd double %534, %536
  %540 = bitcast double %539 to i64
  %541 = and i64 %540, 9221120237041090560
  %542 = icmp eq i64 %541, 9218868437227405312
  %543 = and i64 %540, 2251799813685247
  %544 = icmp ne i64 %543, 0
  %545 = and i1 %542, %544
  br i1 %545, label %546, label %551

; <label>:546                                     ; preds = %538
  %547 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %533, %struct.Memory* %531) #11
  %548 = load i64, i64* %3, align 8
  %549 = load i8, i8* %27, align 1, !tbaa !1953
  %550 = load i8, i8* %43, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23

; <label>:551                                     ; preds = %538
  store i8 1, i8* %43, align 1, !tbaa !2065
  store i8 1, i8* %34, align 1, !tbaa !2065
  store i8 1, i8* %27, align 1, !tbaa !2065
  br label %561

; <label>:552                                     ; preds = %block_400d6a
  %553 = fcmp ogt double %534, %536
  br i1 %553, label %554, label %555

; <label>:554                                     ; preds = %552
  store i8 0, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 0, i8* %27, align 1, !tbaa !2065
  br label %561

; <label>:555                                     ; preds = %552
  %556 = fcmp olt double %534, %536
  br i1 %556, label %557, label %558

; <label>:557                                     ; preds = %555
  store i8 0, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 1, i8* %27, align 1, !tbaa !2065
  br label %561

; <label>:558                                     ; preds = %555
  %559 = fcmp oeq double %534, %536
  br i1 %559, label %560, label %561

; <label>:560                                     ; preds = %558
  store i8 1, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 0, i8* %27, align 1, !tbaa !2065
  br label %561

; <label>:561                                     ; preds = %560, %558, %557, %554, %551
  %562 = phi i8 [ 1, %560 ], [ %640, %558 ], [ 0, %557 ], [ 0, %554 ], [ 1, %551 ]
  %563 = phi i8 [ 0, %560 ], [ %641, %558 ], [ 1, %557 ], [ 0, %554 ], [ 1, %551 ]
  store i8 0, i8* %52, align 1, !tbaa !2065
  store i8 0, i8* %46, align 1, !tbaa !2065
  store i8 0, i8* %40, align 1, !tbaa !2065
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23: ; preds = %561, %546
  %564 = phi i8 [ %550, %546 ], [ %562, %561 ]
  %565 = phi i8 [ %549, %546 ], [ %563, %561 ]
  %566 = phi i64 [ %548, %546 ], [ %533, %561 ]
  %567 = phi %struct.Memory* [ %547, %546 ], [ %531, %561 ]
  %568 = or i8 %564, %565
  %569 = icmp ne i8 %568, 0
  %570 = select i1 %569, i64 14, i64 6
  %571 = add i64 %566, %570
  br i1 %569, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23.block_400d80_crit_edge, label %block_400d78

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23.block_400d80_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23
  %572 = load i64, i64* %13, align 8
  br label %block_400d80

block_400d07:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  store i32 0, i32* %55, align 1, !tbaa !1951
  store i32 0, i32* %57, align 1, !tbaa !1951
  store i32 0, i32* %58, align 1, !tbaa !1951
  store i32 0, i32* %60, align 1, !tbaa !1951
  %573 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 40) to double*)
  %574 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 8) to double*)
  %575 = load i64, i64* %13, align 8
  %576 = add i64 %575, -16
  %577 = inttoptr i64 %576 to i64*
  %578 = load i64, i64* %577
  store i64 %578, i64* %7, align 8, !tbaa !1947
  %579 = sitofp i64 %578 to double
  %580 = fmul double %574, %579
  %581 = add i64 %575, -104
  %582 = inttoptr i64 %581 to double*
  %583 = load double, double* %582
  %584 = fmul double %580, %583
  %585 = add i64 %575, -80
  %586 = inttoptr i64 %585 to double*
  %587 = load double, double* %586
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %589 = bitcast i64* %588 to double*
  %590 = add i64 %575, -72
  %591 = inttoptr i64 %590 to double*
  %592 = load double, double* %591
  %593 = fadd double %587, %592
  store double %593, double* %137, align 1, !tbaa !1971
  store i64 0, i64* %588, align 1, !tbaa !1971
  %594 = fmul double %573, %593
  %595 = fdiv double %584, %594
  store double %595, double* %68, align 1, !tbaa !1971
  store i64 0, i64* %69, align 1, !tbaa !1971
  %596 = add i64 %575, -64
  %597 = inttoptr i64 %596 to double*
  store double %595, double* %597
  %598 = add i64 %575, -88
  %599 = inttoptr i64 %598 to double*
  %600 = load double, double* %599
  %601 = inttoptr i64 %585 to double*
  %602 = load double, double* %601
  %603 = fsub double %600, %602
  %604 = inttoptr i64 %590 to double*
  %605 = load double, double* %604
  %606 = fsub double %603, %605
  store double %606, double* %63, align 1, !tbaa !1971
  store i64 0, i64* %64, align 1, !tbaa !1971
  %607 = add i64 %575, -96
  %608 = inttoptr i64 %607 to double*
  store double %606, double* %608
  %609 = add i64 %284, 85
  store i64 %609, i64* %3, align 8
  %610 = load double, double* %219, align 1
  %611 = inttoptr i64 %585 to double*
  %612 = load double, double* %611
  %613 = fcmp uno double %610, %612
  br i1 %613, label %614, label %628

; <label>:614                                     ; preds = %block_400d07
  %615 = fadd double %610, %612
  %616 = bitcast double %615 to i64
  %617 = and i64 %616, 9221120237041090560
  %618 = icmp eq i64 %617, 9218868437227405312
  %619 = and i64 %616, 2251799813685247
  %620 = icmp ne i64 %619, 0
  %621 = and i1 %618, %620
  br i1 %621, label %622, label %627

; <label>:622                                     ; preds = %614
  %623 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %609, %struct.Memory* %280) #11
  %624 = load i64, i64* %3, align 8
  %625 = load i8, i8* %27, align 1, !tbaa !1953
  %626 = load i8, i8* %43, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26

; <label>:627                                     ; preds = %614
  store i8 1, i8* %43, align 1, !tbaa !2065
  store i8 1, i8* %34, align 1, !tbaa !2065
  store i8 1, i8* %27, align 1, !tbaa !2065
  br label %637

; <label>:628                                     ; preds = %block_400d07
  %629 = fcmp ogt double %610, %612
  br i1 %629, label %630, label %631

; <label>:630                                     ; preds = %628
  store i8 0, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 0, i8* %27, align 1, !tbaa !2065
  br label %637

; <label>:631                                     ; preds = %628
  %632 = fcmp olt double %610, %612
  br i1 %632, label %633, label %634

; <label>:633                                     ; preds = %631
  store i8 0, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 1, i8* %27, align 1, !tbaa !2065
  br label %637

; <label>:634                                     ; preds = %631
  %635 = fcmp oeq double %610, %612
  br i1 %635, label %636, label %637

; <label>:636                                     ; preds = %634
  store i8 1, i8* %43, align 1, !tbaa !2065
  store i8 0, i8* %34, align 1, !tbaa !2065
  store i8 0, i8* %27, align 1, !tbaa !2065
  br label %637

; <label>:637                                     ; preds = %636, %634, %633, %630, %627
  %638 = phi i8 [ 1, %636 ], [ %277, %634 ], [ 0, %633 ], [ 0, %630 ], [ 1, %627 ]
  %639 = phi i8 [ 0, %636 ], [ %278, %634 ], [ 1, %633 ], [ 0, %630 ], [ 1, %627 ]
  store i8 0, i8* %52, align 1, !tbaa !2065
  store i8 0, i8* %46, align 1, !tbaa !2065
  store i8 0, i8* %40, align 1, !tbaa !2065
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26: ; preds = %637, %622
  %640 = phi i8 [ %626, %622 ], [ %638, %637 ]
  %641 = phi i8 [ %625, %622 ], [ %639, %637 ]
  %642 = phi i64 [ %624, %622 ], [ %609, %637 ]
  %643 = phi %struct.Memory* [ %623, %622 ], [ %280, %637 ]
  %644 = or i8 %640, %641
  %645 = icmp ne i8 %644, 0
  %646 = select i1 %645, i64 14, i64 6
  %647 = add i64 %642, %646
  br i1 %645, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26.block_400d6a_crit_edge, label %block_400d62

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26.block_400d6a_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26
  %648 = load i64, i64* %13, align 8
  br label %block_400d6a

block_400b35:                                     ; preds = %block_400b46, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %649 = phi i64 [ %236, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %981, %block_400b46 ]
  %650 = phi i64 [ %230, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %964, %block_400b46 ]
  %651 = phi %struct.Memory* [ %229, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %963, %block_400b46 ]
  %652 = add i64 %650, -136
  %653 = inttoptr i64 %652 to i64*
  %654 = load i64, i64* %653
  %655 = add i64 %650, -16
  %656 = inttoptr i64 %655 to i64*
  %657 = load i64, i64* %656
  %658 = sub i64 %654, %657
  %659 = lshr i64 %658, 63
  %660 = trunc i64 %659 to i8
  %661 = lshr i64 %654, 63
  %662 = lshr i64 %657, 63
  %663 = xor i64 %662, %661
  %664 = xor i64 %659, %661
  %665 = add nuw nsw i64 %664, %663
  %666 = icmp eq i64 %665, 2
  %667 = icmp ne i8 %660, 0
  %668 = xor i1 %667, %666
  %669 = select i1 %668, i64 17, i64 198
  %670 = add i64 %649, %669
  br i1 %668, label %block_400b46, label %block_400bfb

block_400c06:                                     ; preds = %block_400c17, %block_400bfb
  %671 = phi i64 [ %378, %block_400bfb ], [ %846, %block_400c17 ]
  %672 = phi i64 [ %376, %block_400bfb ], [ %829, %block_400c17 ]
  %673 = phi %struct.Memory* [ %375, %block_400bfb ], [ %828, %block_400c17 ]
  %674 = add i64 %672, -136
  %675 = inttoptr i64 %674 to i64*
  %676 = load i64, i64* %675
  %677 = add i64 %672, -16
  %678 = inttoptr i64 %677 to i64*
  %679 = load i64, i64* %678
  %680 = sub i64 %676, %679
  %681 = icmp ult i64 %676, %679
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %27, align 1, !tbaa !1953
  %683 = trunc i64 %680 to i32
  %684 = and i32 %683, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684) #6
  %686 = and i32 %685, 1
  %687 = xor i32 %686, 1
  %688 = trunc i32 %687 to i8
  store i8 %688, i8* %34, align 1, !tbaa !1966
  %689 = xor i64 %679, %676
  %690 = xor i64 %689, %680
  %691 = lshr i64 %690, 4
  %692 = trunc i64 %691 to i8
  %693 = and i8 %692, 1
  store i8 %693, i8* %40, align 1, !tbaa !1967
  %694 = icmp eq i64 %676, %679
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %43, align 1, !tbaa !1968
  %696 = lshr i64 %680, 63
  %697 = trunc i64 %696 to i8
  store i8 %697, i8* %46, align 1, !tbaa !1969
  %698 = lshr i64 %676, 63
  %699 = lshr i64 %679, 63
  %700 = xor i64 %699, %698
  %701 = xor i64 %696, %698
  %702 = add nuw nsw i64 %701, %700
  %703 = icmp eq i64 %702, 2
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %52, align 1, !tbaa !1970
  %705 = icmp ne i8 %697, 0
  %706 = xor i1 %705, %703
  %707 = select i1 %706, i64 17, i64 182
  %708 = add i64 %671, %707
  br i1 %706, label %block_400c17, label %block_400cbc

block_400d62:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit26
  store i32 0, i32* %55, align 1, !tbaa !1951
  store i32 0, i32* %57, align 1, !tbaa !1951
  store i32 0, i32* %58, align 1, !tbaa !1951
  store i32 0, i32* %60, align 1, !tbaa !1951
  %709 = load i64, i64* %13, align 8
  %710 = add i64 %709, -80
  %711 = add i64 %647, 8
  %712 = load double, double* %219, align 1
  %713 = inttoptr i64 %710 to double*
  store double %712, double* %713
  br label %block_400d6a

block_400c17:                                     ; preds = %block_400c06
  %714 = add i64 %672, -48
  store i64 %714, i64* %14, align 8, !tbaa !1947
  %715 = add i64 %672, -32
  %716 = inttoptr i64 %715 to i64*
  %717 = load i64, i64* %716
  store i64 %717, i64* %11, align 8, !tbaa !1947
  %718 = add i64 %672, -124
  %719 = inttoptr i64 %718 to i32*
  %720 = load i32, i32* %719
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %10, align 8, !tbaa !1947
  %722 = add i64 %672, -116
  %723 = inttoptr i64 %722 to i32*
  %724 = load i32, i32* %723
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %9, align 8, !tbaa !1947
  %726 = add i64 %672, -40
  %727 = inttoptr i64 %726 to i64*
  %728 = load i64, i64* %727
  store i64 %728, i64* %8, align 8, !tbaa !1947
  %729 = add i64 %708, 553
  %730 = add i64 %708, 23
  %731 = load i64, i64* %12, align 1, !tbaa !1947
  %732 = add i64 %731, -8
  %733 = inttoptr i64 %732 to i64*
  store i64 %730, i64* %733
  store i64 %732, i64* %12, align 8, !tbaa !1947
  %734 = tail call %struct.Memory* @sub_400e40_matgen(%struct.State* nonnull %0, i64 %729, %struct.Memory* %673)
  %735 = load i64, i64* %3, align 8
  %736 = add i64 %735, 498
  %737 = add i64 %735, 5
  %738 = load i64, i64* %12, align 1, !tbaa !1947
  %739 = add i64 %738, -8
  %740 = inttoptr i64 %739 to i64*
  store i64 %737, i64* %740
  store i64 %739, i64* %12, align 8, !tbaa !1947
  %741 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %736, %struct.Memory* %734)
  %742 = load i64, i64* %13, align 8
  %743 = add i64 %742, -120
  %744 = load i64, i64* %3, align 8
  store i64 %743, i64* %14, align 8, !tbaa !1947
  store i64 0, i64* %238, align 8, !tbaa !1947
  %745 = add i64 %742, -56
  %746 = load double, double* %219, align 1
  %747 = inttoptr i64 %745 to double*
  store double %746, double* %747
  %748 = add i64 %742, -32
  %749 = inttoptr i64 %748 to i64*
  %750 = load i64, i64* %749
  store i64 %750, i64* %11, align 8, !tbaa !1947
  %751 = add i64 %742, -124
  %752 = inttoptr i64 %751 to i32*
  %753 = load i32, i32* %752
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %10, align 8, !tbaa !1947
  %755 = add i64 %742, -116
  %756 = inttoptr i64 %755 to i32*
  %757 = load i32, i32* %756
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %9, align 8, !tbaa !1947
  %759 = add i64 %742, -112
  %760 = inttoptr i64 %759 to i64*
  %761 = load i64, i64* %760
  store i64 %761, i64* %8, align 8, !tbaa !1947
  %762 = add i64 %744, 989
  %763 = add i64 %744, 31
  %764 = load i64, i64* %12, align 1, !tbaa !1947
  %765 = add i64 %764, -8
  %766 = inttoptr i64 %765 to i64*
  store i64 %763, i64* %766
  store i64 %765, i64* %12, align 8, !tbaa !1947
  %767 = tail call %struct.Memory* @sub_401010_dgefa(%struct.State* nonnull %0, i64 %762, %struct.Memory* %741)
  %768 = load i64, i64* %3, align 8
  %769 = add i64 %768, 462
  %770 = add i64 %768, 5
  %771 = load i64, i64* %12, align 1, !tbaa !1947
  %772 = add i64 %771, -8
  %773 = inttoptr i64 %772 to i64*
  store i64 %770, i64* %773
  store i64 %772, i64* %12, align 8, !tbaa !1947
  %774 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %769, %struct.Memory* %767)
  %775 = load i64, i64* %13, align 8
  %776 = add i64 %775, -56
  %777 = load i64, i64* %3, align 8
  %778 = load double, double* %219, align 1
  %779 = inttoptr i64 %776 to double*
  %780 = load double, double* %779
  %781 = fsub double %778, %780
  %782 = add i64 %775, -80
  %783 = inttoptr i64 %782 to double*
  %784 = load double, double* %783
  %785 = fadd double %781, %784
  store double %785, double* %219, align 1, !tbaa !1971
  %786 = inttoptr i64 %782 to double*
  store double %785, double* %786
  %787 = add i64 %777, 457
  %788 = add i64 %777, 20
  %789 = load i64, i64* %12, align 1, !tbaa !1947
  %790 = add i64 %789, -8
  %791 = inttoptr i64 %790 to i64*
  store i64 %788, i64* %791
  store i64 %790, i64* %12, align 8, !tbaa !1947
  %792 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %787, %struct.Memory* %774)
  %793 = load i64, i64* %3, align 8
  store i64 0, i64* %238, align 8, !tbaa !1947
  %794 = load i64, i64* %13, align 8
  %795 = add i64 %794, -56
  %796 = load double, double* %219, align 1
  %797 = inttoptr i64 %795 to double*
  store double %796, double* %797
  %798 = add i64 %794, -32
  %799 = inttoptr i64 %798 to i64*
  %800 = load i64, i64* %799
  store i64 %800, i64* %11, align 8, !tbaa !1947
  %801 = add i64 %794, -124
  %802 = inttoptr i64 %801 to i32*
  %803 = load i32, i32* %802
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %10, align 8, !tbaa !1947
  %805 = add i64 %794, -116
  %806 = inttoptr i64 %805 to i32*
  %807 = load i32, i32* %806
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %9, align 8, !tbaa !1947
  %809 = add i64 %794, -112
  %810 = inttoptr i64 %809 to i64*
  %811 = load i64, i64* %810
  store i64 %811, i64* %8, align 8, !tbaa !1947
  %812 = add i64 %794, -40
  %813 = inttoptr i64 %812 to i64*
  %814 = load i64, i64* %813
  store i64 %814, i64* %14, align 8, !tbaa !1947
  %815 = load i64, i64* %12, align 8
  %816 = inttoptr i64 %815 to i32*
  store i32 0, i32* %816
  %817 = add i64 %793, 2453
  %818 = add i64 %793, 38
  %819 = add i64 %815, -8
  %820 = inttoptr i64 %819 to i64*
  store i64 %818, i64* %820
  store i64 %819, i64* %12, align 8, !tbaa !1947
  %821 = tail call %struct.Memory* @sub_401600_dgesl(%struct.State* nonnull %0, i64 %817, %struct.Memory* %792)
  %822 = load i64, i64* %3, align 8
  %823 = add i64 %822, 399
  %824 = add i64 %822, 5
  %825 = load i64, i64* %12, align 1, !tbaa !1947
  %826 = add i64 %825, -8
  %827 = inttoptr i64 %826 to i64*
  store i64 %824, i64* %827
  store i64 %826, i64* %12, align 8, !tbaa !1947
  %828 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %823, %struct.Memory* %821)
  %829 = load i64, i64* %13, align 8
  %830 = add i64 %829, -56
  %831 = load i64, i64* %3, align 8
  %832 = load double, double* %219, align 1
  %833 = inttoptr i64 %830 to double*
  %834 = load double, double* %833
  %835 = fsub double %832, %834
  %836 = add i64 %829, -72
  %837 = inttoptr i64 %836 to double*
  %838 = load double, double* %837
  %839 = fadd double %835, %838
  store double %839, double* %219, align 1, !tbaa !1971
  %840 = inttoptr i64 %836 to double*
  store double %839, double* %840
  %841 = add i64 %829, -136
  %842 = inttoptr i64 %841 to i64*
  %843 = load i64, i64* %842
  %844 = add i64 %843, 1
  %845 = inttoptr i64 %841 to i64*
  store i64 %844, i64* %845
  %846 = add i64 %831, -144
  br label %block_400c06

block_400b46:                                     ; preds = %block_400b35
  %847 = add i64 %650, -48
  store i64 %847, i64* %14, align 8, !tbaa !1947
  %848 = add i64 %650, -32
  %849 = inttoptr i64 %848 to i64*
  %850 = load i64, i64* %849
  store i64 %850, i64* %11, align 8, !tbaa !1947
  %851 = add i64 %650, -124
  %852 = inttoptr i64 %851 to i32*
  %853 = load i32, i32* %852
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %10, align 8, !tbaa !1947
  %855 = add i64 %650, -116
  %856 = inttoptr i64 %855 to i32*
  %857 = load i32, i32* %856
  %858 = zext i32 %857 to i64
  store i64 %858, i64* %9, align 8, !tbaa !1947
  %859 = add i64 %650, -40
  %860 = inttoptr i64 %859 to i64*
  %861 = load i64, i64* %860
  store i64 %861, i64* %8, align 8, !tbaa !1947
  %862 = add i64 %670, 762
  %863 = add i64 %670, 23
  %864 = load i64, i64* %12, align 1, !tbaa !1947
  %865 = add i64 %864, -8
  %866 = inttoptr i64 %865 to i64*
  store i64 %863, i64* %866
  store i64 %865, i64* %12, align 8, !tbaa !1947
  %867 = tail call %struct.Memory* @sub_400e40_matgen(%struct.State* nonnull %0, i64 %862, %struct.Memory* %651)
  %868 = load i64, i64* %3, align 8
  %869 = add i64 %868, 707
  %870 = add i64 %868, 5
  %871 = load i64, i64* %12, align 1, !tbaa !1947
  %872 = add i64 %871, -8
  %873 = inttoptr i64 %872 to i64*
  store i64 %870, i64* %873
  store i64 %872, i64* %12, align 8, !tbaa !1947
  %874 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %869, %struct.Memory* %867)
  %875 = load i64, i64* %13, align 8
  %876 = add i64 %875, -120
  %877 = load i64, i64* %3, align 8
  store i64 %876, i64* %14, align 8, !tbaa !1947
  store i64 1, i64* %238, align 8, !tbaa !1947
  %878 = add i64 %875, -56
  %879 = load double, double* %219, align 1
  %880 = inttoptr i64 %878 to double*
  store double %879, double* %880
  %881 = add i64 %875, -32
  %882 = inttoptr i64 %881 to i64*
  %883 = load i64, i64* %882
  store i64 %883, i64* %11, align 8, !tbaa !1947
  %884 = add i64 %875, -124
  %885 = inttoptr i64 %884 to i32*
  %886 = load i32, i32* %885
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %10, align 8, !tbaa !1947
  %888 = add i64 %875, -116
  %889 = inttoptr i64 %888 to i32*
  %890 = load i32, i32* %889
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %9, align 8, !tbaa !1947
  %892 = add i64 %875, -112
  %893 = inttoptr i64 %892 to i64*
  %894 = load i64, i64* %893
  store i64 %894, i64* %8, align 8, !tbaa !1947
  %895 = add i64 %877, 1198
  %896 = add i64 %877, 34
  %897 = load i64, i64* %12, align 1, !tbaa !1947
  %898 = add i64 %897, -8
  %899 = inttoptr i64 %898 to i64*
  store i64 %896, i64* %899
  store i64 %898, i64* %12, align 8, !tbaa !1947
  %900 = tail call %struct.Memory* @sub_401010_dgefa(%struct.State* nonnull %0, i64 %895, %struct.Memory* %874)
  %901 = load i64, i64* %3, align 8
  %902 = add i64 %901, 668
  %903 = add i64 %901, 5
  %904 = load i64, i64* %12, align 1, !tbaa !1947
  %905 = add i64 %904, -8
  %906 = inttoptr i64 %905 to i64*
  store i64 %903, i64* %906
  store i64 %905, i64* %12, align 8, !tbaa !1947
  %907 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %902, %struct.Memory* %900)
  %908 = load i64, i64* %13, align 8
  %909 = add i64 %908, -56
  %910 = load i64, i64* %3, align 8
  %911 = load double, double* %219, align 1
  %912 = inttoptr i64 %909 to double*
  %913 = load double, double* %912
  %914 = fsub double %911, %913
  %915 = add i64 %908, -80
  %916 = inttoptr i64 %915 to double*
  %917 = load double, double* %916
  %918 = fadd double %914, %917
  store double %918, double* %219, align 1, !tbaa !1971
  %919 = inttoptr i64 %915 to double*
  store double %918, double* %919
  %920 = add i64 %910, 663
  %921 = add i64 %910, 20
  %922 = load i64, i64* %12, align 1, !tbaa !1947
  %923 = add i64 %922, -8
  %924 = inttoptr i64 %923 to i64*
  store i64 %921, i64* %924
  store i64 %923, i64* %12, align 8, !tbaa !1947
  %925 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %920, %struct.Memory* %907)
  %926 = load i64, i64* %3, align 8
  store i64 0, i64* %238, align 8, !tbaa !1947
  %927 = load i64, i64* %13, align 8
  %928 = add i64 %927, -56
  %929 = load double, double* %219, align 1
  %930 = inttoptr i64 %928 to double*
  store double %929, double* %930
  %931 = add i64 %927, -32
  %932 = inttoptr i64 %931 to i64*
  %933 = load i64, i64* %932
  store i64 %933, i64* %11, align 8, !tbaa !1947
  %934 = add i64 %927, -124
  %935 = inttoptr i64 %934 to i32*
  %936 = load i32, i32* %935
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %10, align 8, !tbaa !1947
  %938 = add i64 %927, -116
  %939 = inttoptr i64 %938 to i32*
  %940 = load i32, i32* %939
  %941 = add i64 %927, -112
  %942 = inttoptr i64 %941 to i64*
  %943 = load i64, i64* %942
  store i64 %943, i64* %8, align 8, !tbaa !1947
  %944 = add i64 %927, -40
  %945 = inttoptr i64 %944 to i64*
  %946 = load i64, i64* %945
  store i64 %946, i64* %14, align 8, !tbaa !1947
  %947 = add i64 %927, -152
  %948 = inttoptr i64 %947 to i32*
  store i32 1, i32* %948
  %949 = zext i32 %940 to i64
  store i64 %949, i64* %9, align 8, !tbaa !1947
  %950 = load i64, i64* %12, align 8
  %951 = inttoptr i64 %950 to i32*
  store i32 1, i32* %951
  %952 = add i64 %926, 2659
  %953 = add i64 %926, 51
  %954 = add i64 %950, -8
  %955 = inttoptr i64 %954 to i64*
  store i64 %953, i64* %955
  store i64 %954, i64* %12, align 8, !tbaa !1947
  %956 = tail call %struct.Memory* @sub_401600_dgesl(%struct.State* nonnull %0, i64 %952, %struct.Memory* %925)
  %957 = load i64, i64* %3, align 8
  %958 = add i64 %957, 592
  %959 = add i64 %957, 5
  %960 = load i64, i64* %12, align 1, !tbaa !1947
  %961 = add i64 %960, -8
  %962 = inttoptr i64 %961 to i64*
  store i64 %959, i64* %962
  store i64 %961, i64* %12, align 8, !tbaa !1947
  %963 = tail call %struct.Memory* @sub_400e20_second(%struct.State* nonnull %0, i64 %958, %struct.Memory* %956)
  %964 = load i64, i64* %13, align 8
  %965 = add i64 %964, -56
  %966 = load i64, i64* %3, align 8
  %967 = load double, double* %219, align 1
  %968 = inttoptr i64 %965 to double*
  %969 = load double, double* %968
  %970 = fsub double %967, %969
  %971 = add i64 %964, -72
  %972 = inttoptr i64 %971 to double*
  %973 = load double, double* %972
  %974 = fadd double %970, %973
  store double %974, double* %219, align 1, !tbaa !1971
  %975 = inttoptr i64 %971 to double*
  store double %974, double* %975
  %976 = add i64 %964, -136
  %977 = inttoptr i64 %976 to i64*
  %978 = load i64, i64* %977
  %979 = add i64 %978, 1
  %980 = inttoptr i64 %976 to i64*
  store i64 %979, i64* %980
  %981 = add i64 %966, -160
  br label %block_400b35

block_400d80:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23.block_400d80_crit_edge, %block_400d78
  %982 = phi i64 [ %572, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23.block_400d80_crit_edge ], [ %386, %block_400d78 ]
  %983 = phi i64 [ %571, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23.block_400d80_crit_edge ], [ %388, %block_400d78 ]
  %984 = phi %struct.Memory* [ %567, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit23.block_400d80_crit_edge ], [ %567, %block_400d78 ]
  store i32 0, i32* %55, align 1, !tbaa !1951
  store i32 0, i32* %57, align 1, !tbaa !1951
  store i32 0, i32* %58, align 1, !tbaa !1951
  store i32 0, i32* %60, align 1, !tbaa !1951
  %985 = add i64 %982, -96
  %986 = add i64 %983, 8
  store i64 %986, i64* %3, align 8
  %987 = load double, double* %219, align 1
  %988 = inttoptr i64 %985 to double*
  %989 = load double, double* %988
  %990 = fcmp uno double %987, %989
  br i1 %990, label %991, label %1005

; <label>:991                                     ; preds = %block_400d80
  %992 = fadd double %987, %989
  %993 = bitcast double %992 to i64
  %994 = and i64 %993, 9221120237041090560
  %995 = icmp eq i64 %994, 9218868437227405312
  %996 = and i64 %993, 2251799813685247
  %997 = icmp ne i64 %996, 0
  %998 = and i1 %995, %997
  br i1 %998, label %999, label %1004

; <label>:999                                     ; preds = %991
  %1000 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %986, %struct.Memory* %984) #11
  %1001 = load i64, i64* %3, align 8
  %1002 = load i8, i8* %27, align 1, !tbaa !1953
  %1003 = load i8, i8* %43, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:1004                                    ; preds = %991
  br label %1014

; <label>:1005                                    ; preds = %block_400d80
  %1006 = fcmp ogt double %987, %989
  br i1 %1006, label %1007, label %1008

; <label>:1007                                    ; preds = %1005
  br label %1014

; <label>:1008                                    ; preds = %1005
  %1009 = fcmp olt double %987, %989
  br i1 %1009, label %1010, label %1011

; <label>:1010                                    ; preds = %1008
  br label %1014

; <label>:1011                                    ; preds = %1008
  %1012 = fcmp oeq double %987, %989
  br i1 %1012, label %1013, label %1014

; <label>:1013                                    ; preds = %1011
  br label %1014

; <label>:1014                                    ; preds = %1013, %1011, %1010, %1007, %1004
  %1015 = phi i8 [ 1, %1013 ], [ %564, %1011 ], [ 0, %1010 ], [ 0, %1007 ], [ 1, %1004 ]
  %1016 = phi i8 [ 0, %1013 ], [ %565, %1011 ], [ 1, %1010 ], [ 0, %1007 ], [ 1, %1004 ]
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %1014, %999
  %1017 = phi i8 [ %1003, %999 ], [ %1015, %1014 ]
  %1018 = phi i8 [ %1002, %999 ], [ %1016, %1014 ]
  %1019 = phi i64 [ %1001, %999 ], [ %986, %1014 ]
  %1020 = phi %struct.Memory* [ %1000, %999 ], [ %984, %1014 ]
  %1021 = or i8 %1017, %1018
  %1022 = icmp ne i8 %1021, 0
  %1023 = select i1 %1022, i64 14, i64 6
  %1024 = add i64 %1019, %1023
  br i1 %1022, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400d96_crit_edge, label %block_400d8e

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_400d96_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1025 = load i64, i64* %13, align 8
  br label %block_400d96
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400690_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_400690:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 1, !tbaa !1947
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %7, i64* %10
  store i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64* %4, align 8, !tbaa !1947
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp ult (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 14) to i8), i8* %11, align 1, !tbaa !1953
  %17 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 -14) to i32), i32 255)) #6
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %12, align 1, !tbaa !1966
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 add (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 -14), i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64))), i64 4) to i8), i8 1), i8* %13, align 1, !tbaa !1967
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 14) to i8), i8* %14, align 1, !tbaa !1968
  store i8 trunc (i64 lshr (i64 add (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 -14), i64 63) to i8), i8* %15, align 1, !tbaa !1969
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 -14), i64 63), i64 lshr (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63)), i64 lshr (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63)), i64 2) to i8), i8* %16, align 1, !tbaa !1970
  br i1 or (i1 icmp eq (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 14), i1 icmp ult (i64 sub (i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 14)), label %block_4006c0, label %block_4006a5

block_4006a5:                                     ; preds = %block_400690
  store i64 0, i64* %4, align 8, !tbaa !1947
  store i8 0, i8* %11, align 1, !tbaa !1953
  store i8 1, i8* %12, align 1, !tbaa !1966
  store i8 1, i8* %14, align 1, !tbaa !1968
  store i8 0, i8* %15, align 1, !tbaa !1969
  store i8 0, i8* %16, align 1, !tbaa !1970
  store i8 0, i8* %13, align 1, !tbaa !1967
  br label %block_4006c0

block_4006c0:                                     ; preds = %block_4006a5, %block_400690
  %21 = inttoptr i64 %9 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %6, align 8, !tbaa !1947
  %23 = inttoptr i64 %8 to i64*
  %24 = load i64, i64* %23
  store i64 %24, i64* %3, align 8, !tbaa !1947
  %25 = add i64 %8, 8
  store i64 %25, i64* %5, align 8, !tbaa !1947
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401f70_daxpy_r(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_401f70:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %12 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %17 = load i64, i64* %15, align 8
  %18 = load i64, i64* %14, align 1, !tbaa !1947
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20
  store i64 %19, i64* %14, align 8, !tbaa !1947
  store i64 %19, i64* %15, align 8, !tbaa !1947
  %21 = add i64 %18, -12
  %22 = load i32, i32* %7, align 4
  %23 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %23
  %24 = add i64 %18, -24
  %25 = bitcast [32 x %union.VectorReg]* %16 to i8*
  %26 = bitcast [32 x %union.VectorReg]* %16 to double*
  %27 = load double, double* %26, align 1
  %28 = inttoptr i64 %24 to double*
  store double %27, double* %28
  %29 = add i64 %18, -32
  %30 = load i64, i64* %13, align 8
  %31 = inttoptr i64 %29 to i64*
  store i64 %30, i64* %31
  %32 = add i64 %18, -36
  %33 = load i32, i32* %5, align 4
  %34 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %34
  %35 = add i64 %18, -48
  %36 = load i64, i64* %11, align 8
  %37 = inttoptr i64 %35 to i64*
  store i64 %36, i64* %37
  %38 = add i64 %18, -52
  %39 = load i32, i32* %9, align 4
  %40 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %40
  %41 = add i64 %18, -12
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %44, align 1, !tbaa !1953
  %45 = and i32 %43, 255
  %46 = tail call i32 @llvm.ctpop.i32(i32 %45) #6
  %47 = and i32 %46, 1
  %48 = xor i32 %47, 1
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !1966
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %51, align 1, !tbaa !1967
  %52 = icmp eq i32 %43, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %53, i8* %54, align 1, !tbaa !1968
  %55 = lshr i32 %43, 31
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %56, i8* %57, align 1, !tbaa !1969
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %58, align 1, !tbaa !1970
  %59 = xor i1 %52, true
  %60 = icmp eq i8 %56, 0
  %61 = and i1 %60, %59
  %62 = select i1 %61, i64 42, i64 37
  %63 = add i64 %62, %1
  br i1 %61, label %block_401f9a, label %block_401f95

block_401fff:                                     ; preds = %block_401ff5
  %64 = add i64 %75, -4
  %65 = inttoptr i64 %64 to i32*
  %66 = load i32, i32* %65
  %67 = sub i32 1, %66
  %68 = mul i32 %80, %67
  %69 = add i32 %68, 1
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %70, -56
  %72 = add i64 %85, 18
  %73 = inttoptr i64 %71 to i32*
  store i32 %69, i32* %73
  br label %block_402011

block_401ff5:                                     ; preds = %block_401fe3, %block_401fcb
  %74 = phi i64 [ %170, %block_401fcb ], [ %229, %block_401fe3 ]
  %75 = phi i64 [ %88, %block_401fcb ], [ %227, %block_401fe3 ]
  %76 = phi %struct.Memory* [ %287, %block_401fcb ], [ %287, %block_401fe3 ]
  %77 = add i64 %75, -44
  %78 = add i64 %74, 4
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79
  %81 = lshr i32 %80, 31
  %82 = trunc i32 %81 to i8
  %83 = icmp ne i8 %82, 0
  %84 = select i1 %83, i64 6, i64 24
  %85 = add i64 %84, %78
  %86 = icmp eq i8 %82, 0
  br i1 %86, label %block_402011, label %block_401fff

block_401fb7:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %block_401fac
  %87 = phi i64 [ %290, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %205, %block_401fac ]
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %88, -28
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32, i32* %90
  %92 = icmp eq i32 %91, 1
  %93 = select i1 %92, i64 10, i64 20
  %94 = add i64 %87, %93
  br i1 %92, label %block_401fc1, label %block_401fcb

block_402018:                                     ; preds = %block_402024, %block_402011
  %95 = phi i64 [ %211, %block_402011 ], [ %331, %block_402024 ]
  %96 = phi %struct.Memory* [ %209, %block_402011 ], [ %96, %block_402024 ]
  %97 = inttoptr i64 %210 to i32*
  %98 = load i32, i32* %97
  %99 = inttoptr i64 %213 to i32*
  %100 = load i32, i32* %99
  %101 = sub i32 %98, %100
  %102 = lshr i32 %101, 31
  %103 = trunc i32 %102 to i8
  %104 = lshr i32 %98, 31
  %105 = lshr i32 %100, 31
  %106 = xor i32 %105, %104
  %107 = xor i32 %102, %104
  %108 = add nuw nsw i32 %107, %106
  %109 = icmp eq i32 %108, 2
  %110 = icmp ne i8 %103, 0
  %111 = xor i1 %110, %109
  %112 = select i1 %111, i64 12, i64 92
  %113 = add i64 %95, %112
  br i1 %111, label %block_402024, label %block_402074

block_402074:                                     ; preds = %block_402018
  %114 = phi i1 [ %109, %block_402018 ]
  %115 = phi i8 [ %103, %block_402018 ]
  %116 = phi i32 [ %101, %block_402018 ]
  %117 = phi i32 [ %100, %block_402018 ]
  %118 = phi i32 [ %98, %block_402018 ]
  %119 = phi %struct.Memory* [ %96, %block_402018 ]
  %120 = zext i32 %118 to i64
  store i64 %120, i64* %10, align 8, !tbaa !1947
  %121 = icmp ult i32 %118, %117
  %122 = zext i1 %121 to i8
  %123 = and i32 %116, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #6
  %125 = and i32 %124, 1
  %126 = xor i32 %125, 1
  %127 = trunc i32 %126 to i8
  %128 = xor i32 %117, %118
  %129 = xor i32 %128, %116
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = icmp eq i32 %118, %117
  %134 = zext i1 %133 to i8
  %135 = zext i1 %114 to i8
  store i8 %122, i8* %44, align 1, !tbaa !1953
  store i8 %127, i8* %50, align 1, !tbaa !1966
  store i8 %132, i8* %51, align 1, !tbaa !1967
  store i8 %134, i8* %54, align 1, !tbaa !1968
  store i8 %115, i8* %57, align 1, !tbaa !1969
  store i8 %135, i8* %58, align 1, !tbaa !1970
  br label %block_4020ca

block_401fb2:                                     ; preds = %block_401fac
  br label %block_4020ca

block_40208c:                                     ; preds = %block_402080
  %136 = inttoptr i64 %235 to i64*
  %137 = load i64, i64* %136
  %138 = sext i32 %335 to i64
  %139 = shl nsw i64 %138, 3
  %140 = add i64 %139, %137
  %141 = inttoptr i64 %140 to double*
  %142 = load double, double* %141
  %143 = inttoptr i64 %236 to double*
  %144 = load double, double* %143
  %145 = inttoptr i64 %237 to i64*
  %146 = load i64, i64* %145
  %147 = add i64 %139, %146
  %148 = inttoptr i64 %147 to double*
  %149 = load double, double* %148
  %150 = fmul double %144, %149
  store double %150, double* %255, align 1, !tbaa !1971
  store i64 0, i64* %256, align 1, !tbaa !1971
  %151 = fadd double %142, %150
  store double %151, double* %26, align 1, !tbaa !1971
  store i64 0, i64* %245, align 1, !tbaa !1971
  store i64 %138, i64* %11, align 8, !tbaa !1947
  %152 = inttoptr i64 %140 to double*
  store double %151, double* %152
  %153 = inttoptr i64 %231 to i32*
  %154 = load i32, i32* %153
  %155 = add i32 %154, 1
  %156 = inttoptr i64 %231 to i32*
  store i32 %155, i32* %156
  %157 = add i64 %350, -12
  br label %block_402080

block_401fcb:                                     ; preds = %block_401fc1, %block_401fb7
  %158 = phi i64 [ %243, %block_401fc1 ], [ %94, %block_401fb7 ]
  %159 = add i64 %88, -52
  %160 = inttoptr i64 %159 to i32*
  store i32 1, i32* %160
  %161 = add i64 %88, -56
  %162 = inttoptr i64 %161 to i32*
  store i32 1, i32* %162
  %163 = add i64 %158, 18
  %164 = inttoptr i64 %89 to i32*
  %165 = load i32, i32* %164
  %166 = lshr i32 %165, 31
  %167 = trunc i32 %166 to i8
  %168 = icmp ne i8 %167, 0
  %169 = select i1 %168, i64 6, i64 24
  %170 = add i64 %169, %163
  %171 = icmp eq i8 %167, 0
  br i1 %171, label %block_401ff5, label %block_401fe3

block_4020ca.loopexit:                            ; preds = %block_402080
  %172 = phi i1 [ %346, %block_402080 ]
  %173 = phi i8 [ %340, %block_402080 ]
  %174 = phi i32 [ %338, %block_402080 ]
  %175 = phi i32 [ %337, %block_402080 ]
  %176 = phi i32 [ %335, %block_402080 ]
  %177 = phi %struct.Memory* [ %333, %block_402080 ]
  %178 = zext i32 %176 to i64
  store i64 %178, i64* %10, align 8, !tbaa !1947
  %179 = icmp ult i32 %176, %175
  %180 = zext i1 %179 to i8
  %181 = and i32 %174, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181) #6
  %183 = and i32 %182, 1
  %184 = xor i32 %183, 1
  %185 = trunc i32 %184 to i8
  %186 = xor i32 %175, %176
  %187 = xor i32 %186, %174
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = icmp eq i32 %176, %175
  %192 = zext i1 %191 to i8
  %193 = zext i1 %172 to i8
  store i8 %180, i8* %44, align 1, !tbaa !1953
  store i8 %185, i8* %50, align 1, !tbaa !1966
  store i8 %190, i8* %51, align 1, !tbaa !1967
  store i8 %192, i8* %54, align 1, !tbaa !1968
  store i8 %173, i8* %57, align 1, !tbaa !1969
  store i8 %193, i8* %58, align 1, !tbaa !1970
  br label %block_4020ca

block_4020ca:                                     ; preds = %block_401f95, %block_4020ca.loopexit, %block_401fb2, %block_402074
  %194 = phi %struct.Memory* [ %119, %block_402074 ], [ %287, %block_401fb2 ], [ %2, %block_401f95 ], [ %177, %block_4020ca.loopexit ]
  %195 = load i64, i64* %14, align 1, !tbaa !1947
  %196 = add i64 %195, 8
  %197 = inttoptr i64 %195 to i64*
  %198 = load i64, i64* %197
  store i64 %198, i64* %15, align 8, !tbaa !1947
  %199 = inttoptr i64 %196 to i64*
  %200 = load i64, i64* %199
  store i64 %200, i64* %3, align 8, !tbaa !1947
  %201 = add i64 %195, 16
  store i64 %201, i64* %14, align 8, !tbaa !1947
  ret %struct.Memory* %194

block_401f95:                                     ; preds = %block_401f70
  br label %block_4020ca

block_401fac:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %202 = load i8, i8* %50, align 1, !tbaa !1966
  %203 = icmp ne i8 %202, 0
  %204 = select i1 %203, i64 11, i64 6
  %205 = add i64 %290, %204
  %206 = icmp eq i8 %202, 1
  br i1 %206, label %block_401fb7, label %block_401fb2

block_402011:                                     ; preds = %block_401ff5, %block_401fff
  %207 = phi i64 [ %85, %block_401ff5 ], [ %72, %block_401fff ]
  %208 = phi i64 [ %75, %block_401ff5 ], [ %70, %block_401fff ]
  %209 = phi %struct.Memory* [ %76, %block_401ff5 ], [ %76, %block_401fff ]
  %210 = add i64 %208, -48
  %211 = add i64 %207, 7
  %212 = inttoptr i64 %210 to i32*
  store i32 0, i32* %212
  %213 = add i64 %208, -4
  %214 = add i64 %208, -40
  %215 = add i64 %208, -56
  %216 = add i64 %208, -16
  %217 = add i64 %208, -24
  %218 = add i64 %208, -52
  %219 = add i64 %208, -28
  %220 = add i64 %208, -44
  br label %block_402018

block_401fe3:                                     ; preds = %block_401fcb
  %221 = add i64 %88, -4
  %222 = inttoptr i64 %221 to i32*
  %223 = load i32, i32* %222
  %224 = sub i32 1, %223
  %225 = mul i32 %165, %224
  %226 = add i32 %225, 1
  %227 = load i64, i64* %15, align 8
  %228 = add i64 %227, -52
  %229 = add i64 %170, 18
  %230 = inttoptr i64 %228 to i32*
  store i32 %226, i32* %230
  br label %block_401ff5

block_402079:                                     ; preds = %block_401fc1
  %231 = add i64 %88, -48
  %232 = add i64 %243, 7
  %233 = inttoptr i64 %231 to i32*
  store i32 0, i32* %233
  %234 = add i64 %88, -4
  %235 = add i64 %88, -40
  %236 = add i64 %88, -16
  %237 = add i64 %88, -24
  br label %block_402080

block_401fc1:                                     ; preds = %block_401fb7
  %238 = add i64 %88, -44
  %239 = inttoptr i64 %238 to i32*
  %240 = load i32, i32* %239
  %241 = icmp eq i32 %240, 1
  %242 = select i1 %241, i64 184, i64 10
  %243 = add i64 %94, %242
  br i1 %241, label %block_402079, label %block_401fcb

block_401f9a:                                     ; preds = %block_401f70
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %246 = bitcast [32 x %union.VectorReg]* %16 to i32*
  store i32 0, i32* %246, align 1, !tbaa !1951
  %247 = getelementptr inbounds i8, i8* %25, i64 4
  %248 = bitcast i8* %247 to i32*
  store i32 0, i32* %248, align 1, !tbaa !1951
  %249 = bitcast i64* %245 to i32*
  store i32 0, i32* %249, align 1, !tbaa !1951
  %250 = getelementptr inbounds i8, i8* %25, i64 12
  %251 = bitcast i8* %250 to i32*
  store i32 0, i32* %251, align 1, !tbaa !1951
  %252 = add i64 %18, -24
  %253 = inttoptr i64 %252 to double*
  %254 = load double, double* %253
  %255 = bitcast %union.VectorReg* %244 to double*
  store double %254, double* %255, align 1, !tbaa !1971
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %257 = bitcast i64* %256 to double*
  store double 0.000000e+00, double* %257, align 1, !tbaa !1971
  %258 = add i64 %63, 12
  store i64 %258, i64* %3, align 8
  %259 = load double, double* %26, align 1
  %260 = fcmp uno double %254, %259
  br i1 %260, label %261, label %274

; <label>:261                                     ; preds = %block_401f9a
  %262 = fadd double %254, %259
  %263 = bitcast double %262 to i64
  %264 = and i64 %263, 9221120237041090560
  %265 = icmp eq i64 %264, 9218868437227405312
  %266 = and i64 %263, 2251799813685247
  %267 = icmp ne i64 %266, 0
  %268 = and i1 %265, %267
  br i1 %268, label %269, label %273

; <label>:269                                     ; preds = %261
  %270 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %258, %struct.Memory* %2) #11
  %271 = load i64, i64* %3, align 8
  %272 = load i8, i8* %54, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:273                                     ; preds = %261
  store i8 1, i8* %54, align 1, !tbaa !2065
  store i8 1, i8* %50, align 1, !tbaa !2065
  store i8 1, i8* %44, align 1, !tbaa !2065
  br label %283

; <label>:274                                     ; preds = %block_401f9a
  %275 = fcmp ogt double %254, %259
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %274
  store i8 0, i8* %54, align 1, !tbaa !2065
  store i8 0, i8* %50, align 1, !tbaa !2065
  store i8 0, i8* %44, align 1, !tbaa !2065
  br label %283

; <label>:277                                     ; preds = %274
  %278 = fcmp olt double %254, %259
  br i1 %278, label %279, label %280

; <label>:279                                     ; preds = %277
  store i8 0, i8* %54, align 1, !tbaa !2065
  store i8 0, i8* %50, align 1, !tbaa !2065
  store i8 1, i8* %44, align 1, !tbaa !2065
  br label %283

; <label>:280                                     ; preds = %277
  %281 = fcmp oeq double %254, %259
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %280
  store i8 1, i8* %54, align 1, !tbaa !2065
  store i8 0, i8* %50, align 1, !tbaa !2065
  store i8 0, i8* %44, align 1, !tbaa !2065
  br label %283

; <label>:283                                     ; preds = %282, %280, %279, %276, %273
  %284 = phi i8 [ 1, %282 ], [ 0, %280 ], [ 0, %279 ], [ 0, %276 ], [ 1, %273 ]
  store i8 0, i8* %58, align 1, !tbaa !2065
  store i8 0, i8* %57, align 1, !tbaa !2065
  store i8 0, i8* %51, align 1, !tbaa !2065
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %283, %269
  %285 = phi i8 [ %272, %269 ], [ %284, %283 ]
  %286 = phi i64 [ %271, %269 ], [ %258, %283 ]
  %287 = phi %struct.Memory* [ %270, %269 ], [ %2, %283 ]
  %288 = icmp eq i8 %285, 0
  %289 = select i1 %288, i64 17, i64 6
  %290 = add i64 %286, %289
  br i1 %288, label %block_401fb7, label %block_401fac

block_402024:                                     ; preds = %block_402018
  %291 = inttoptr i64 %214 to i64*
  %292 = load i64, i64* %291
  %293 = inttoptr i64 %215 to i32*
  %294 = load i32, i32* %293
  %295 = sext i32 %294 to i64
  %296 = shl nsw i64 %295, 3
  %297 = add i64 %296, %292
  %298 = inttoptr i64 %297 to double*
  %299 = load double, double* %298
  %300 = inttoptr i64 %216 to double*
  %301 = load double, double* %300
  %302 = inttoptr i64 %217 to i64*
  %303 = load i64, i64* %302
  %304 = inttoptr i64 %218 to i32*
  %305 = load i32, i32* %304
  %306 = sext i32 %305 to i64
  %307 = shl nsw i64 %306, 3
  %308 = add i64 %307, %303
  %309 = inttoptr i64 %308 to double*
  %310 = load double, double* %309
  %311 = fmul double %301, %310
  store double %311, double* %255, align 1, !tbaa !1971
  store i64 0, i64* %256, align 1, !tbaa !1971
  %312 = fadd double %299, %311
  store double %312, double* %26, align 1, !tbaa !1971
  store i64 0, i64* %245, align 1, !tbaa !1971
  store i64 %295, i64* %11, align 8, !tbaa !1947
  %313 = inttoptr i64 %297 to double*
  store double %312, double* %313
  %314 = inttoptr i64 %218 to i32*
  %315 = load i32, i32* %314
  %316 = inttoptr i64 %219 to i32*
  %317 = load i32, i32* %316
  %318 = add i32 %317, %315
  %319 = inttoptr i64 %218 to i32*
  store i32 %318, i32* %319
  %320 = inttoptr i64 %215 to i32*
  %321 = load i32, i32* %320
  %322 = inttoptr i64 %220 to i32*
  %323 = load i32, i32* %322
  %324 = add i32 %323, %321
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %12, align 8, !tbaa !1947
  %326 = inttoptr i64 %215 to i32*
  store i32 %324, i32* %326
  %327 = inttoptr i64 %210 to i32*
  %328 = load i32, i32* %327
  %329 = add i32 %328, 1
  %330 = inttoptr i64 %210 to i32*
  store i32 %329, i32* %330
  %331 = add i64 %113, -12
  br label %block_402018

block_402080:                                     ; preds = %block_402079, %block_40208c
  %332 = phi i64 [ %232, %block_402079 ], [ %157, %block_40208c ]
  %333 = phi %struct.Memory* [ %287, %block_402079 ], [ %333, %block_40208c ]
  %334 = inttoptr i64 %231 to i32*
  %335 = load i32, i32* %334
  %336 = inttoptr i64 %234 to i32*
  %337 = load i32, i32* %336
  %338 = sub i32 %335, %337
  %339 = lshr i32 %338, 31
  %340 = trunc i32 %339 to i8
  %341 = lshr i32 %335, 31
  %342 = lshr i32 %337, 31
  %343 = xor i32 %342, %341
  %344 = xor i32 %339, %341
  %345 = add nuw nsw i32 %344, %343
  %346 = icmp eq i32 %345, 2
  %347 = icmp ne i8 %340, 0
  %348 = xor i1 %347, %346
  %349 = select i1 %348, i64 12, i64 74
  %350 = add i64 %332, %349
  br i1 %348, label %block_40208c, label %block_4020ca.loopexit
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005a0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {
block_4005a0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, -8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %14 = load i64, i64* getelementptr inbounds (%seg_603ff8__got_type, %seg_603ff8__got_type* @seg_603ff8__got, i32 0, i32 0)
  store i64 %14, i64* %4, align 8, !tbaa !1947
  store i8 0, i8* %8, align 1, !tbaa !1953
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #6
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %9, align 1, !tbaa !1966
  %21 = icmp eq i64 %14, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %11, align 1, !tbaa !1968
  %23 = lshr i64 %14, 63
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %12, align 1, !tbaa !1969
  store i8 0, i8* %13, align 1, !tbaa !1970
  store i8 0, i8* %10, align 1, !tbaa !1967
  %25 = select i1 %21, i64 21, i64 16
  %26 = add i64 %25, %1
  br i1 %21, label %block_4005b5, label %block_4005b0

block_4005b5:                                     ; preds = %block_4005b0, %block_4005a0
  %27 = phi i64 [ %7, %block_4005a0 ], [ %59, %block_4005b0 ]
  %28 = phi %struct.Memory* [ %2, %block_4005a0 ], [ %58, %block_4005b0 ]
  %29 = add i64 %27, 8
  %30 = icmp ugt i64 %27, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %8, align 1, !tbaa !1953
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #6
  %35 = and i32 %34, 1
  %36 = xor i32 %35, 1
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %9, align 1, !tbaa !1966
  %38 = xor i64 %29, %27
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %10, align 1, !tbaa !1967
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %11, align 1, !tbaa !1968
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %12, align 1, !tbaa !1969
  %46 = lshr i64 %27, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %13, align 1, !tbaa !1970
  %51 = inttoptr i64 %29 to i64*
  %52 = load i64, i64* %51
  store i64 %52, i64* %3, align 8, !tbaa !1947
  %53 = add i64 %27, 16
  store i64 %53, i64* %5, align 8, !tbaa !1947
  ret %struct.Memory* %28

block_4005b0:                                     ; preds = %block_4005a0
  %54 = add i64 %26, 160
  %55 = add i64 %26, 5
  %56 = add i64 %6, -16
  %57 = inttoptr i64 %56 to i64*
  store i64 %55, i64* %57
  store i64 %56, i64* %5, align 8, !tbaa !1947
  %58 = tail call %struct.Memory* @sub_400650(%struct.State* nonnull %0, i64 %54, %struct.Memory* %2)
  %59 = load i64, i64* %5, align 8
  br label %block_4005b5
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400730_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_400730:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 and (i64 ptrtoint (%seg_603e10__jcr_type* @seg_603e10__jcr to i64), i64 4294967295), i64* %3, align 8, !tbaa !1947
  %4 = load i64, i64* inttoptr (i64 and (i64 ptrtoint (%seg_603e10__jcr_type* @seg_603e10__jcr to i64), i64 4294967295) to i64*)
  %5 = icmp eq i64 %4, 0
  %6 = select i1 %5, i64 11, i64 16
  %7 = add i64 %6, %1
  br i1 %5, label %block_4006d0, label %block_400740

block_400740:                                     ; preds = %block_400730
  %8 = add i64 %7, -5
  br label %block_4006d0

block_4006d0:                                     ; preds = %block_400740, %block_400730
  %9 = phi i64 [ %8, %block_400740 ], [ %7, %block_400730 ]
  %10 = add i64 %9, -107
  %11 = tail call %struct.Memory* @sub_4006d0_register_tm_clones(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  ret %struct.Memory* %11
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400710___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_400710:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1, !tbaa !1953
  %7 = zext i8 %5 to i32
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #6
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1, !tbaa !1966
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1, !tbaa !1967
  %14 = icmp eq i8 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1, !tbaa !1968
  %17 = lshr i8 %5, 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %17, i8* %18, align 1, !tbaa !1969
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1, !tbaa !1970
  %20 = select i1 %14, i64 9, i64 26
  %21 = add i64 %20, %1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br i1 %14, label %block_400719, label %block_400710.block_40072a_crit_edge

block_400710.block_40072a_crit_edge:              ; preds = %block_400710
  %23 = load i64, i64* %22, align 1, !tbaa !1947
  br label %block_40072a

block_40072a:                                     ; preds = %block_400719, %block_400710.block_40072a_crit_edge
  %24 = phi i64 [ %23, %block_400710.block_40072a_crit_edge ], [ %39, %block_400719 ]
  %25 = phi %struct.Memory* [ %2, %block_400710.block_40072a_crit_edge ], [ %37, %block_400719 ]
  %26 = inttoptr i64 %24 to i64*
  %27 = load i64, i64* %26
  store i64 %27, i64* %3, align 8, !tbaa !1947
  %28 = add i64 %24, 8
  store i64 %28, i64* %22, align 8, !tbaa !1947
  ret %struct.Memory* %25

block_400719:                                     ; preds = %block_400710
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %22, align 1, !tbaa !1947
  %31 = add i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  store i64 %29, i64* %32
  store i64 %31, i64* %4, align 8, !tbaa !1947
  %33 = add i64 %21, -137
  %34 = add i64 %21, 9
  %35 = add i64 %30, -16
  %36 = inttoptr i64 %35 to i64*
  store i64 %34, i64* %36
  store i64 %35, i64* %22, align 8, !tbaa !1947
  %37 = tail call %struct.Memory* @sub_400690_deregister_tm_clones(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %22, align 1, !tbaa !1947
  %39 = add i64 %38, 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40
  store i64 %41, i64* %4, align 8, !tbaa !1947
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  br label %block_40072a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401d30_idamax(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_401d30:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %10 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %16 = load i64, i64* %13, align 8
  %17 = load i64, i64* %12, align 1, !tbaa !1947
  %18 = add i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  store i64 %16, i64* %19
  store i64 %18, i64* %12, align 8, !tbaa !1947
  store i64 %18, i64* %13, align 8, !tbaa !1947
  %20 = add i64 %17, -16
  %21 = load i32, i32* %7, align 4
  %22 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %22
  %23 = add i64 %17, -24
  %24 = load i64, i64* %11, align 8
  %25 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %25
  %26 = add i64 %17, -28
  %27 = load i32, i32* %5, align 4
  %28 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %28
  %29 = add i64 %17, -16
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30
  %32 = add i32 %31, -1
  %33 = icmp eq i32 %31, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %34, i8* %35, align 1, !tbaa !1953
  %36 = and i32 %32, 255
  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #6
  %38 = and i32 %37, 1
  %39 = xor i32 %38, 1
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %40, i8* %41, align 1, !tbaa !1966
  %42 = xor i32 %32, %31
  %43 = lshr i32 %42, 4
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %45, i8* %46, align 1, !tbaa !1967
  %47 = icmp eq i32 %31, 1
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %48, i8* %49, align 1, !tbaa !1968
  %50 = lshr i32 %32, 31
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %51, i8* %52, align 1, !tbaa !1969
  %53 = lshr i32 %31, 31
  %54 = xor i32 %50, %53
  %55 = add nuw nsw i32 %54, %53
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %57, i8* %58, align 1, !tbaa !1970
  %59 = icmp ne i8 %51, 0
  %60 = xor i1 %59, %56
  %61 = select i1 %60, i64 24, i64 36
  %62 = add i64 %61, %1
  br i1 %60, label %block_401d48, label %block_401d54

block_401e9c:                                     ; preds = %block_401e37
  %63 = phi %struct.Memory* [ %67, %block_401e37 ]
  %64 = phi i64 [ %66, %block_401e37 ]
  br label %block_401ea1

block_401e37:                                     ; preds = %block_401e89, %block_401e11
  %65 = phi i64 [ %252, %block_401e11 ], [ %393, %block_401e89 ]
  %66 = phi i64 [ %18, %block_401e11 ], [ %211, %block_401e89 ]
  %67 = phi %struct.Memory* [ %2, %block_401e11 ], [ %387, %block_401e89 ]
  %68 = add i64 %66, -36
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69
  %71 = add i64 %66, -8
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32, i32* %72
  %74 = sub i32 %70, %73
  %75 = icmp ult i32 %70, %73
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %35, align 1, !tbaa !1953
  %77 = and i32 %74, 255
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77) #6
  %79 = and i32 %78, 1
  %80 = xor i32 %79, 1
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %41, align 1, !tbaa !1966
  %82 = xor i32 %73, %70
  %83 = xor i32 %82, %74
  %84 = lshr i32 %83, 4
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  store i8 %86, i8* %46, align 1, !tbaa !1967
  %87 = icmp eq i32 %70, %73
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %49, align 1, !tbaa !1968
  %89 = lshr i32 %74, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %52, align 1, !tbaa !1969
  %91 = lshr i32 %70, 31
  %92 = lshr i32 %73, 31
  %93 = xor i32 %92, %91
  %94 = xor i32 %89, %91
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %58, align 1, !tbaa !1970
  %98 = icmp ne i8 %90, 0
  %99 = xor i1 %98, %96
  %100 = select i1 %99, i64 12, i64 101
  %101 = add i64 %65, %100
  br i1 %99, label %block_401e43, label %block_401e9c

block_401d74:                                     ; preds = %block_401d6a
  %102 = add i64 %17, -48
  %103 = inttoptr i64 %102 to i32*
  store i32 1, i32* %103
  %104 = add i64 %17, -24
  %105 = inttoptr i64 %104 to i64*
  %106 = load i64, i64* %105
  %107 = bitcast [32 x %union.VectorReg]* %14 to i8*
  %108 = inttoptr i64 %106 to double*
  %109 = load double, double* %108
  %110 = bitcast [32 x %union.VectorReg]* %14 to double*
  store double %109, double* %110, align 1, !tbaa !1971
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %112 = bitcast i64* %111 to double*
  store double 0.000000e+00, double* %112, align 1, !tbaa !1971
  %113 = bitcast %union.VectorReg* %15 to i8*
  %114 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 96) to float*)
  %115 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 100) to float*)
  %116 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 104) to float*)
  %117 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 108) to float*)
  %118 = bitcast %union.VectorReg* %15 to float*
  store float %114, float* %118, align 1, !tbaa !2063
  %119 = getelementptr inbounds i8, i8* %113, i64 4
  %120 = bitcast i8* %119 to float*
  store float %115, float* %120, align 1, !tbaa !2063
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %122 = bitcast i64* %121 to float*
  store float %116, float* %122, align 1, !tbaa !2063
  %123 = getelementptr inbounds i8, i8* %113, i64 12
  %124 = bitcast i8* %123 to float*
  store float %117, float* %124, align 1, !tbaa !2063
  %125 = bitcast double %109 to i64
  %126 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %15, i64 0, i32 0, i32 0, i32 0, i64 0
  %127 = load i64, i64* %126, align 1
  %128 = and i64 %127, %125
  %129 = trunc i64 %128 to i32
  %130 = bitcast [32 x %union.VectorReg]* %14 to i32*
  store i32 %129, i32* %130, align 1, !tbaa !1951
  %131 = lshr i64 %128, 32
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds i8, i8* %107, i64 4
  %134 = bitcast i8* %133 to i32*
  store i32 %132, i32* %134, align 1, !tbaa !1951
  %135 = bitcast i64* %111 to i32*
  store i32 0, i32* %135, align 1, !tbaa !1951
  %136 = getelementptr inbounds i8, i8* %107, i64 12
  %137 = bitcast i8* %136 to i32*
  store i32 0, i32* %137, align 1, !tbaa !1951
  %138 = add i64 %17, -40
  %139 = load double, double* %110, align 1
  %140 = inttoptr i64 %138 to double*
  store double %139, double* %140
  %141 = inttoptr i64 %102 to i32*
  %142 = load i32, i32* %141
  %143 = inttoptr i64 %378 to i32*
  %144 = load i32, i32* %143
  %145 = add i32 %144, %142
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %9, align 8, !tbaa !1947
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, -40
  %149 = inttoptr i64 %148 to i32*
  store i32 %145, i32* %149
  %150 = add i64 %147, -36
  %151 = add i64 %383, 47
  %152 = inttoptr i64 %150 to i32*
  store i32 1, i32* %152
  br label %block_401da3

block_401e43:                                     ; preds = %block_401e37
  %153 = add i64 %66, -16
  %154 = inttoptr i64 %153 to i64*
  %155 = load i64, i64* %154
  store i64 %155, i64* %8, align 8, !tbaa !1947
  %156 = sext i32 %70 to i64
  store i64 %156, i64* %9, align 8, !tbaa !1947
  %157 = shl nsw i64 %156, 3
  %158 = add i64 %157, %155
  %159 = inttoptr i64 %158 to double*
  %160 = load double, double* %159
  store double %160, double* %220, align 1, !tbaa !1971
  store double 0.000000e+00, double* %222, align 1, !tbaa !1971
  %161 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 96) to float*)
  %162 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 100) to float*)
  %163 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 104) to float*)
  %164 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 108) to float*)
  store float %161, float* %228, align 1, !tbaa !2063
  store float %162, float* %230, align 1, !tbaa !2063
  store float %163, float* %232, align 1, !tbaa !2063
  store float %164, float* %234, align 1, !tbaa !2063
  %165 = bitcast double %160 to i64
  %166 = load i64, i64* %236, align 1
  %167 = and i64 %166, %165
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %240, align 1, !tbaa !1951
  %169 = lshr i64 %167, 32
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %244, align 1, !tbaa !1951
  store i32 0, i32* %245, align 1, !tbaa !1951
  store i32 0, i32* %247, align 1, !tbaa !1951
  %171 = add i64 %66, -32
  %172 = add i64 %101, 29
  store i64 %172, i64* %3, align 8
  %173 = load double, double* %220, align 1
  %174 = inttoptr i64 %171 to double*
  %175 = load double, double* %174
  %176 = fcmp uno double %173, %175
  br i1 %176, label %177, label %191

; <label>:177                                     ; preds = %block_401e43
  %178 = fadd double %173, %175
  %179 = bitcast double %178 to i64
  %180 = and i64 %179, 9221120237041090560
  %181 = icmp eq i64 %180, 9218868437227405312
  %182 = and i64 %179, 2251799813685247
  %183 = icmp ne i64 %182, 0
  %184 = and i1 %181, %183
  br i1 %184, label %185, label %190

; <label>:185                                     ; preds = %177
  %186 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %172, %struct.Memory* %67) #11
  %187 = load i64, i64* %3, align 8
  %188 = load i8, i8* %35, align 1, !tbaa !1953
  %189 = load i8, i8* %49, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:190                                     ; preds = %177
  br label %200

; <label>:191                                     ; preds = %block_401e43
  %192 = fcmp ogt double %173, %175
  br i1 %192, label %193, label %194

; <label>:193                                     ; preds = %191
  br label %200

; <label>:194                                     ; preds = %191
  %195 = fcmp olt double %173, %175
  br i1 %195, label %196, label %197

; <label>:196                                     ; preds = %194
  br label %200

; <label>:197                                     ; preds = %194
  %198 = fcmp oeq double %173, %175
  br i1 %198, label %199, label %200

; <label>:199                                     ; preds = %197
  br label %200

; <label>:200                                     ; preds = %199, %197, %196, %193, %190
  %201 = phi i8 [ 1, %199 ], [ %88, %197 ], [ 0, %196 ], [ 0, %193 ], [ 1, %190 ]
  %202 = phi i8 [ 0, %199 ], [ %76, %197 ], [ 1, %196 ], [ 0, %193 ], [ 1, %190 ]
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %200, %185
  %203 = phi i8 [ %189, %185 ], [ %201, %200 ]
  %204 = phi i8 [ %188, %185 ], [ %202, %200 ]
  %205 = phi i64 [ %187, %185 ], [ %172, %200 ]
  %206 = phi %struct.Memory* [ %186, %185 ], [ %67, %200 ]
  %207 = or i8 %203, %204
  %208 = icmp ne i8 %207, 0
  %209 = select i1 %208, i64 41, i64 6
  %210 = add i64 %205, %209
  %211 = load i64, i64* %13, align 8
  br i1 %208, label %block_401e89, label %block_401e66

block_401e11:                                     ; preds = %block_401d6a
  %212 = add i64 %17, -52
  %213 = inttoptr i64 %212 to i32*
  store i32 0, i32* %213
  %214 = add i64 %17, -24
  %215 = inttoptr i64 %214 to i64*
  %216 = load i64, i64* %215
  %217 = bitcast [32 x %union.VectorReg]* %14 to i8*
  %218 = inttoptr i64 %216 to double*
  %219 = load double, double* %218
  %220 = bitcast [32 x %union.VectorReg]* %14 to double*
  store double %219, double* %220, align 1, !tbaa !1971
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %222 = bitcast i64* %221 to double*
  store double 0.000000e+00, double* %222, align 1, !tbaa !1971
  %223 = bitcast %union.VectorReg* %15 to i8*
  %224 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 96) to float*)
  %225 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 100) to float*)
  %226 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 104) to float*)
  %227 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 108) to float*)
  %228 = bitcast %union.VectorReg* %15 to float*
  store float %224, float* %228, align 1, !tbaa !2063
  %229 = getelementptr inbounds i8, i8* %223, i64 4
  %230 = bitcast i8* %229 to float*
  store float %225, float* %230, align 1, !tbaa !2063
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %232 = bitcast i64* %231 to float*
  store float %226, float* %232, align 1, !tbaa !2063
  %233 = getelementptr inbounds i8, i8* %223, i64 12
  %234 = bitcast i8* %233 to float*
  store float %227, float* %234, align 1, !tbaa !2063
  %235 = bitcast double %219 to i64
  %236 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %15, i64 0, i32 0, i32 0, i32 0, i64 0
  %237 = load i64, i64* %236, align 1
  %238 = and i64 %237, %235
  %239 = trunc i64 %238 to i32
  %240 = bitcast [32 x %union.VectorReg]* %14 to i32*
  store i32 %239, i32* %240, align 1, !tbaa !1951
  %241 = lshr i64 %238, 32
  %242 = trunc i64 %241 to i32
  %243 = getelementptr inbounds i8, i8* %217, i64 4
  %244 = bitcast i8* %243 to i32*
  store i32 %242, i32* %244, align 1, !tbaa !1951
  %245 = bitcast i64* %221 to i32*
  store i32 0, i32* %245, align 1, !tbaa !1951
  %246 = getelementptr inbounds i8, i8* %217, i64 12
  %247 = bitcast i8* %246 to i32*
  store i32 0, i32* %247, align 1, !tbaa !1951
  %248 = add i64 %17, -40
  %249 = load double, double* %220, align 1
  %250 = inttoptr i64 %248 to double*
  store double %249, double* %250
  %251 = add i64 %17, -44
  %252 = add i64 %383, 38
  %253 = inttoptr i64 %251 to i32*
  store i32 1, i32* %253
  br label %block_401e37

block_401df5:                                     ; preds = %block_401dd2, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit16
  %254 = phi i64 [ %458, %block_401dd2 ], [ %376, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit16 ]
  %255 = phi %struct.Memory* [ %372, %block_401dd2 ], [ %372, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit16 ]
  %256 = add i64 %377, -40
  %257 = inttoptr i64 %256 to i32*
  %258 = load i32, i32* %257
  %259 = add i64 %377, -20
  %260 = inttoptr i64 %259 to i32*
  %261 = load i32, i32* %260
  %262 = add i32 %261, %258
  %263 = inttoptr i64 %256 to i32*
  store i32 %262, i32* %263
  %264 = add i64 %377, -36
  %265 = inttoptr i64 %264 to i32*
  %266 = load i32, i32* %265
  %267 = add i32 %266, 1
  %268 = inttoptr i64 %264 to i32*
  store i32 %267, i32* %268
  %269 = add i64 %254, -82
  br label %block_401da3

block_401d54:                                     ; preds = %block_401d30
  store i8 %34, i8* %35, align 1, !tbaa !1953
  store i8 %40, i8* %41, align 1, !tbaa !1966
  store i8 %45, i8* %46, align 1, !tbaa !1967
  store i8 %48, i8* %49, align 1, !tbaa !1968
  store i8 %51, i8* %52, align 1, !tbaa !1969
  store i8 %57, i8* %58, align 1, !tbaa !1970
  %270 = select i1 %47, i64 10, i64 22
  %271 = add i64 %62, %270
  br i1 %47, label %block_401d5e, label %block_401d6a

block_401e0c:                                     ; preds = %block_401da3
  %272 = phi %struct.Memory* [ %396, %block_401da3 ]
  %273 = phi i64 [ %395, %block_401da3 ]
  br label %block_401ea1

block_401ea7:                                     ; preds = %block_401ea1, %block_401d48, %block_401d5e
  %274 = phi i64 [ %470, %block_401ea1 ], [ %18, %block_401d5e ], [ %18, %block_401d48 ]
  %275 = phi i64 [ %463, %block_401ea1 ], [ %18, %block_401d5e ], [ %18, %block_401d48 ]
  %276 = phi %struct.Memory* [ %464, %block_401ea1 ], [ %2, %block_401d5e ], [ %2, %block_401d48 ]
  %277 = add i64 %275, -4
  %278 = inttoptr i64 %277 to i32*
  %279 = load i32, i32* %278
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %8, align 8, !tbaa !1947
  %281 = add i64 %274, 8
  %282 = inttoptr i64 %274 to i64*
  %283 = load i64, i64* %282
  store i64 %283, i64* %13, align 8, !tbaa !1947
  %284 = inttoptr i64 %281 to i64*
  %285 = load i64, i64* %284
  store i64 %285, i64* %3, align 8, !tbaa !1947
  %286 = add i64 %274, 16
  store i64 %286, i64* %12, align 8, !tbaa !1947
  ret %struct.Memory* %276

block_401e66:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %287 = add i64 %211, -36
  %288 = inttoptr i64 %287 to i32*
  %289 = load i32, i32* %288
  %290 = add i64 %211, -44
  %291 = inttoptr i64 %290 to i32*
  store i32 %289, i32* %291
  %292 = add i64 %211, -16
  %293 = inttoptr i64 %292 to i64*
  %294 = load i64, i64* %293
  store i64 %294, i64* %9, align 8, !tbaa !1947
  %295 = inttoptr i64 %287 to i32*
  %296 = load i32, i32* %295
  %297 = sext i32 %296 to i64
  store i64 %297, i64* %10, align 8, !tbaa !1947
  %298 = shl nsw i64 %297, 3
  %299 = add i64 %298, %294
  %300 = inttoptr i64 %299 to double*
  %301 = load double, double* %300
  store double %301, double* %220, align 1, !tbaa !1971
  store double 0.000000e+00, double* %222, align 1, !tbaa !1971
  %302 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 96) to float*)
  %303 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 100) to float*)
  %304 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 104) to float*)
  %305 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 108) to float*)
  store float %302, float* %228, align 1, !tbaa !2063
  store float %303, float* %230, align 1, !tbaa !2063
  store float %304, float* %232, align 1, !tbaa !2063
  store float %305, float* %234, align 1, !tbaa !2063
  %306 = bitcast double %301 to i64
  %307 = load i64, i64* %236, align 1
  %308 = and i64 %307, %306
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %240, align 1, !tbaa !1951
  %310 = lshr i64 %308, 32
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %244, align 1, !tbaa !1951
  store i32 0, i32* %245, align 1, !tbaa !1951
  store i32 0, i32* %247, align 1, !tbaa !1951
  %312 = add i64 %211, -32
  %313 = add i64 %210, 35
  %314 = load double, double* %220, align 1
  %315 = inttoptr i64 %312 to double*
  store double %314, double* %315
  br label %block_401e89

block_401daf:                                     ; preds = %block_401da3
  %316 = add i64 %395, -16
  %317 = inttoptr i64 %316 to i64*
  %318 = load i64, i64* %317
  store i64 %318, i64* %8, align 8, !tbaa !1947
  %319 = add i64 %395, -40
  %320 = inttoptr i64 %319 to i32*
  %321 = load i32, i32* %320
  %322 = sext i32 %321 to i64
  store i64 %322, i64* %9, align 8, !tbaa !1947
  %323 = shl nsw i64 %322, 3
  %324 = add i64 %323, %318
  %325 = inttoptr i64 %324 to double*
  %326 = load double, double* %325
  store double %326, double* %110, align 1, !tbaa !1971
  store double 0.000000e+00, double* %112, align 1, !tbaa !1971
  %327 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 96) to float*)
  %328 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 100) to float*)
  %329 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 104) to float*)
  %330 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 108) to float*)
  store float %327, float* %118, align 1, !tbaa !2063
  store float %328, float* %120, align 1, !tbaa !2063
  store float %329, float* %122, align 1, !tbaa !2063
  store float %330, float* %124, align 1, !tbaa !2063
  %331 = bitcast double %326 to i64
  %332 = load i64, i64* %126, align 1
  %333 = and i64 %332, %331
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %130, align 1, !tbaa !1951
  %335 = lshr i64 %333, 32
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %134, align 1, !tbaa !1951
  store i32 0, i32* %135, align 1, !tbaa !1951
  store i32 0, i32* %137, align 1, !tbaa !1951
  %337 = add i64 %395, -32
  %338 = add i64 %430, 29
  store i64 %338, i64* %3, align 8
  %339 = load double, double* %110, align 1
  %340 = inttoptr i64 %337 to double*
  %341 = load double, double* %340
  %342 = fcmp uno double %339, %341
  br i1 %342, label %343, label %357

; <label>:343                                     ; preds = %block_401daf
  %344 = fadd double %339, %341
  %345 = bitcast double %344 to i64
  %346 = and i64 %345, 9221120237041090560
  %347 = icmp eq i64 %346, 9218868437227405312
  %348 = and i64 %345, 2251799813685247
  %349 = icmp ne i64 %348, 0
  %350 = and i1 %347, %349
  br i1 %350, label %351, label %356

; <label>:351                                     ; preds = %343
  %352 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %338, %struct.Memory* %396) #11
  %353 = load i64, i64* %3, align 8
  %354 = load i8, i8* %35, align 1, !tbaa !1953
  %355 = load i8, i8* %49, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit16

; <label>:356                                     ; preds = %343
  br label %366

; <label>:357                                     ; preds = %block_401daf
  %358 = fcmp ogt double %339, %341
  br i1 %358, label %359, label %360

; <label>:359                                     ; preds = %357
  br label %366

; <label>:360                                     ; preds = %357
  %361 = fcmp olt double %339, %341
  br i1 %361, label %362, label %363

; <label>:362                                     ; preds = %360
  br label %366

; <label>:363                                     ; preds = %360
  %364 = fcmp oeq double %339, %341
  br i1 %364, label %365, label %366

; <label>:365                                     ; preds = %363
  br label %366

; <label>:366                                     ; preds = %365, %363, %362, %359, %356
  %367 = phi i8 [ 1, %365 ], [ %417, %363 ], [ 0, %362 ], [ 0, %359 ], [ 1, %356 ]
  %368 = phi i8 [ 0, %365 ], [ %405, %363 ], [ 1, %362 ], [ 0, %359 ], [ 1, %356 ]
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit16

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit16: ; preds = %366, %351
  %369 = phi i8 [ %355, %351 ], [ %367, %366 ]
  %370 = phi i8 [ %354, %351 ], [ %368, %366 ]
  %371 = phi i64 [ %353, %351 ], [ %338, %366 ]
  %372 = phi %struct.Memory* [ %352, %351 ], [ %396, %366 ]
  %373 = or i8 %369, %370
  %374 = icmp ne i8 %373, 0
  %375 = select i1 %374, i64 41, i64 6
  %376 = add i64 %371, %375
  %377 = load i64, i64* %13, align 8
  br i1 %374, label %block_401df5, label %block_401dd2

block_401d6a:                                     ; preds = %block_401d54
  %378 = add i64 %17, -28
  %379 = inttoptr i64 %378 to i32*
  %380 = load i32, i32* %379
  %381 = icmp eq i32 %380, 1
  %382 = select i1 %381, i64 167, i64 10
  %383 = add i64 %271, %382
  br i1 %381, label %block_401e11, label %block_401d74

block_401d5e:                                     ; preds = %block_401d54
  %384 = add i64 %17, -12
  %385 = inttoptr i64 %384 to i32*
  store i32 0, i32* %385
  br label %block_401ea7

block_401e89:                                     ; preds = %block_401e66, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %386 = phi i64 [ %313, %block_401e66 ], [ %210, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  %387 = phi %struct.Memory* [ %206, %block_401e66 ], [ %206, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  %388 = add i64 %211, -36
  %389 = inttoptr i64 %388 to i32*
  %390 = load i32, i32* %389
  %391 = add i32 %390, 1
  %392 = inttoptr i64 %388 to i32*
  store i32 %391, i32* %392
  %393 = add i64 %386, -82
  br label %block_401e37

block_401da3:                                     ; preds = %block_401df5, %block_401d74
  %394 = phi i64 [ %151, %block_401d74 ], [ %269, %block_401df5 ]
  %395 = phi i64 [ %147, %block_401d74 ], [ %377, %block_401df5 ]
  %396 = phi %struct.Memory* [ %2, %block_401d74 ], [ %255, %block_401df5 ]
  %397 = add i64 %395, -36
  %398 = inttoptr i64 %397 to i32*
  %399 = load i32, i32* %398
  %400 = add i64 %395, -8
  %401 = inttoptr i64 %400 to i32*
  %402 = load i32, i32* %401
  %403 = sub i32 %399, %402
  %404 = icmp ult i32 %399, %402
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %35, align 1, !tbaa !1953
  %406 = and i32 %403, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406) #6
  %408 = and i32 %407, 1
  %409 = xor i32 %408, 1
  %410 = trunc i32 %409 to i8
  store i8 %410, i8* %41, align 1, !tbaa !1966
  %411 = xor i32 %402, %399
  %412 = xor i32 %411, %403
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %46, align 1, !tbaa !1967
  %416 = icmp eq i32 %399, %402
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %49, align 1, !tbaa !1968
  %418 = lshr i32 %403, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %52, align 1, !tbaa !1969
  %420 = lshr i32 %399, 31
  %421 = lshr i32 %402, 31
  %422 = xor i32 %421, %420
  %423 = xor i32 %418, %420
  %424 = add nuw nsw i32 %423, %422
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %58, align 1, !tbaa !1970
  %427 = icmp ne i8 %419, 0
  %428 = xor i1 %427, %425
  %429 = select i1 %428, i64 12, i64 105
  %430 = add i64 %394, %429
  br i1 %428, label %block_401daf, label %block_401e0c

block_401dd2:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit16
  %431 = add i64 %377, -36
  %432 = inttoptr i64 %431 to i32*
  %433 = load i32, i32* %432
  %434 = add i64 %377, -44
  %435 = inttoptr i64 %434 to i32*
  store i32 %433, i32* %435
  %436 = add i64 %377, -16
  %437 = inttoptr i64 %436 to i64*
  %438 = load i64, i64* %437
  store i64 %438, i64* %9, align 8, !tbaa !1947
  %439 = add i64 %377, -40
  %440 = inttoptr i64 %439 to i32*
  %441 = load i32, i32* %440
  %442 = sext i32 %441 to i64
  store i64 %442, i64* %10, align 8, !tbaa !1947
  %443 = shl nsw i64 %442, 3
  %444 = add i64 %443, %438
  %445 = inttoptr i64 %444 to double*
  %446 = load double, double* %445
  store double %446, double* %110, align 1, !tbaa !1971
  store double 0.000000e+00, double* %112, align 1, !tbaa !1971
  %447 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 96) to float*)
  %448 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 100) to float*)
  %449 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 104) to float*)
  %450 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 108) to float*)
  store float %447, float* %118, align 1, !tbaa !2063
  store float %448, float* %120, align 1, !tbaa !2063
  store float %449, float* %122, align 1, !tbaa !2063
  store float %450, float* %124, align 1, !tbaa !2063
  %451 = bitcast double %446 to i64
  %452 = load i64, i64* %126, align 1
  %453 = and i64 %452, %451
  %454 = trunc i64 %453 to i32
  store i32 %454, i32* %130, align 1, !tbaa !1951
  %455 = lshr i64 %453, 32
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %134, align 1, !tbaa !1951
  store i32 0, i32* %135, align 1, !tbaa !1951
  store i32 0, i32* %137, align 1, !tbaa !1951
  %457 = add i64 %377, -32
  %458 = add i64 %376, 35
  %459 = load double, double* %110, align 1
  %460 = inttoptr i64 %457 to double*
  store double %459, double* %460
  br label %block_401df5

block_401d48:                                     ; preds = %block_401d30
  %461 = add i64 %17, -12
  %462 = inttoptr i64 %461 to i32*
  store i32 -1, i32* %462
  br label %block_401ea7

block_401ea1:                                     ; preds = %block_401e0c, %block_401e9c
  %463 = phi i64 [ %273, %block_401e0c ], [ %64, %block_401e9c ]
  %464 = phi %struct.Memory* [ %272, %block_401e0c ], [ %63, %block_401e9c ]
  %465 = add i64 %463, -44
  %466 = inttoptr i64 %465 to i32*
  %467 = load i32, i32* %466
  %468 = add i64 %463, -4
  %469 = inttoptr i64 %468 to i32*
  store i32 %467, i32* %469
  %470 = load i64, i64* %12, align 1, !tbaa !1947
  br label %block_401ea7
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006d0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_4006d0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %6, align 1, !tbaa !1947
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %8, i64* %11
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64* %4, align 8, !tbaa !1947
  store i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64* %5, align 8, !tbaa !1947
  store i8 and (i8 trunc (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)) to i8), i8 1), i8* %12, align 1, !tbaa !2065
  %18 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1) to i32), i32 255)) #6
  %19 = and i32 %18, 1
  %20 = xor i32 %19, 1
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %13, align 1, !tbaa !2065
  store i8 0, i8* %14, align 1, !tbaa !2065
  store i8 zext (i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 0) to i8), i8* %15, align 1, !tbaa !2065
  store i8 trunc (i64 lshr (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 63) to i8), i8* %16, align 1, !tbaa !2065
  store i8 0, i8* %17, align 1, !tbaa !2065
  br i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 3)), i64 1), i64 0), label %block_400708, label %block_4006f3

block_4006f3:                                     ; preds = %block_4006d0
  store i64 0, i64* %4, align 8, !tbaa !1947
  store i8 0, i8* %12, align 1, !tbaa !1953
  store i8 1, i8* %13, align 1, !tbaa !1966
  store i8 1, i8* %15, align 1, !tbaa !1968
  store i8 0, i8* %16, align 1, !tbaa !1969
  store i8 0, i8* %17, align 1, !tbaa !1970
  store i8 0, i8* %14, align 1, !tbaa !1967
  br label %block_400708

block_400708:                                     ; preds = %block_4006f3, %block_4006d0
  %22 = inttoptr i64 %10 to i64*
  %23 = load i64, i64* %22
  store i64 %23, i64* %7, align 8, !tbaa !1947
  %24 = inttoptr i64 %9 to i64*
  %25 = load i64, i64* %24
  store i64 %25, i64* %3, align 8, !tbaa !1947
  %26 = add i64 %9, 8
  store i64 %26, i64* %6, align 8, !tbaa !1947
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_402990___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_402990:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 1, !tbaa !1947
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6
  store i64 %7, i64* %3, align 8, !tbaa !1947
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !1947
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401eb0_dscal_r(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_401eb0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %11, align 1, !tbaa !1947
  %16 = add i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %14, i64* %17
  %18 = add i64 %15, -12
  %19 = load i32, i32* %7, align 4
  %20 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %20
  %21 = add i64 %15, -24
  %22 = bitcast %union.VectorReg* %13 to double*
  %23 = load double, double* %22, align 1
  %24 = inttoptr i64 %21 to double*
  store double %23, double* %24
  %25 = add i64 %15, -32
  %26 = load i64, i64* %10, align 8
  %27 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %27
  %28 = add i64 %15, -36
  %29 = load i32, i32* %5, align 4
  %30 = inttoptr i64 %28 to i32*
  store i32 %29, i32* %30
  %31 = add i64 %15, -12
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %34, align 1, !tbaa !1953
  %35 = and i32 %33, 255
  %36 = tail call i32 @llvm.ctpop.i32(i32 %35) #6
  %37 = and i32 %36, 1
  %38 = xor i32 %37, 1
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %40, align 1, !tbaa !1966
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %41, align 1, !tbaa !1967
  %42 = icmp eq i32 %33, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1, !tbaa !1968
  %45 = lshr i32 %33, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1, !tbaa !1969
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %48, align 1, !tbaa !1970
  %49 = xor i1 %42, true
  %50 = icmp eq i8 %46, 0
  %51 = and i1 %50, %49
  %52 = select i1 %51, i64 34, i64 29
  %53 = add i64 %52, %1
  br i1 %51, label %block_401ed2, label %block_401ecd

block_401f3e:                                     ; preds = %block_401f32
  %54 = inttoptr i64 %134 to double*
  %55 = load double, double* %54
  %56 = inttoptr i64 %136 to i64*
  %57 = load i64, i64* %56
  %58 = sext i32 %96 to i64
  %59 = shl nsw i64 %58, 3
  %60 = add i64 %59, %57
  %61 = inttoptr i64 %60 to double*
  %62 = load double, double* %61
  %63 = fmul double %55, %62
  store double %63, double* %22, align 1, !tbaa !1971
  store i64 0, i64* %135, align 1, !tbaa !1971
  store i64 %58, i64* %9, align 8, !tbaa !1947
  %64 = inttoptr i64 %60 to double*
  store double %63, double* %64
  %65 = inttoptr i64 %131 to i32*
  %66 = load i32, i32* %65
  %67 = add i32 %66, 1
  %68 = inttoptr i64 %131 to i32*
  store i32 %67, i32* %68
  %69 = add i64 %111, -12
  br label %block_401f32

block_401ef9:                                     ; preds = %block_401eed
  %70 = inttoptr i64 %168 to double*
  %71 = load double, double* %70
  %72 = inttoptr i64 %170 to i64*
  %73 = load i64, i64* %72
  %74 = sext i32 %115 to i64
  %75 = shl nsw i64 %74, 3
  %76 = add i64 %75, %73
  %77 = inttoptr i64 %76 to double*
  %78 = load double, double* %77
  %79 = fmul double %71, %78
  store double %79, double* %22, align 1, !tbaa !1971
  store i64 0, i64* %169, align 1, !tbaa !1971
  store i64 %74, i64* %9, align 8, !tbaa !1947
  %80 = inttoptr i64 %76 to double*
  store double %79, double* %80
  %81 = inttoptr i64 %165 to i32*
  %82 = load i32, i32* %81
  %83 = inttoptr i64 %28 to i32*
  %84 = load i32, i32* %83
  %85 = add i32 %84, %82
  %86 = inttoptr i64 %165 to i32*
  store i32 %85, i32* %86
  %87 = add i64 %130, -12
  br label %block_401eed

block_401ed2:                                     ; preds = %block_401eb0
  %88 = inttoptr i64 %28 to i32*
  %89 = load i32, i32* %88
  %90 = icmp eq i32 %89, 1
  %91 = select i1 %90, i64 89, i64 10
  %92 = add i64 %53, %91
  br i1 %90, label %block_401f2b, label %block_401edc

block_401f32:                                     ; preds = %block_401f2b, %block_401f3e
  %93 = phi i64 [ %132, %block_401f2b ], [ %69, %block_401f3e ]
  %94 = phi %struct.Memory* [ %2, %block_401f2b ], [ %94, %block_401f3e ]
  %95 = inttoptr i64 %131 to i32*
  %96 = load i32, i32* %95
  %97 = inttoptr i64 %31 to i32*
  %98 = load i32, i32* %97
  %99 = sub i32 %96, %98
  %100 = lshr i32 %99, 31
  %101 = trunc i32 %100 to i8
  %102 = lshr i32 %96, 31
  %103 = lshr i32 %98, 31
  %104 = xor i32 %103, %102
  %105 = xor i32 %100, %102
  %106 = add nuw nsw i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = icmp ne i8 %101, 0
  %109 = xor i1 %108, %107
  %110 = select i1 %109, i64 12, i64 57
  %111 = add i64 %93, %110
  br i1 %109, label %block_401f3e, label %block_401f6b.loopexit

block_401eed:                                     ; preds = %block_401edc, %block_401ef9
  %112 = phi i64 [ %166, %block_401edc ], [ %87, %block_401ef9 ]
  %113 = phi %struct.Memory* [ %2, %block_401edc ], [ %113, %block_401ef9 ]
  %114 = inttoptr i64 %165 to i32*
  %115 = load i32, i32* %114
  %116 = inttoptr i64 %162 to i32*
  %117 = load i32, i32* %116
  %118 = sub i32 %115, %117
  %119 = lshr i32 %118, 31
  %120 = trunc i32 %119 to i8
  %121 = lshr i32 %115, 31
  %122 = lshr i32 %117, 31
  %123 = xor i32 %122, %121
  %124 = xor i32 %119, %121
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = icmp ne i8 %120, 0
  %128 = xor i1 %127, %126
  %129 = select i1 %128, i64 12, i64 57
  %130 = add i64 %112, %129
  br i1 %128, label %block_401ef9, label %block_401f26

block_401f2b:                                     ; preds = %block_401ed2
  %131 = add i64 %15, -40
  %132 = add i64 %92, 7
  %133 = inttoptr i64 %131 to i32*
  store i32 0, i32* %133
  %134 = add i64 %15, -24
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %136 = add i64 %15, -32
  br label %block_401f32

block_401f26:                                     ; preds = %block_401eed
  %137 = phi i1 [ %126, %block_401eed ]
  %138 = phi i8 [ %120, %block_401eed ]
  %139 = phi i32 [ %118, %block_401eed ]
  %140 = phi i32 [ %117, %block_401eed ]
  %141 = phi i32 [ %115, %block_401eed ]
  %142 = phi %struct.Memory* [ %113, %block_401eed ]
  %143 = zext i32 %141 to i64
  store i64 %143, i64* %8, align 8, !tbaa !1947
  %144 = icmp ult i32 %141, %140
  %145 = zext i1 %144 to i8
  %146 = and i32 %139, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #6
  %148 = and i32 %147, 1
  %149 = xor i32 %148, 1
  %150 = trunc i32 %149 to i8
  %151 = xor i32 %140, %141
  %152 = xor i32 %151, %139
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = icmp eq i32 %141, %140
  %157 = zext i1 %156 to i8
  %158 = zext i1 %137 to i8
  store i8 %145, i8* %34, align 1, !tbaa !1953
  store i8 %150, i8* %40, align 1, !tbaa !1966
  store i8 %155, i8* %41, align 1, !tbaa !1967
  store i8 %157, i8* %44, align 1, !tbaa !1968
  store i8 %138, i8* %47, align 1, !tbaa !1969
  store i8 %158, i8* %48, align 1, !tbaa !1970
  br label %block_401f6b

block_401edc:                                     ; preds = %block_401ed2
  %159 = sext i32 %33 to i64
  %160 = sext i32 %89 to i64
  %161 = mul nsw i64 %160, %159
  %162 = add i64 %15, -44
  %163 = trunc i64 %161 to i32
  %164 = inttoptr i64 %162 to i32*
  store i32 %163, i32* %164
  %165 = add i64 %15, -40
  %166 = add i64 %92, 17
  %167 = inttoptr i64 %165 to i32*
  store i32 0, i32* %167
  %168 = add i64 %15, -24
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %170 = add i64 %15, -32
  br label %block_401eed

block_401f6b.loopexit:                            ; preds = %block_401f32
  %171 = phi i1 [ %107, %block_401f32 ]
  %172 = phi i8 [ %101, %block_401f32 ]
  %173 = phi i32 [ %99, %block_401f32 ]
  %174 = phi i32 [ %98, %block_401f32 ]
  %175 = phi i32 [ %96, %block_401f32 ]
  %176 = phi %struct.Memory* [ %94, %block_401f32 ]
  %177 = zext i32 %175 to i64
  store i64 %177, i64* %8, align 8, !tbaa !1947
  %178 = icmp ult i32 %175, %174
  %179 = zext i1 %178 to i8
  %180 = and i32 %173, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #6
  %182 = and i32 %181, 1
  %183 = xor i32 %182, 1
  %184 = trunc i32 %183 to i8
  %185 = xor i32 %174, %175
  %186 = xor i32 %185, %173
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = icmp eq i32 %175, %174
  %191 = zext i1 %190 to i8
  %192 = zext i1 %171 to i8
  store i8 %179, i8* %34, align 1, !tbaa !1953
  store i8 %184, i8* %40, align 1, !tbaa !1966
  store i8 %189, i8* %41, align 1, !tbaa !1967
  store i8 %191, i8* %44, align 1, !tbaa !1968
  store i8 %172, i8* %47, align 1, !tbaa !1969
  store i8 %192, i8* %48, align 1, !tbaa !1970
  br label %block_401f6b

block_401f6b:                                     ; preds = %block_401ecd, %block_401f6b.loopexit, %block_401f26
  %193 = phi %struct.Memory* [ %142, %block_401f26 ], [ %2, %block_401ecd ], [ %176, %block_401f6b.loopexit ]
  %194 = inttoptr i64 %16 to i64*
  %195 = load i64, i64* %194
  store i64 %195, i64* %12, align 8, !tbaa !1947
  %196 = inttoptr i64 %15 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %3, align 8, !tbaa !1947
  %198 = add i64 %15, 8
  store i64 %198, i64* %11, align 8, !tbaa !1947
  ret %struct.Memory* %193

block_401ecd:                                     ; preds = %block_401eb0
  br label %block_401f6b
}

; Function Attrs: noinline
define %struct.Memory* @sub_400650(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #4 {
block_400650:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !alias.scope !2071, !noalias !2074
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %3, align 8, !alias.scope !2071, !noalias !2074
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8, !alias.scope !2071, !noalias !2074
  %10 = tail call i64 @__gmon_start__(), !noalias !2071
  store i64 %10, i64* %4, align 8, !alias.scope !2071, !noalias !2074
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401010_dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_401010:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %11 = bitcast %union.anon* %10 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %16 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %17 = getelementptr inbounds %union.anon, %union.anon* %10, i64 0, i32 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %24 = load i64, i64* %20, align 8
  %25 = load i64, i64* %19, align 1, !tbaa !1947
  %26 = add i64 %25, -8
  %27 = inttoptr i64 %26 to i64*
  store i64 %24, i64* %27
  store i64 %26, i64* %20, align 8, !tbaa !1947
  %28 = add i64 %25, -104
  store i64 %28, i64* %19, align 8, !tbaa !1947
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %35 = add i64 %25, -16
  %36 = load i64, i64* %18, align 8
  %37 = inttoptr i64 %35 to i64*
  store i64 %36, i64* %37
  %38 = add i64 %25, -20
  %39 = load i32, i32* %11, align 4
  %40 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %40
  %41 = add i64 %25, -24
  %42 = load i32, i32* %9, align 4
  %43 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %43
  %44 = add i64 %25, -32
  %45 = load i64, i64* %15, align 8
  %46 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %46
  %47 = add i64 %25, -40
  %48 = load i64, i64* %21, align 8
  %49 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %49
  %50 = add i64 %25, -44
  %51 = load i32, i32* %13, align 4
  %52 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %52
  %53 = inttoptr i64 %50 to i32*
  %54 = load i32, i32* %53
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i64 776, i64 40
  %57 = add i64 %56, %1
  %58 = inttoptr i64 %47 to i64*
  %59 = load i64, i64* %58
  %60 = inttoptr i64 %59 to i32*
  store i32 0, i32* %60
  %61 = inttoptr i64 %41 to i32*
  %62 = load i32, i32* %61
  %63 = add i32 %62, -1
  %64 = load i64, i64* %20, align 8
  %65 = add i64 %64, -68
  %66 = inttoptr i64 %65 to i32*
  store i32 %63, i32* %66
  %67 = add i64 %57, 23
  %68 = inttoptr i64 %65 to i32*
  %69 = load i32, i32* %68
  %70 = lshr i32 %69, 31
  %71 = trunc i32 %70 to i8
  %72 = icmp ne i8 %71, 0
  %73 = select i1 %72, i64 623, i64 6
  %74 = add i64 %73, %67
  br i1 %55, label %block_401318, label %block_401038

block_4010d5:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit245
  %75 = load i8, i8* %30, align 1, !tbaa !1966
  %76 = icmp ne i8 %75, 0
  %77 = select i1 %76, i64 11, i64 6
  %78 = add i64 %680, %77
  %79 = icmp eq i8 %75, 1
  br i1 %79, label %block_4010e0, label %block_4010db

block_401301:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit282
  %80 = load i8, i8* %30, align 1, !tbaa !1966
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_4015f8, label %block_401307

block_401599:                                     ; preds = %block_40133c
  %82 = phi i64 [ %724, %block_40133c ]
  %83 = phi %struct.Memory* [ %704, %block_40133c ]
  %84 = phi i64 [ %703, %block_40133c ]
  br label %block_40159e

block_4011bd:                                     ; preds = %block_4011b1
  %85 = add i64 %527, -8
  %86 = inttoptr i64 %85 to i64*
  %87 = load i64, i64* %86
  %88 = add i64 %527, -12
  %89 = inttoptr i64 %88 to i32*
  %90 = load i32, i32* %89
  %91 = mul i32 %531, %90
  %92 = add i64 %527, -64
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %93
  %95 = add i32 %94, %91
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 3
  %98 = add i64 %97, %87
  %99 = inttoptr i64 %98 to double*
  %100 = load double, double* %99
  store double %100, double* %342, align 1, !tbaa !1971
  store double 0.000000e+00, double* %343, align 1, !tbaa !1971
  %101 = add i64 %527, -48
  %102 = inttoptr i64 %101 to double*
  store double %100, double* %102
  %103 = inttoptr i64 %92 to i32*
  %104 = load i32, i32* %103
  %105 = add i64 %527, -56
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106
  %108 = icmp eq i32 %104, %107
  %109 = select i1 %108, i64 110, i64 39
  %110 = add i64 %547, %109
  br i1 %108, label %block_40122b, label %block_4011e4

block_401318:                                     ; preds = %block_401010
  br i1 %72, label %block_401318.block_40159e_crit_edge, label %block_401335

block_401318.block_40159e_crit_edge:              ; preds = %block_401318
  %111 = bitcast [32 x %union.VectorReg]* %22 to i8*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %113 = bitcast [32 x %union.VectorReg]* %22 to i32*
  %114 = getelementptr inbounds i8, i8* %111, i64 4
  %115 = bitcast i8* %114 to i32*
  %116 = bitcast i64* %112 to i32*
  %117 = getelementptr inbounds i8, i8* %111, i64 12
  %118 = bitcast i8* %117 to i32*
  %119 = bitcast %union.VectorReg* %23 to double*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %121 = bitcast i64* %120 to double*
  %122 = bitcast [32 x %union.VectorReg]* %22 to double*
  br label %block_40159e

block_40149d:                                     ; preds = %block_401491
  %123 = add i64 %986, -8
  %124 = inttoptr i64 %123 to i64*
  %125 = load i64, i64* %124
  %126 = add i64 %986, -12
  %127 = inttoptr i64 %126 to i32*
  %128 = load i32, i32* %127
  %129 = mul i32 %990, %128
  %130 = add i64 %986, -64
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32, i32* %131
  %133 = add i32 %132, %129
  %134 = sext i32 %133 to i64
  %135 = shl nsw i64 %134, 3
  %136 = add i64 %135, %125
  %137 = inttoptr i64 %136 to double*
  %138 = load double, double* %137
  store double %138, double* %524, align 1, !tbaa !1971
  store double 0.000000e+00, double* %525, align 1, !tbaa !1971
  %139 = add i64 %986, -48
  %140 = inttoptr i64 %139 to double*
  store double %138, double* %140
  %141 = inttoptr i64 %130 to i32*
  %142 = load i32, i32* %141
  %143 = add i64 %986, -56
  %144 = inttoptr i64 %143 to i32*
  %145 = load i32, i32* %144
  %146 = icmp eq i32 %142, %145
  %147 = select i1 %146, i64 110, i64 39
  %148 = add i64 %1006, %147
  br i1 %146, label %block_40150b, label %block_4014c4

block_40159e:                                     ; preds = %block_401318.block_40159e_crit_edge, %block_401599
  %149 = phi double* [ %122, %block_401318.block_40159e_crit_edge ], [ %524, %block_401599 ]
  %150 = phi double* [ %121, %block_401318.block_40159e_crit_edge ], [ %523, %block_401599 ]
  %151 = phi double* [ %119, %block_401318.block_40159e_crit_edge ], [ %521, %block_401599 ]
  %152 = phi i32* [ %118, %block_401318.block_40159e_crit_edge ], [ %520, %block_401599 ]
  %153 = phi i32* [ %116, %block_401318.block_40159e_crit_edge ], [ %518, %block_401599 ]
  %154 = phi i32* [ %115, %block_401318.block_40159e_crit_edge ], [ %517, %block_401599 ]
  %155 = phi i32* [ %113, %block_401318.block_40159e_crit_edge ], [ %515, %block_401599 ]
  %156 = phi i64 [ %64, %block_401318.block_40159e_crit_edge ], [ %84, %block_401599 ]
  %157 = phi i64 [ %74, %block_401318.block_40159e_crit_edge ], [ %82, %block_401599 ]
  %158 = phi %struct.Memory* [ %2, %block_401318.block_40159e_crit_edge ], [ %83, %block_401599 ]
  store i32 0, i32* %155, align 1, !tbaa !1951
  store i32 0, i32* %154, align 1, !tbaa !1951
  store i32 0, i32* %153, align 1, !tbaa !1951
  store i32 0, i32* %152, align 1, !tbaa !1951
  %159 = add i64 %156, -16
  %160 = inttoptr i64 %159 to i32*
  %161 = load i32, i32* %160
  %162 = add i32 %161, -1
  %163 = add i64 %156, -24
  %164 = inttoptr i64 %163 to i64*
  %165 = load i64, i64* %164
  %166 = sext i32 %162 to i64
  %167 = shl nsw i64 %166, 2
  %168 = add i64 %167, %165
  %169 = inttoptr i64 %168 to i32*
  store i32 %162, i32* %169
  %170 = add i64 %156, -8
  %171 = inttoptr i64 %170 to i64*
  %172 = load i64, i64* %171
  store i64 %172, i64* %15, align 8, !tbaa !1947
  %173 = add i64 %156, -12
  %174 = inttoptr i64 %173 to i32*
  %175 = load i32, i32* %174
  %176 = inttoptr i64 %159 to i32*
  %177 = load i32, i32* %176
  %178 = add i32 %177, -1
  %179 = sext i32 %175 to i64
  %180 = sext i32 %178 to i64
  %181 = mul nsw i64 %180, %179
  %182 = load i64, i64* %20, align 8
  %183 = add i64 %182, -16
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184
  %186 = add i32 %185, -1
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %16, align 8, !tbaa !1947
  %188 = zext i32 %186 to i64
  %189 = trunc i64 %181 to i32
  %190 = add i32 %186, %189
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %14, align 8, !tbaa !1947
  %192 = icmp ult i32 %190, %189
  %193 = icmp ult i32 %190, %186
  %194 = or i1 %192, %193
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %29, align 1, !tbaa !1953
  %196 = and i32 %190, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #6
  %198 = and i32 %197, 1
  %199 = xor i32 %198, 1
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %30, align 1, !tbaa !1966
  %201 = xor i64 %188, %181
  %202 = trunc i64 %201 to i32
  %203 = xor i32 %202, %190
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %31, align 1, !tbaa !1967
  %207 = icmp eq i32 %190, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %32, align 1, !tbaa !1968
  %209 = lshr i32 %190, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %33, align 1, !tbaa !1969
  %211 = lshr i32 %189, 31
  %212 = lshr i32 %186, 31
  %213 = xor i32 %209, %211
  %214 = xor i32 %209, %212
  %215 = add nuw nsw i32 %213, %214
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %34, align 1, !tbaa !1970
  %218 = sext i32 %190 to i64
  store i64 %218, i64* %17, align 8, !tbaa !1947
  %219 = load i64, i64* %15, align 8
  %220 = shl nsw i64 %218, 3
  %221 = add i64 %220, %219
  %222 = inttoptr i64 %221 to double*
  %223 = load double, double* %222
  store double %223, double* %151, align 1, !tbaa !1971
  store double 0.000000e+00, double* %150, align 1, !tbaa !1971
  %224 = add i64 %157, 61
  store i64 %224, i64* %3, align 8
  %225 = load double, double* %149, align 1
  %226 = fcmp uno double %223, %225
  br i1 %226, label %227, label %239

; <label>:227                                     ; preds = %block_40159e
  %228 = fadd double %223, %225
  %229 = bitcast double %228 to i64
  %230 = and i64 %229, 9221120237041090560
  %231 = icmp eq i64 %230, 9218868437227405312
  %232 = and i64 %229, 2251799813685247
  %233 = icmp ne i64 %232, 0
  %234 = and i1 %231, %233
  br i1 %234, label %235, label %238

; <label>:235                                     ; preds = %227
  %236 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %224, %struct.Memory* %158) #11
  %237 = load i8, i8* %32, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:238                                     ; preds = %227
  store i8 1, i8* %30, align 1, !tbaa !2065
  br label %248

; <label>:239                                     ; preds = %block_40159e
  %240 = fcmp ogt double %223, %225
  br i1 %240, label %241, label %242

; <label>:241                                     ; preds = %239
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %248

; <label>:242                                     ; preds = %239
  %243 = fcmp olt double %223, %225
  br i1 %243, label %244, label %245

; <label>:244                                     ; preds = %242
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %248

; <label>:245                                     ; preds = %242
  %246 = fcmp oeq double %223, %225
  br i1 %246, label %247, label %248

; <label>:247                                     ; preds = %245
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %248

; <label>:248                                     ; preds = %247, %245, %244, %241, %238
  %249 = phi i8 [ 1, %247 ], [ %208, %245 ], [ 0, %244 ], [ 0, %241 ], [ 1, %238 ]
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %248, %235
  %250 = phi i8 [ %237, %235 ], [ %249, %248 ]
  %251 = phi %struct.Memory* [ %236, %235 ], [ %158, %248 ]
  %252 = icmp eq i8 %250, 0
  br i1 %252, label %block_4015f8, label %block_4015e1

block_40122b:                                     ; preds = %block_4011e4, %block_4011bd
  %253 = phi i64 [ %110, %block_4011bd ], [ %1293, %block_4011e4 ]
  %254 = phi %struct.Memory* [ %528, %block_4011bd ], [ %528, %block_4011e4 ]
  store i64 1, i64* %14, align 8, !tbaa !1947
  %255 = load i64, i64* %20, align 8
  %256 = add i64 %255, -16
  %257 = inttoptr i64 %256 to i32*
  %258 = load i32, i32* %257
  %259 = add i64 %255, -56
  %260 = inttoptr i64 %259 to i32*
  %261 = load i32, i32* %260
  %262 = add i32 %261, 1
  %263 = sub i32 %258, %262
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %15, align 8, !tbaa !1947
  %265 = add i64 %255, -48
  %266 = inttoptr i64 %265 to double*
  %267 = load double, double* %266
  store double %267, double* %342, align 1, !tbaa !1971
  store double 0.000000e+00, double* %343, align 1, !tbaa !1971
  %268 = add i64 %255, -8
  %269 = inttoptr i64 %268 to i64*
  %270 = load i64, i64* %269
  store i64 %270, i64* %17, align 8, !tbaa !1947
  %271 = add i64 %255, -12
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32, i32* %272
  %274 = load i64, i64* %20, align 8
  %275 = add i64 %274, -56
  %276 = inttoptr i64 %275 to i32*
  %277 = load i32, i32* %276
  %278 = mul i32 %277, %273
  %279 = add i32 %277, %278
  %280 = add i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = shl nsw i64 %281, 3
  %283 = load i64, i64* %17, align 8
  %284 = add i64 %282, %283
  store i64 %284, i64* %17, align 8, !tbaa !1947
  %285 = load i64, i64* %20, align 8
  %286 = add i64 %285, -8
  %287 = inttoptr i64 %286 to i64*
  %288 = load i64, i64* %287
  store i64 %288, i64* %18, align 8, !tbaa !1947
  %289 = add i64 %285, -12
  %290 = inttoptr i64 %289 to i32*
  %291 = load i32, i32* %290
  %292 = add i64 %285, -52
  %293 = inttoptr i64 %292 to i32*
  %294 = load i32, i32* %293
  %295 = mul i32 %294, %291
  %296 = add i64 %285, -56
  %297 = inttoptr i64 %296 to i32*
  %298 = load i32, i32* %297
  %299 = add i32 %298, %295
  %300 = add i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = shl nsw i64 %301, 3
  %303 = load i64, i64* %18, align 8
  %304 = add i64 %302, %303
  %305 = load i64, i64* %20, align 8
  %306 = add i64 %305, -80
  %307 = inttoptr i64 %306 to i64*
  store i64 %304, i64* %307
  %308 = load i32, i32* %7, align 4
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %18, align 8, !tbaa !1947
  %310 = load i32, i32* %5, align 4
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %16, align 8, !tbaa !1947
  %312 = inttoptr i64 %306 to i64*
  %313 = load i64, i64* %312
  store i64 %313, i64* %15, align 8, !tbaa !1947
  store i64 %311, i64* %21, align 8, !tbaa !1947
  %314 = add i64 %253, 3397
  %315 = add i64 %253, 95
  %316 = load i64, i64* %19, align 1, !tbaa !1947
  %317 = add i64 %316, -8
  %318 = inttoptr i64 %317 to i64*
  store i64 %315, i64* %318
  store i64 %317, i64* %19, align 8, !tbaa !1947
  %319 = tail call %struct.Memory* @sub_401f70_daxpy_r(%struct.State* nonnull %0, i64 %314, %struct.Memory* %254)
  %320 = load i64, i64* %20, align 8
  %321 = add i64 %320, -52
  %322 = load i64, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323
  %325 = add i32 %324, 1
  %326 = inttoptr i64 %321 to i32*
  store i32 %325, i32* %326
  %327 = add i64 %322, -217
  br label %block_4011b1

block_401055:                                     ; preds = %block_401038
  %328 = add i64 %64, -56
  %329 = add i64 %74, 7
  %330 = inttoptr i64 %328 to i32*
  store i32 0, i32* %330
  %331 = bitcast [32 x %union.VectorReg]* %22 to i8*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %333 = bitcast [32 x %union.VectorReg]* %22 to i32*
  %334 = getelementptr inbounds i8, i8* %331, i64 4
  %335 = bitcast i8* %334 to i32*
  %336 = bitcast i64* %332 to i32*
  %337 = getelementptr inbounds i8, i8* %331, i64 12
  %338 = bitcast i8* %337 to i32*
  %339 = bitcast %union.VectorReg* %23 to double*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %341 = bitcast i64* %340 to double*
  %342 = bitcast [32 x %union.VectorReg]* %22 to double*
  %343 = bitcast i64* %332 to double*
  br label %block_40105c

block_40142e:                                     ; preds = %block_4013cc, %block_4013c0
  %344 = phi i64 [ %500, %block_4013c0 ], [ %1054, %block_4013cc ]
  %345 = phi i64 [ %509, %block_4013c0 ], [ %1072, %block_4013cc ]
  %346 = phi %struct.Memory* [ %981, %block_4013c0 ], [ %981, %block_4013cc ]
  store i64 1, i64* %16, align 8, !tbaa !1947
  %347 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 80) to double*)
  %348 = add i64 %344, -8
  %349 = inttoptr i64 %348 to i64*
  %350 = load i64, i64* %349
  %351 = add i64 %344, -12
  %352 = inttoptr i64 %351 to i32*
  %353 = load i32, i32* %352
  %354 = add i64 %344, -56
  %355 = inttoptr i64 %354 to i32*
  %356 = load i32, i32* %355
  %357 = mul i32 %356, %353
  %358 = add i32 %356, %357
  %359 = sext i32 %358 to i64
  %360 = shl nsw i64 %359, 3
  %361 = add i64 %360, %350
  %362 = inttoptr i64 %361 to double*
  %363 = load double, double* %362
  %364 = fdiv double %347, %363
  %365 = add i64 %344, -48
  %366 = inttoptr i64 %365 to double*
  store double %364, double* %366
  %367 = add i64 %344, -16
  %368 = inttoptr i64 %367 to i32*
  %369 = load i32, i32* %368
  %370 = load i64, i64* %20, align 8
  %371 = add i64 %370, -56
  %372 = inttoptr i64 %371 to i32*
  %373 = load i32, i32* %372
  %374 = add i32 %373, 1
  %375 = sub i32 %369, %374
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %15, align 8, !tbaa !1947
  %377 = add i64 %370, -48
  %378 = inttoptr i64 %377 to double*
  %379 = load double, double* %378
  store double %379, double* %524, align 1, !tbaa !1971
  store double 0.000000e+00, double* %525, align 1, !tbaa !1971
  %380 = add i64 %370, -8
  %381 = inttoptr i64 %380 to i64*
  %382 = load i64, i64* %381
  store i64 %382, i64* %14, align 8, !tbaa !1947
  %383 = add i64 %370, -12
  %384 = inttoptr i64 %383 to i32*
  %385 = load i32, i32* %384
  %386 = mul i32 %373, %385
  %387 = load i64, i64* %20, align 8
  %388 = add i64 %387, -56
  %389 = inttoptr i64 %388 to i32*
  %390 = load i32, i32* %389
  %391 = add i32 %390, %386
  %392 = add i32 %391, 1
  %393 = sext i32 %392 to i64
  %394 = shl nsw i64 %393, 3
  %395 = load i64, i64* %14, align 8
  %396 = add i64 %394, %395
  store i64 %396, i64* %14, align 8, !tbaa !1947
  %397 = load i32, i32* %7, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %18, align 8, !tbaa !1947
  store i64 %396, i64* %17, align 8, !tbaa !1947
  %399 = add i64 %345, 3234
  %400 = add i64 %345, 93
  %401 = load i64, i64* %19, align 1, !tbaa !1947
  %402 = add i64 %401, -8
  %403 = inttoptr i64 %402 to i64*
  store i64 %400, i64* %403
  store i64 %402, i64* %19, align 8, !tbaa !1947
  %404 = tail call %struct.Memory* @sub_4020d0_dscal_ur(%struct.State* nonnull %0, i64 %399, %struct.Memory* %346)
  %405 = load i64, i64* %20, align 8
  %406 = add i64 %405, -60
  %407 = load i64, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408
  %410 = add i64 %405, -52
  %411 = add i64 %407, 6
  %412 = inttoptr i64 %410 to i32*
  store i32 %409, i32* %412
  br label %block_401491

block_40150b:                                     ; preds = %block_4014c4, %block_40149d
  %413 = phi i64 [ %148, %block_40149d ], [ %1365, %block_4014c4 ]
  %414 = phi %struct.Memory* [ %987, %block_40149d ], [ %987, %block_4014c4 ]
  store i64 1, i64* %14, align 8, !tbaa !1947
  %415 = load i64, i64* %20, align 8
  %416 = add i64 %415, -16
  %417 = inttoptr i64 %416 to i32*
  %418 = load i32, i32* %417
  %419 = add i64 %415, -56
  %420 = inttoptr i64 %419 to i32*
  %421 = load i32, i32* %420
  %422 = add i32 %421, 1
  %423 = sub i32 %418, %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %15, align 8, !tbaa !1947
  %425 = add i64 %415, -48
  %426 = inttoptr i64 %425 to double*
  %427 = load double, double* %426
  store double %427, double* %524, align 1, !tbaa !1971
  store double 0.000000e+00, double* %525, align 1, !tbaa !1971
  %428 = add i64 %415, -8
  %429 = inttoptr i64 %428 to i64*
  %430 = load i64, i64* %429
  store i64 %430, i64* %17, align 8, !tbaa !1947
  %431 = add i64 %415, -12
  %432 = inttoptr i64 %431 to i32*
  %433 = load i32, i32* %432
  %434 = load i64, i64* %20, align 8
  %435 = add i64 %434, -56
  %436 = inttoptr i64 %435 to i32*
  %437 = load i32, i32* %436
  %438 = mul i32 %437, %433
  %439 = add i32 %437, %438
  %440 = add i32 %439, 1
  %441 = sext i32 %440 to i64
  %442 = shl nsw i64 %441, 3
  %443 = load i64, i64* %17, align 8
  %444 = add i64 %442, %443
  store i64 %444, i64* %17, align 8, !tbaa !1947
  %445 = load i64, i64* %20, align 8
  %446 = add i64 %445, -8
  %447 = inttoptr i64 %446 to i64*
  %448 = load i64, i64* %447
  store i64 %448, i64* %18, align 8, !tbaa !1947
  %449 = add i64 %445, -12
  %450 = inttoptr i64 %449 to i32*
  %451 = load i32, i32* %450
  %452 = add i64 %445, -52
  %453 = inttoptr i64 %452 to i32*
  %454 = load i32, i32* %453
  %455 = mul i32 %454, %451
  %456 = add i64 %445, -56
  %457 = inttoptr i64 %456 to i32*
  %458 = load i32, i32* %457
  %459 = add i32 %458, %455
  %460 = add i32 %459, 1
  %461 = sext i32 %460 to i64
  %462 = shl nsw i64 %461, 3
  %463 = load i64, i64* %18, align 8
  %464 = add i64 %462, %463
  %465 = load i64, i64* %20, align 8
  %466 = add i64 %465, -88
  %467 = inttoptr i64 %466 to i64*
  store i64 %464, i64* %467
  %468 = load i32, i32* %7, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %18, align 8, !tbaa !1947
  %470 = load i32, i32* %5, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %16, align 8, !tbaa !1947
  %472 = inttoptr i64 %466 to i64*
  %473 = load i64, i64* %472
  store i64 %473, i64* %15, align 8, !tbaa !1947
  store i64 %471, i64* %21, align 8, !tbaa !1947
  %474 = add i64 %413, 3493
  %475 = add i64 %413, 95
  %476 = load i64, i64* %19, align 1, !tbaa !1947
  %477 = add i64 %476, -8
  %478 = inttoptr i64 %477 to i64*
  store i64 %475, i64* %478
  store i64 %477, i64* %19, align 8, !tbaa !1947
  %479 = tail call %struct.Memory* @sub_4022b0_daxpy_ur(%struct.State* nonnull %0, i64 %474, %struct.Memory* %414)
  %480 = load i64, i64* %20, align 8
  %481 = add i64 %480, -52
  %482 = load i64, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483
  %485 = add i32 %484, 1
  %486 = inttoptr i64 %481 to i32*
  store i32 %485, i32* %486
  %487 = add i64 %482, -217
  br label %block_401491

block_4010e0:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit245, %block_4010d5
  %488 = phi i64 [ %680, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit245 ], [ %78, %block_4010d5 ]
  %489 = load i64, i64* %20, align 8
  %490 = add i64 %489, -64
  %491 = inttoptr i64 %490 to i32*
  %492 = load i32, i32* %491
  %493 = add i64 %489, -56
  %494 = inttoptr i64 %493 to i32*
  %495 = load i32, i32* %494
  %496 = icmp eq i32 %492, %495
  %497 = select i1 %496, i64 110, i64 12
  %498 = add i64 %488, %497
  br i1 %496, label %block_40114e, label %block_4010ec

block_4013c0:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit316, %block_4013b5
  %499 = phi i64 [ %984, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit316 ], [ %684, %block_4013b5 ]
  %500 = load i64, i64* %20, align 8
  %501 = add i64 %500, -64
  %502 = inttoptr i64 %501 to i32*
  %503 = load i32, i32* %502
  %504 = add i64 %500, -56
  %505 = inttoptr i64 %504 to i32*
  %506 = load i32, i32* %505
  %507 = icmp eq i32 %503, %506
  %508 = select i1 %507, i64 110, i64 12
  %509 = add i64 %499, %508
  br i1 %507, label %block_40142e, label %block_4013cc

block_401335:                                     ; preds = %block_401318
  %510 = add i64 %64, -56
  %511 = add i64 %74, 7
  %512 = inttoptr i64 %510 to i32*
  store i32 0, i32* %512
  %513 = bitcast [32 x %union.VectorReg]* %22 to i8*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %515 = bitcast [32 x %union.VectorReg]* %22 to i32*
  %516 = getelementptr inbounds i8, i8* %513, i64 4
  %517 = bitcast i8* %516 to i32*
  %518 = bitcast i64* %514 to i32*
  %519 = getelementptr inbounds i8, i8* %513, i64 12
  %520 = bitcast i8* %519 to i32*
  %521 = bitcast %union.VectorReg* %23 to double*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %523 = bitcast i64* %522 to double*
  %524 = bitcast [32 x %union.VectorReg]* %22 to double*
  %525 = bitcast i64* %514 to double*
  br label %block_40133c

block_4011b1:                                     ; preds = %block_40114e, %block_40122b
  %526 = phi i64 [ %1141, %block_40114e ], [ %327, %block_40122b ]
  %527 = phi i64 [ %1135, %block_40114e ], [ %320, %block_40122b ]
  %528 = phi %struct.Memory* [ %1134, %block_40114e ], [ %319, %block_40122b ]
  %529 = add i64 %527, -52
  %530 = inttoptr i64 %529 to i32*
  %531 = load i32, i32* %530
  %532 = add i64 %527, -16
  %533 = inttoptr i64 %532 to i32*
  %534 = load i32, i32* %533
  %535 = sub i32 %531, %534
  %536 = lshr i32 %535, 31
  %537 = trunc i32 %536 to i8
  %538 = lshr i32 %531, 31
  %539 = lshr i32 %534, 31
  %540 = xor i32 %539, %538
  %541 = xor i32 %536, %538
  %542 = add nuw nsw i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = icmp ne i8 %537, 0
  %545 = xor i1 %544, %543
  %546 = select i1 %545, i64 12, i64 231
  %547 = add i64 %526, %546
  br i1 %545, label %block_4011bd, label %block_401298

block_401068:                                     ; preds = %block_40105c
  store i64 1, i64* %16, align 8, !tbaa !1947
  %548 = add i32 %834, 1
  %549 = add i64 %830, -60
  %550 = inttoptr i64 %549 to i32*
  store i32 %548, i32* %550
  %551 = add i64 %830, -16
  %552 = inttoptr i64 %551 to i32*
  %553 = load i32, i32* %552
  %554 = inttoptr i64 %832 to i32*
  %555 = load i32, i32* %554
  %556 = sub i32 %553, %555
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %14, align 8, !tbaa !1947
  %558 = add i64 %830, -8
  %559 = inttoptr i64 %558 to i64*
  %560 = load i64, i64* %559
  store i64 %560, i64* %15, align 8, !tbaa !1947
  %561 = add i64 %830, -12
  %562 = inttoptr i64 %561 to i32*
  %563 = load i32, i32* %562
  %564 = mul i32 %555, %563
  %565 = load i64, i64* %20, align 8
  %566 = add i64 %565, -56
  %567 = inttoptr i64 %566 to i32*
  %568 = load i32, i32* %567
  %569 = add i32 %568, %564
  %570 = sext i32 %569 to i64
  %571 = shl nsw i64 %570, 3
  %572 = load i64, i64* %15, align 8
  %573 = add i64 %571, %572
  store i64 %573, i64* %15, align 8, !tbaa !1947
  %574 = load i32, i32* %5, align 4
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %18, align 8, !tbaa !1947
  store i64 %573, i64* %17, align 8, !tbaa !1947
  %576 = add i64 %850, 3272
  %577 = add i64 %850, 54
  %578 = load i64, i64* %19, align 1, !tbaa !1947
  %579 = add i64 %578, -8
  %580 = inttoptr i64 %579 to i64*
  store i64 %577, i64* %580
  store i64 %579, i64* %19, align 8, !tbaa !1947
  %581 = tail call %struct.Memory* @sub_401d30_idamax(%struct.State* nonnull %0, i64 %576, %struct.Memory* %831)
  %582 = load i64, i64* %3, align 8
  store i32 0, i32* %333, align 1, !tbaa !1951
  store i32 0, i32* %335, align 1, !tbaa !1951
  store i32 0, i32* %336, align 1, !tbaa !1951
  store i32 0, i32* %338, align 1, !tbaa !1951
  %583 = load i64, i64* %14, align 8
  %584 = load i64, i64* %20, align 8
  %585 = add i64 %584, -56
  %586 = trunc i64 %583 to i32
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587
  %589 = add i32 %588, %586
  %590 = add i64 %584, -64
  %591 = inttoptr i64 %590 to i32*
  store i32 %589, i32* %591
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592
  %594 = add i64 %584, -24
  %595 = inttoptr i64 %594 to i64*
  %596 = load i64, i64* %595
  %597 = inttoptr i64 %585 to i32*
  %598 = load i32, i32* %597
  %599 = sext i32 %598 to i64
  %600 = shl nsw i64 %599, 2
  %601 = add i64 %600, %596
  %602 = inttoptr i64 %601 to i32*
  store i32 %593, i32* %602
  %603 = add i64 %584, -8
  %604 = inttoptr i64 %603 to i64*
  %605 = load i64, i64* %604
  store i64 %605, i64* %15, align 8, !tbaa !1947
  %606 = add i64 %584, -12
  %607 = inttoptr i64 %606 to i32*
  %608 = load i32, i32* %607
  %609 = inttoptr i64 %585 to i32*
  %610 = load i32, i32* %609
  %611 = mul i32 %610, %608
  %612 = load i64, i64* %20, align 8
  %613 = add i64 %612, -64
  %614 = inttoptr i64 %613 to i32*
  %615 = load i32, i32* %614
  %616 = add i32 %615, %611
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %14, align 8, !tbaa !1947
  %618 = icmp ult i32 %616, %611
  %619 = icmp ult i32 %616, %615
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %29, align 1, !tbaa !1953
  %622 = and i32 %616, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622) #6
  %624 = and i32 %623, 1
  %625 = xor i32 %624, 1
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %30, align 1, !tbaa !1966
  %627 = xor i32 %615, %611
  %628 = xor i32 %627, %616
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %31, align 1, !tbaa !1967
  %632 = icmp eq i32 %616, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %32, align 1, !tbaa !1968
  %634 = lshr i32 %616, 31
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %33, align 1, !tbaa !1969
  %636 = lshr i32 %611, 31
  %637 = lshr i32 %615, 31
  %638 = xor i32 %634, %636
  %639 = xor i32 %634, %637
  %640 = add nuw nsw i32 %638, %639
  %641 = icmp eq i32 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %34, align 1, !tbaa !1970
  %643 = sext i32 %616 to i64
  store i64 %643, i64* %17, align 8, !tbaa !1947
  %644 = shl nsw i64 %643, 3
  %645 = add i64 %644, %605
  %646 = inttoptr i64 %645 to double*
  %647 = load double, double* %646
  store double %647, double* %339, align 1, !tbaa !1971
  store double 0.000000e+00, double* %341, align 1, !tbaa !1971
  %648 = add i64 %582, 49
  store i64 %648, i64* %3, align 8
  %649 = load double, double* %342, align 1
  %650 = fcmp uno double %647, %649
  br i1 %650, label %651, label %664

; <label>:651                                     ; preds = %block_401068
  %652 = fadd double %647, %649
  %653 = bitcast double %652 to i64
  %654 = and i64 %653, 9221120237041090560
  %655 = icmp eq i64 %654, 9218868437227405312
  %656 = and i64 %653, 2251799813685247
  %657 = icmp ne i64 %656, 0
  %658 = and i1 %655, %657
  br i1 %658, label %659, label %663

; <label>:659                                     ; preds = %651
  %660 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %648, %struct.Memory* %581) #11
  %661 = load i64, i64* %3, align 8
  %662 = load i8, i8* %32, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit245

; <label>:663                                     ; preds = %651
  store i8 1, i8* %30, align 1, !tbaa !2065
  br label %673

; <label>:664                                     ; preds = %block_401068
  %665 = fcmp ogt double %647, %649
  br i1 %665, label %666, label %667

; <label>:666                                     ; preds = %664
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %673

; <label>:667                                     ; preds = %664
  %668 = fcmp olt double %647, %649
  br i1 %668, label %669, label %670

; <label>:669                                     ; preds = %667
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %673

; <label>:670                                     ; preds = %667
  %671 = fcmp oeq double %647, %649
  br i1 %671, label %672, label %673

; <label>:672                                     ; preds = %670
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %673

; <label>:673                                     ; preds = %672, %670, %669, %666, %663
  %674 = phi i8 [ 1, %672 ], [ %633, %670 ], [ 0, %669 ], [ 0, %666 ], [ 1, %663 ]
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit245

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit245: ; preds = %673, %659
  %675 = phi i8 [ %662, %659 ], [ %674, %673 ]
  %676 = phi i64 [ %661, %659 ], [ %648, %673 ]
  %677 = phi %struct.Memory* [ %660, %659 ], [ %581, %673 ]
  %678 = icmp eq i8 %675, 0
  %679 = select i1 %678, i64 17, i64 6
  %680 = add i64 %676, %679
  br i1 %678, label %block_4010e0, label %block_4010d5

block_4013b5:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit316
  %681 = load i8, i8* %30, align 1, !tbaa !1966
  %682 = icmp ne i8 %681, 0
  %683 = select i1 %682, i64 11, i64 6
  %684 = add i64 %984, %683
  %685 = icmp eq i8 %681, 1
  br i1 %685, label %block_4013c0, label %block_4013bb

block_4012b9:                                     ; preds = %block_40105c
  %686 = phi i64 [ %851, %block_40105c ]
  %687 = phi %struct.Memory* [ %831, %block_40105c ]
  %688 = phi i64 [ %830, %block_40105c ]
  br label %block_4012be

block_401298:                                     ; preds = %block_4011b1
  %689 = phi i64 [ %547, %block_4011b1 ]
  %690 = phi %struct.Memory* [ %528, %block_4011b1 ]
  %691 = phi i64 [ %527, %block_4011b1 ]
  %692 = add i64 %689, 14
  br label %block_4012a6

block_4013bb:                                     ; preds = %block_4013b5
  %693 = load i64, i64* %20, align 8
  %694 = add i64 %693, -56
  %695 = inttoptr i64 %694 to i32*
  %696 = load i32, i32* %695
  %697 = add i64 %693, -32
  %698 = inttoptr i64 %697 to i64*
  %699 = load i64, i64* %698
  %700 = add i64 %684, 459
  %701 = inttoptr i64 %699 to i32*
  store i32 %696, i32* %701
  br label %block_401586

block_40133c:                                     ; preds = %block_401586, %block_401335
  %702 = phi i64 [ %511, %block_401335 ], [ %1303, %block_401586 ]
  %703 = phi i64 [ %64, %block_401335 ], [ %1295, %block_401586 ]
  %704 = phi %struct.Memory* [ %2, %block_401335 ], [ %1297, %block_401586 ]
  %705 = add i64 %703, -56
  %706 = inttoptr i64 %705 to i32*
  %707 = load i32, i32* %706
  %708 = add i64 %703, -68
  %709 = inttoptr i64 %708 to i32*
  %710 = load i32, i32* %709
  %711 = sub i32 %707, %710
  %712 = lshr i32 %711, 31
  %713 = trunc i32 %712 to i8
  %714 = lshr i32 %707, 31
  %715 = lshr i32 %710, 31
  %716 = xor i32 %715, %714
  %717 = xor i32 %712, %714
  %718 = add nuw nsw i32 %717, %716
  %719 = icmp eq i32 %718, 2
  %720 = icmp ne i8 %713, 0
  %721 = xor i1 %720, %719
  %722 = select i1 %721, i64 12, i64 605
  %723 = add i64 %702, %722
  %724 = add i64 %723, 5
  br i1 %721, label %block_401348, label %block_401599

block_4012be:                                     ; preds = %block_401038.block_4012be_crit_edge, %block_4012b9
  %725 = phi double* [ %1315, %block_401038.block_4012be_crit_edge ], [ %342, %block_4012b9 ]
  %726 = phi double* [ %1314, %block_401038.block_4012be_crit_edge ], [ %341, %block_4012b9 ]
  %727 = phi double* [ %1312, %block_401038.block_4012be_crit_edge ], [ %339, %block_4012b9 ]
  %728 = phi i32* [ %1311, %block_401038.block_4012be_crit_edge ], [ %338, %block_4012b9 ]
  %729 = phi i32* [ %1309, %block_401038.block_4012be_crit_edge ], [ %336, %block_4012b9 ]
  %730 = phi i32* [ %1308, %block_401038.block_4012be_crit_edge ], [ %335, %block_4012b9 ]
  %731 = phi i32* [ %1306, %block_401038.block_4012be_crit_edge ], [ %333, %block_4012b9 ]
  %732 = phi i64 [ %64, %block_401038.block_4012be_crit_edge ], [ %688, %block_4012b9 ]
  %733 = phi i64 [ %74, %block_401038.block_4012be_crit_edge ], [ %686, %block_4012b9 ]
  %734 = phi %struct.Memory* [ %2, %block_401038.block_4012be_crit_edge ], [ %687, %block_4012b9 ]
  store i32 0, i32* %731, align 1, !tbaa !1951
  store i32 0, i32* %730, align 1, !tbaa !1951
  store i32 0, i32* %729, align 1, !tbaa !1951
  store i32 0, i32* %728, align 1, !tbaa !1951
  %735 = add i64 %732, -16
  %736 = inttoptr i64 %735 to i32*
  %737 = load i32, i32* %736
  %738 = add i32 %737, -1
  %739 = add i64 %732, -24
  %740 = inttoptr i64 %739 to i64*
  %741 = load i64, i64* %740
  %742 = sext i32 %738 to i64
  %743 = shl nsw i64 %742, 2
  %744 = add i64 %743, %741
  %745 = inttoptr i64 %744 to i32*
  store i32 %738, i32* %745
  %746 = add i64 %732, -8
  %747 = inttoptr i64 %746 to i64*
  %748 = load i64, i64* %747
  store i64 %748, i64* %15, align 8, !tbaa !1947
  %749 = add i64 %732, -12
  %750 = inttoptr i64 %749 to i32*
  %751 = load i32, i32* %750
  %752 = inttoptr i64 %735 to i32*
  %753 = load i32, i32* %752
  %754 = add i32 %753, -1
  %755 = sext i32 %751 to i64
  %756 = sext i32 %754 to i64
  %757 = mul nsw i64 %756, %755
  %758 = load i64, i64* %20, align 8
  %759 = add i64 %758, -16
  %760 = inttoptr i64 %759 to i32*
  %761 = load i32, i32* %760
  %762 = add i32 %761, -1
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %16, align 8, !tbaa !1947
  %764 = zext i32 %762 to i64
  %765 = trunc i64 %757 to i32
  %766 = add i32 %762, %765
  %767 = zext i32 %766 to i64
  store i64 %767, i64* %14, align 8, !tbaa !1947
  %768 = icmp ult i32 %766, %765
  %769 = icmp ult i32 %766, %762
  %770 = or i1 %768, %769
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %29, align 1, !tbaa !1953
  %772 = and i32 %766, 255
  %773 = tail call i32 @llvm.ctpop.i32(i32 %772) #6
  %774 = and i32 %773, 1
  %775 = xor i32 %774, 1
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %30, align 1, !tbaa !1966
  %777 = xor i64 %764, %757
  %778 = trunc i64 %777 to i32
  %779 = xor i32 %778, %766
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %31, align 1, !tbaa !1967
  %783 = icmp eq i32 %766, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %32, align 1, !tbaa !1968
  %785 = lshr i32 %766, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %33, align 1, !tbaa !1969
  %787 = lshr i32 %765, 31
  %788 = lshr i32 %762, 31
  %789 = xor i32 %785, %787
  %790 = xor i32 %785, %788
  %791 = add nuw nsw i32 %789, %790
  %792 = icmp eq i32 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %34, align 1, !tbaa !1970
  %794 = sext i32 %766 to i64
  store i64 %794, i64* %17, align 8, !tbaa !1947
  %795 = load i64, i64* %15, align 8
  %796 = shl nsw i64 %794, 3
  %797 = add i64 %796, %795
  %798 = inttoptr i64 %797 to double*
  %799 = load double, double* %798
  store double %799, double* %727, align 1, !tbaa !1971
  store double 0.000000e+00, double* %726, align 1, !tbaa !1971
  %800 = add i64 %733, 61
  store i64 %800, i64* %3, align 8
  %801 = load double, double* %725, align 1
  %802 = fcmp uno double %799, %801
  br i1 %802, label %803, label %815

; <label>:803                                     ; preds = %block_4012be
  %804 = fadd double %799, %801
  %805 = bitcast double %804 to i64
  %806 = and i64 %805, 9221120237041090560
  %807 = icmp eq i64 %806, 9218868437227405312
  %808 = and i64 %805, 2251799813685247
  %809 = icmp ne i64 %808, 0
  %810 = and i1 %807, %809
  br i1 %810, label %811, label %814

; <label>:811                                     ; preds = %803
  %812 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %800, %struct.Memory* %734) #11
  %813 = load i8, i8* %32, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit282

; <label>:814                                     ; preds = %803
  store i8 1, i8* %30, align 1, !tbaa !2065
  br label %824

; <label>:815                                     ; preds = %block_4012be
  %816 = fcmp ogt double %799, %801
  br i1 %816, label %817, label %818

; <label>:817                                     ; preds = %815
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %824

; <label>:818                                     ; preds = %815
  %819 = fcmp olt double %799, %801
  br i1 %819, label %820, label %821

; <label>:820                                     ; preds = %818
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %824

; <label>:821                                     ; preds = %818
  %822 = fcmp oeq double %799, %801
  br i1 %822, label %823, label %824

; <label>:823                                     ; preds = %821
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %824

; <label>:824                                     ; preds = %823, %821, %820, %817, %814
  %825 = phi i8 [ 1, %823 ], [ %784, %821 ], [ 0, %820 ], [ 0, %817 ], [ 1, %814 ]
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit282

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit282: ; preds = %824, %811
  %826 = phi i8 [ %813, %811 ], [ %825, %824 ]
  %827 = phi %struct.Memory* [ %812, %811 ], [ %734, %824 ]
  %828 = icmp eq i8 %826, 0
  br i1 %828, label %block_4015f8, label %block_401301

block_40105c:                                     ; preds = %block_4012a6, %block_401055
  %829 = phi i64 [ %329, %block_401055 ], [ %1243, %block_4012a6 ]
  %830 = phi i64 [ %64, %block_401055 ], [ %1235, %block_4012a6 ]
  %831 = phi %struct.Memory* [ %2, %block_401055 ], [ %1237, %block_4012a6 ]
  %832 = add i64 %830, -56
  %833 = inttoptr i64 %832 to i32*
  %834 = load i32, i32* %833
  %835 = add i64 %830, -68
  %836 = inttoptr i64 %835 to i32*
  %837 = load i32, i32* %836
  %838 = sub i32 %834, %837
  %839 = lshr i32 %838, 31
  %840 = trunc i32 %839 to i8
  %841 = lshr i32 %834, 31
  %842 = lshr i32 %837, 31
  %843 = xor i32 %842, %841
  %844 = xor i32 %839, %841
  %845 = add nuw nsw i32 %844, %843
  %846 = icmp eq i32 %845, 2
  %847 = icmp ne i8 %840, 0
  %848 = xor i1 %847, %846
  %849 = select i1 %848, i64 12, i64 605
  %850 = add i64 %829, %849
  %851 = add i64 %850, 5
  br i1 %848, label %block_401068, label %block_4012b9

block_401348:                                     ; preds = %block_40133c
  store i64 1, i64* %16, align 8, !tbaa !1947
  %852 = add i32 %707, 1
  %853 = add i64 %703, -60
  %854 = inttoptr i64 %853 to i32*
  store i32 %852, i32* %854
  %855 = add i64 %703, -16
  %856 = inttoptr i64 %855 to i32*
  %857 = load i32, i32* %856
  %858 = inttoptr i64 %705 to i32*
  %859 = load i32, i32* %858
  %860 = sub i32 %857, %859
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %14, align 8, !tbaa !1947
  %862 = add i64 %703, -8
  %863 = inttoptr i64 %862 to i64*
  %864 = load i64, i64* %863
  store i64 %864, i64* %15, align 8, !tbaa !1947
  %865 = add i64 %703, -12
  %866 = inttoptr i64 %865 to i32*
  %867 = load i32, i32* %866
  %868 = mul i32 %859, %867
  %869 = load i64, i64* %20, align 8
  %870 = add i64 %869, -56
  %871 = inttoptr i64 %870 to i32*
  %872 = load i32, i32* %871
  %873 = add i32 %872, %868
  %874 = sext i32 %873 to i64
  %875 = shl nsw i64 %874, 3
  %876 = load i64, i64* %15, align 8
  %877 = add i64 %875, %876
  store i64 %877, i64* %15, align 8, !tbaa !1947
  %878 = load i32, i32* %5, align 4
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %18, align 8, !tbaa !1947
  store i64 %877, i64* %17, align 8, !tbaa !1947
  %880 = add i64 %723, 2536
  %881 = add i64 %723, 54
  %882 = load i64, i64* %19, align 1, !tbaa !1947
  %883 = add i64 %882, -8
  %884 = inttoptr i64 %883 to i64*
  store i64 %881, i64* %884
  store i64 %883, i64* %19, align 8, !tbaa !1947
  %885 = tail call %struct.Memory* @sub_401d30_idamax(%struct.State* nonnull %0, i64 %880, %struct.Memory* %704)
  %886 = load i64, i64* %3, align 8
  store i32 0, i32* %515, align 1, !tbaa !1951
  store i32 0, i32* %517, align 1, !tbaa !1951
  store i32 0, i32* %518, align 1, !tbaa !1951
  store i32 0, i32* %520, align 1, !tbaa !1951
  %887 = load i64, i64* %14, align 8
  %888 = load i64, i64* %20, align 8
  %889 = add i64 %888, -56
  %890 = trunc i64 %887 to i32
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891
  %893 = add i32 %892, %890
  %894 = add i64 %888, -64
  %895 = inttoptr i64 %894 to i32*
  store i32 %893, i32* %895
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896
  %898 = add i64 %888, -24
  %899 = inttoptr i64 %898 to i64*
  %900 = load i64, i64* %899
  %901 = inttoptr i64 %889 to i32*
  %902 = load i32, i32* %901
  %903 = sext i32 %902 to i64
  %904 = shl nsw i64 %903, 2
  %905 = add i64 %904, %900
  %906 = inttoptr i64 %905 to i32*
  store i32 %897, i32* %906
  %907 = add i64 %888, -8
  %908 = inttoptr i64 %907 to i64*
  %909 = load i64, i64* %908
  store i64 %909, i64* %15, align 8, !tbaa !1947
  %910 = add i64 %888, -12
  %911 = inttoptr i64 %910 to i32*
  %912 = load i32, i32* %911
  %913 = inttoptr i64 %889 to i32*
  %914 = load i32, i32* %913
  %915 = mul i32 %914, %912
  %916 = load i64, i64* %20, align 8
  %917 = add i64 %916, -64
  %918 = inttoptr i64 %917 to i32*
  %919 = load i32, i32* %918
  %920 = add i32 %919, %915
  %921 = zext i32 %920 to i64
  store i64 %921, i64* %14, align 8, !tbaa !1947
  %922 = icmp ult i32 %920, %915
  %923 = icmp ult i32 %920, %919
  %924 = or i1 %922, %923
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %29, align 1, !tbaa !1953
  %926 = and i32 %920, 255
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926) #6
  %928 = and i32 %927, 1
  %929 = xor i32 %928, 1
  %930 = trunc i32 %929 to i8
  store i8 %930, i8* %30, align 1, !tbaa !1966
  %931 = xor i32 %919, %915
  %932 = xor i32 %931, %920
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  store i8 %935, i8* %31, align 1, !tbaa !1967
  %936 = icmp eq i32 %920, 0
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %32, align 1, !tbaa !1968
  %938 = lshr i32 %920, 31
  %939 = trunc i32 %938 to i8
  store i8 %939, i8* %33, align 1, !tbaa !1969
  %940 = lshr i32 %915, 31
  %941 = lshr i32 %919, 31
  %942 = xor i32 %938, %940
  %943 = xor i32 %938, %941
  %944 = add nuw nsw i32 %942, %943
  %945 = icmp eq i32 %944, 2
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %34, align 1, !tbaa !1970
  %947 = sext i32 %920 to i64
  store i64 %947, i64* %17, align 8, !tbaa !1947
  %948 = shl nsw i64 %947, 3
  %949 = add i64 %948, %909
  %950 = inttoptr i64 %949 to double*
  %951 = load double, double* %950
  store double %951, double* %521, align 1, !tbaa !1971
  store double 0.000000e+00, double* %523, align 1, !tbaa !1971
  %952 = add i64 %886, 49
  store i64 %952, i64* %3, align 8
  %953 = load double, double* %524, align 1
  %954 = fcmp uno double %951, %953
  br i1 %954, label %955, label %968

; <label>:955                                     ; preds = %block_401348
  %956 = fadd double %951, %953
  %957 = bitcast double %956 to i64
  %958 = and i64 %957, 9221120237041090560
  %959 = icmp eq i64 %958, 9218868437227405312
  %960 = and i64 %957, 2251799813685247
  %961 = icmp ne i64 %960, 0
  %962 = and i1 %959, %961
  br i1 %962, label %963, label %967

; <label>:963                                     ; preds = %955
  %964 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %952, %struct.Memory* %885) #11
  %965 = load i64, i64* %3, align 8
  %966 = load i8, i8* %32, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit316

; <label>:967                                     ; preds = %955
  store i8 1, i8* %30, align 1, !tbaa !2065
  br label %977

; <label>:968                                     ; preds = %block_401348
  %969 = fcmp ogt double %951, %953
  br i1 %969, label %970, label %971

; <label>:970                                     ; preds = %968
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %977

; <label>:971                                     ; preds = %968
  %972 = fcmp olt double %951, %953
  br i1 %972, label %973, label %974

; <label>:973                                     ; preds = %971
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %977

; <label>:974                                     ; preds = %971
  %975 = fcmp oeq double %951, %953
  br i1 %975, label %976, label %977

; <label>:976                                     ; preds = %974
  store i8 0, i8* %30, align 1, !tbaa !2065
  br label %977

; <label>:977                                     ; preds = %976, %974, %973, %970, %967
  %978 = phi i8 [ 1, %976 ], [ %937, %974 ], [ 0, %973 ], [ 0, %970 ], [ 1, %967 ]
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit316

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit316: ; preds = %977, %963
  %979 = phi i8 [ %966, %963 ], [ %978, %977 ]
  %980 = phi i64 [ %965, %963 ], [ %952, %977 ]
  %981 = phi %struct.Memory* [ %964, %963 ], [ %885, %977 ]
  %982 = icmp eq i8 %979, 0
  %983 = select i1 %982, i64 17, i64 6
  %984 = add i64 %980, %983
  br i1 %982, label %block_4013c0, label %block_4013b5

block_401491:                                     ; preds = %block_40150b, %block_40142e
  %985 = phi i64 [ %411, %block_40142e ], [ %487, %block_40150b ]
  %986 = phi i64 [ %405, %block_40142e ], [ %480, %block_40150b ]
  %987 = phi %struct.Memory* [ %404, %block_40142e ], [ %479, %block_40150b ]
  %988 = add i64 %986, -52
  %989 = inttoptr i64 %988 to i32*
  %990 = load i32, i32* %989
  %991 = add i64 %986, -16
  %992 = inttoptr i64 %991 to i32*
  %993 = load i32, i32* %992
  %994 = sub i32 %990, %993
  %995 = lshr i32 %994, 31
  %996 = trunc i32 %995 to i8
  %997 = lshr i32 %990, 31
  %998 = lshr i32 %993, 31
  %999 = xor i32 %998, %997
  %1000 = xor i32 %995, %997
  %1001 = add nuw nsw i32 %1000, %999
  %1002 = icmp eq i32 %1001, 2
  %1003 = icmp ne i8 %996, 0
  %1004 = xor i1 %1003, %1002
  %1005 = select i1 %1004, i64 12, i64 231
  %1006 = add i64 %985, %1005
  br i1 %1004, label %block_40149d, label %block_401578

block_4013cc:                                     ; preds = %block_4013c0
  %1007 = add i64 %500, -8
  %1008 = inttoptr i64 %1007 to i64*
  %1009 = load i64, i64* %1008
  %1010 = add i64 %500, -12
  %1011 = inttoptr i64 %1010 to i32*
  %1012 = load i32, i32* %1011
  %1013 = mul i32 %506, %1012
  %1014 = add i32 %503, %1013
  %1015 = sext i32 %1014 to i64
  %1016 = shl nsw i64 %1015, 3
  %1017 = add i64 %1016, %1009
  %1018 = inttoptr i64 %1017 to double*
  %1019 = load double, double* %1018
  %1020 = add i64 %500, -48
  %1021 = inttoptr i64 %1020 to double*
  store double %1019, double* %1021
  %1022 = inttoptr i64 %1007 to i64*
  %1023 = load i64, i64* %1022
  %1024 = inttoptr i64 %1010 to i32*
  %1025 = load i32, i32* %1024
  %1026 = inttoptr i64 %504 to i32*
  %1027 = load i32, i32* %1026
  %1028 = mul i32 %1027, %1025
  %1029 = load i64, i64* %20, align 8
  %1030 = add i64 %1029, -56
  %1031 = inttoptr i64 %1030 to i32*
  %1032 = load i32, i32* %1031
  %1033 = add i32 %1032, %1028
  %1034 = sext i32 %1033 to i64
  %1035 = shl nsw i64 %1034, 3
  %1036 = add i64 %1035, %1023
  %1037 = inttoptr i64 %1036 to double*
  %1038 = load double, double* %1037
  %1039 = add i64 %1029, -8
  %1040 = inttoptr i64 %1039 to i64*
  %1041 = load i64, i64* %1040
  %1042 = add i64 %1029, -12
  %1043 = inttoptr i64 %1042 to i32*
  %1044 = load i32, i32* %1043
  %1045 = mul i32 %1032, %1044
  %1046 = add i64 %1029, -64
  %1047 = inttoptr i64 %1046 to i32*
  %1048 = load i32, i32* %1047
  %1049 = add i32 %1048, %1045
  %1050 = sext i32 %1049 to i64
  %1051 = shl nsw i64 %1050, 3
  %1052 = add i64 %1051, %1041
  %1053 = inttoptr i64 %1052 to double*
  store double %1038, double* %1053
  %1054 = load i64, i64* %20, align 8
  %1055 = add i64 %1054, -48
  %1056 = inttoptr i64 %1055 to double*
  %1057 = load double, double* %1056
  store double %1057, double* %524, align 1, !tbaa !1971
  store double 0.000000e+00, double* %525, align 1, !tbaa !1971
  %1058 = add i64 %1054, -8
  %1059 = inttoptr i64 %1058 to i64*
  %1060 = load i64, i64* %1059
  %1061 = add i64 %1054, -12
  %1062 = inttoptr i64 %1061 to i32*
  %1063 = load i32, i32* %1062
  %1064 = add i64 %1054, -56
  %1065 = inttoptr i64 %1064 to i32*
  %1066 = load i32, i32* %1065
  %1067 = mul i32 %1066, %1063
  %1068 = add i32 %1066, %1067
  %1069 = sext i32 %1068 to i64
  %1070 = shl nsw i64 %1069, 3
  %1071 = add i64 %1070, %1060
  %1072 = add i64 %509, 98
  %1073 = inttoptr i64 %1071 to double*
  store double %1057, double* %1073
  br label %block_40142e

block_40114e:                                     ; preds = %block_4010ec, %block_4010e0
  %1074 = phi i64 [ %489, %block_4010e0 ], [ %1205, %block_4010ec ]
  %1075 = phi i64 [ %498, %block_4010e0 ], [ %1223, %block_4010ec ]
  %1076 = phi %struct.Memory* [ %677, %block_4010e0 ], [ %677, %block_4010ec ]
  store i64 1, i64* %16, align 8, !tbaa !1947
  %1077 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 80) to double*)
  %1078 = add i64 %1074, -8
  %1079 = inttoptr i64 %1078 to i64*
  %1080 = load i64, i64* %1079
  %1081 = add i64 %1074, -12
  %1082 = inttoptr i64 %1081 to i32*
  %1083 = load i32, i32* %1082
  %1084 = add i64 %1074, -56
  %1085 = inttoptr i64 %1084 to i32*
  %1086 = load i32, i32* %1085
  %1087 = mul i32 %1086, %1083
  %1088 = add i32 %1086, %1087
  %1089 = sext i32 %1088 to i64
  %1090 = shl nsw i64 %1089, 3
  %1091 = add i64 %1090, %1080
  %1092 = inttoptr i64 %1091 to double*
  %1093 = load double, double* %1092
  %1094 = fdiv double %1077, %1093
  %1095 = add i64 %1074, -48
  %1096 = inttoptr i64 %1095 to double*
  store double %1094, double* %1096
  %1097 = add i64 %1074, -16
  %1098 = inttoptr i64 %1097 to i32*
  %1099 = load i32, i32* %1098
  %1100 = load i64, i64* %20, align 8
  %1101 = add i64 %1100, -56
  %1102 = inttoptr i64 %1101 to i32*
  %1103 = load i32, i32* %1102
  %1104 = add i32 %1103, 1
  %1105 = sub i32 %1099, %1104
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %15, align 8, !tbaa !1947
  %1107 = add i64 %1100, -48
  %1108 = inttoptr i64 %1107 to double*
  %1109 = load double, double* %1108
  store double %1109, double* %342, align 1, !tbaa !1971
  store double 0.000000e+00, double* %343, align 1, !tbaa !1971
  %1110 = add i64 %1100, -8
  %1111 = inttoptr i64 %1110 to i64*
  %1112 = load i64, i64* %1111
  store i64 %1112, i64* %14, align 8, !tbaa !1947
  %1113 = add i64 %1100, -12
  %1114 = inttoptr i64 %1113 to i32*
  %1115 = load i32, i32* %1114
  %1116 = mul i32 %1103, %1115
  %1117 = load i64, i64* %20, align 8
  %1118 = add i64 %1117, -56
  %1119 = inttoptr i64 %1118 to i32*
  %1120 = load i32, i32* %1119
  %1121 = add i32 %1120, %1116
  %1122 = add i32 %1121, 1
  %1123 = sext i32 %1122 to i64
  %1124 = shl nsw i64 %1123, 3
  %1125 = load i64, i64* %14, align 8
  %1126 = add i64 %1124, %1125
  store i64 %1126, i64* %14, align 8, !tbaa !1947
  %1127 = load i32, i32* %7, align 4
  %1128 = zext i32 %1127 to i64
  store i64 %1128, i64* %18, align 8, !tbaa !1947
  store i64 %1126, i64* %17, align 8, !tbaa !1947
  %1129 = add i64 %1075, 3426
  %1130 = add i64 %1075, 93
  %1131 = load i64, i64* %19, align 1, !tbaa !1947
  %1132 = add i64 %1131, -8
  %1133 = inttoptr i64 %1132 to i64*
  store i64 %1130, i64* %1133
  store i64 %1132, i64* %19, align 8, !tbaa !1947
  %1134 = tail call %struct.Memory* @sub_401eb0_dscal_r(%struct.State* nonnull %0, i64 %1129, %struct.Memory* %1076)
  %1135 = load i64, i64* %20, align 8
  %1136 = add i64 %1135, -60
  %1137 = load i64, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138
  %1140 = add i64 %1135, -52
  %1141 = add i64 %1137, 6
  %1142 = inttoptr i64 %1140 to i32*
  store i32 %1139, i32* %1142
  br label %block_4011b1

block_4010db:                                     ; preds = %block_4010d5
  %1143 = load i64, i64* %20, align 8
  %1144 = add i64 %1143, -56
  %1145 = inttoptr i64 %1144 to i32*
  %1146 = load i32, i32* %1145
  %1147 = add i64 %1143, -32
  %1148 = inttoptr i64 %1147 to i64*
  %1149 = load i64, i64* %1148
  %1150 = add i64 %78, 459
  %1151 = inttoptr i64 %1149 to i32*
  store i32 %1146, i32* %1151
  br label %block_4012a6

block_4015e1:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %1152 = load i8, i8* %30, align 1, !tbaa !1966
  %1153 = icmp eq i8 %1152, 1
  br i1 %1153, label %block_4015f8, label %block_4015e7

block_401578:                                     ; preds = %block_401491
  %1154 = phi i64 [ %1006, %block_401491 ]
  %1155 = phi %struct.Memory* [ %987, %block_401491 ]
  %1156 = phi i64 [ %986, %block_401491 ]
  %1157 = add i64 %1154, 14
  br label %block_401586

block_4010ec:                                     ; preds = %block_4010e0
  %1158 = add i64 %489, -8
  %1159 = inttoptr i64 %1158 to i64*
  %1160 = load i64, i64* %1159
  %1161 = add i64 %489, -12
  %1162 = inttoptr i64 %1161 to i32*
  %1163 = load i32, i32* %1162
  %1164 = mul i32 %495, %1163
  %1165 = add i32 %492, %1164
  %1166 = sext i32 %1165 to i64
  %1167 = shl nsw i64 %1166, 3
  %1168 = add i64 %1167, %1160
  %1169 = inttoptr i64 %1168 to double*
  %1170 = load double, double* %1169
  %1171 = add i64 %489, -48
  %1172 = inttoptr i64 %1171 to double*
  store double %1170, double* %1172
  %1173 = inttoptr i64 %1158 to i64*
  %1174 = load i64, i64* %1173
  %1175 = inttoptr i64 %1161 to i32*
  %1176 = load i32, i32* %1175
  %1177 = inttoptr i64 %493 to i32*
  %1178 = load i32, i32* %1177
  %1179 = mul i32 %1178, %1176
  %1180 = load i64, i64* %20, align 8
  %1181 = add i64 %1180, -56
  %1182 = inttoptr i64 %1181 to i32*
  %1183 = load i32, i32* %1182
  %1184 = add i32 %1183, %1179
  %1185 = sext i32 %1184 to i64
  %1186 = shl nsw i64 %1185, 3
  %1187 = add i64 %1186, %1174
  %1188 = inttoptr i64 %1187 to double*
  %1189 = load double, double* %1188
  %1190 = add i64 %1180, -8
  %1191 = inttoptr i64 %1190 to i64*
  %1192 = load i64, i64* %1191
  %1193 = add i64 %1180, -12
  %1194 = inttoptr i64 %1193 to i32*
  %1195 = load i32, i32* %1194
  %1196 = mul i32 %1183, %1195
  %1197 = add i64 %1180, -64
  %1198 = inttoptr i64 %1197 to i32*
  %1199 = load i32, i32* %1198
  %1200 = add i32 %1199, %1196
  %1201 = sext i32 %1200 to i64
  %1202 = shl nsw i64 %1201, 3
  %1203 = add i64 %1202, %1192
  %1204 = inttoptr i64 %1203 to double*
  store double %1189, double* %1204
  %1205 = load i64, i64* %20, align 8
  %1206 = add i64 %1205, -48
  %1207 = inttoptr i64 %1206 to double*
  %1208 = load double, double* %1207
  store double %1208, double* %342, align 1, !tbaa !1971
  store double 0.000000e+00, double* %343, align 1, !tbaa !1971
  %1209 = add i64 %1205, -8
  %1210 = inttoptr i64 %1209 to i64*
  %1211 = load i64, i64* %1210
  %1212 = add i64 %1205, -12
  %1213 = inttoptr i64 %1212 to i32*
  %1214 = load i32, i32* %1213
  %1215 = add i64 %1205, -56
  %1216 = inttoptr i64 %1215 to i32*
  %1217 = load i32, i32* %1216
  %1218 = mul i32 %1217, %1214
  %1219 = add i32 %1217, %1218
  %1220 = sext i32 %1219 to i64
  %1221 = shl nsw i64 %1220, 3
  %1222 = add i64 %1221, %1211
  %1223 = add i64 %498, 98
  %1224 = inttoptr i64 %1222 to double*
  store double %1208, double* %1224
  br label %block_40114e

block_401307:                                     ; preds = %block_401301
  %1225 = load i64, i64* %20, align 8
  %1226 = add i64 %1225, -16
  %1227 = inttoptr i64 %1226 to i32*
  %1228 = load i32, i32* %1227
  %1229 = add i32 %1228, -1
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %14, align 8, !tbaa !1947
  %1231 = add i64 %1225, -32
  %1232 = inttoptr i64 %1231 to i64*
  %1233 = load i64, i64* %1232
  store i64 %1233, i64* %15, align 8, !tbaa !1947
  %1234 = inttoptr i64 %1233 to i32*
  store i32 %1229, i32* %1234
  br label %block_4015f8

block_4012a6:                                     ; preds = %block_4010db, %block_401298
  %1235 = phi i64 [ %691, %block_401298 ], [ %1143, %block_4010db ]
  %1236 = phi i64 [ %692, %block_401298 ], [ %1150, %block_4010db ]
  %1237 = phi %struct.Memory* [ %690, %block_401298 ], [ %677, %block_4010db ]
  %1238 = add i64 %1235, -56
  %1239 = inttoptr i64 %1238 to i32*
  %1240 = load i32, i32* %1239
  %1241 = add i32 %1240, 1
  %1242 = inttoptr i64 %1238 to i32*
  store i32 %1241, i32* %1242
  %1243 = add i64 %1236, -586
  br label %block_40105c

block_4011e4:                                     ; preds = %block_4011bd
  %1244 = load i64, i64* %20, align 8
  %1245 = add i64 %1244, -8
  %1246 = inttoptr i64 %1245 to i64*
  %1247 = load i64, i64* %1246
  %1248 = add i64 %1244, -12
  %1249 = inttoptr i64 %1248 to i32*
  %1250 = load i32, i32* %1249
  %1251 = add i64 %1244, -52
  %1252 = inttoptr i64 %1251 to i32*
  %1253 = load i32, i32* %1252
  %1254 = mul i32 %1253, %1250
  %1255 = add i64 %1244, -56
  %1256 = inttoptr i64 %1255 to i32*
  %1257 = load i32, i32* %1256
  %1258 = add i32 %1257, %1254
  %1259 = sext i32 %1258 to i64
  %1260 = shl nsw i64 %1259, 3
  %1261 = add i64 %1260, %1247
  %1262 = inttoptr i64 %1261 to double*
  %1263 = load double, double* %1262
  %1264 = load i64, i64* %20, align 8
  %1265 = add i64 %1264, -64
  %1266 = inttoptr i64 %1265 to i32*
  %1267 = load i32, i32* %1266
  %1268 = add i32 %1267, %1254
  %1269 = sext i32 %1268 to i64
  %1270 = shl nsw i64 %1269, 3
  %1271 = add i64 %1270, %1247
  %1272 = inttoptr i64 %1271 to double*
  store double %1263, double* %1272
  %1273 = add i64 %1264, -48
  %1274 = inttoptr i64 %1273 to double*
  %1275 = load double, double* %1274
  store double %1275, double* %342, align 1, !tbaa !1971
  store double 0.000000e+00, double* %343, align 1, !tbaa !1971
  %1276 = add i64 %1264, -8
  %1277 = inttoptr i64 %1276 to i64*
  %1278 = load i64, i64* %1277
  %1279 = add i64 %1264, -12
  %1280 = inttoptr i64 %1279 to i32*
  %1281 = load i32, i32* %1280
  %1282 = add i64 %1264, -52
  %1283 = inttoptr i64 %1282 to i32*
  %1284 = load i32, i32* %1283
  %1285 = mul i32 %1284, %1281
  %1286 = add i64 %1264, -56
  %1287 = inttoptr i64 %1286 to i32*
  %1288 = load i32, i32* %1287
  %1289 = add i32 %1288, %1285
  %1290 = sext i32 %1289 to i64
  %1291 = shl nsw i64 %1290, 3
  %1292 = add i64 %1291, %1278
  %1293 = add i64 %110, 71
  %1294 = inttoptr i64 %1292 to double*
  store double %1275, double* %1294
  br label %block_40122b

block_401586:                                     ; preds = %block_401578, %block_4013bb
  %1295 = phi i64 [ %1156, %block_401578 ], [ %693, %block_4013bb ]
  %1296 = phi i64 [ %1157, %block_401578 ], [ %700, %block_4013bb ]
  %1297 = phi %struct.Memory* [ %1155, %block_401578 ], [ %981, %block_4013bb ]
  %1298 = add i64 %1295, -56
  %1299 = inttoptr i64 %1298 to i32*
  %1300 = load i32, i32* %1299
  %1301 = add i32 %1300, 1
  %1302 = inttoptr i64 %1298 to i32*
  store i32 %1301, i32* %1302
  %1303 = add i64 %1296, -586
  br label %block_40133c

block_401038:                                     ; preds = %block_401010
  br i1 %72, label %block_401038.block_4012be_crit_edge, label %block_401055

block_401038.block_4012be_crit_edge:              ; preds = %block_401038
  %1304 = bitcast [32 x %union.VectorReg]* %22 to i8*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1306 = bitcast [32 x %union.VectorReg]* %22 to i32*
  %1307 = getelementptr inbounds i8, i8* %1304, i64 4
  %1308 = bitcast i8* %1307 to i32*
  %1309 = bitcast i64* %1305 to i32*
  %1310 = getelementptr inbounds i8, i8* %1304, i64 12
  %1311 = bitcast i8* %1310 to i32*
  %1312 = bitcast %union.VectorReg* %23 to double*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1314 = bitcast i64* %1313 to double*
  %1315 = bitcast [32 x %union.VectorReg]* %22 to double*
  br label %block_4012be

block_4014c4:                                     ; preds = %block_40149d
  %1316 = load i64, i64* %20, align 8
  %1317 = add i64 %1316, -8
  %1318 = inttoptr i64 %1317 to i64*
  %1319 = load i64, i64* %1318
  %1320 = add i64 %1316, -12
  %1321 = inttoptr i64 %1320 to i32*
  %1322 = load i32, i32* %1321
  %1323 = add i64 %1316, -52
  %1324 = inttoptr i64 %1323 to i32*
  %1325 = load i32, i32* %1324
  %1326 = mul i32 %1325, %1322
  %1327 = add i64 %1316, -56
  %1328 = inttoptr i64 %1327 to i32*
  %1329 = load i32, i32* %1328
  %1330 = add i32 %1329, %1326
  %1331 = sext i32 %1330 to i64
  %1332 = shl nsw i64 %1331, 3
  %1333 = add i64 %1332, %1319
  %1334 = inttoptr i64 %1333 to double*
  %1335 = load double, double* %1334
  %1336 = load i64, i64* %20, align 8
  %1337 = add i64 %1336, -64
  %1338 = inttoptr i64 %1337 to i32*
  %1339 = load i32, i32* %1338
  %1340 = add i32 %1339, %1326
  %1341 = sext i32 %1340 to i64
  %1342 = shl nsw i64 %1341, 3
  %1343 = add i64 %1342, %1319
  %1344 = inttoptr i64 %1343 to double*
  store double %1335, double* %1344
  %1345 = add i64 %1336, -48
  %1346 = inttoptr i64 %1345 to double*
  %1347 = load double, double* %1346
  store double %1347, double* %524, align 1, !tbaa !1971
  store double 0.000000e+00, double* %525, align 1, !tbaa !1971
  %1348 = add i64 %1336, -8
  %1349 = inttoptr i64 %1348 to i64*
  %1350 = load i64, i64* %1349
  %1351 = add i64 %1336, -12
  %1352 = inttoptr i64 %1351 to i32*
  %1353 = load i32, i32* %1352
  %1354 = add i64 %1336, -52
  %1355 = inttoptr i64 %1354 to i32*
  %1356 = load i32, i32* %1355
  %1357 = mul i32 %1356, %1353
  %1358 = add i64 %1336, -56
  %1359 = inttoptr i64 %1358 to i32*
  %1360 = load i32, i32* %1359
  %1361 = add i32 %1360, %1357
  %1362 = sext i32 %1361 to i64
  %1363 = shl nsw i64 %1362, 3
  %1364 = add i64 %1363, %1350
  %1365 = add i64 %148, 71
  %1366 = inttoptr i64 %1364 to double*
  store double %1347, double* %1366
  br label %block_40150b

block_4015e7:                                     ; preds = %block_4015e1
  %1367 = load i64, i64* %20, align 8
  %1368 = add i64 %1367, -16
  %1369 = inttoptr i64 %1368 to i32*
  %1370 = load i32, i32* %1369
  %1371 = add i32 %1370, -1
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %14, align 8, !tbaa !1947
  %1373 = add i64 %1367, -32
  %1374 = inttoptr i64 %1373 to i64*
  %1375 = load i64, i64* %1374
  store i64 %1375, i64* %15, align 8, !tbaa !1947
  %1376 = inttoptr i64 %1375 to i32*
  store i32 %1371, i32* %1376
  br label %block_4015f8

block_4015f8:                                     ; preds = %block_4015e7, %block_401307, %block_4015e1, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit282, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %block_401301
  %1377 = phi %struct.Memory* [ %827, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit282 ], [ %827, %block_401301 ], [ %827, %block_401307 ], [ %251, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %251, %block_4015e1 ], [ %251, %block_4015e7 ]
  %1378 = load i64, i64* %19, align 8
  %1379 = add i64 %1378, 96
  %1380 = icmp ugt i64 %1378, -97
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %29, align 1, !tbaa !1953
  %1382 = trunc i64 %1379 to i32
  %1383 = and i32 %1382, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383) #6
  %1385 = and i32 %1384, 1
  %1386 = xor i32 %1385, 1
  %1387 = trunc i32 %1386 to i8
  store i8 %1387, i8* %30, align 1, !tbaa !1966
  %1388 = xor i64 %1379, %1378
  %1389 = lshr i64 %1388, 4
  %1390 = trunc i64 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %31, align 1, !tbaa !1967
  %1392 = icmp eq i64 %1379, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %32, align 1, !tbaa !1968
  %1394 = lshr i64 %1379, 63
  %1395 = trunc i64 %1394 to i8
  store i8 %1395, i8* %33, align 1, !tbaa !1969
  %1396 = lshr i64 %1378, 63
  %1397 = xor i64 %1394, %1396
  %1398 = add nuw nsw i64 %1397, %1394
  %1399 = icmp eq i64 %1398, 2
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %34, align 1, !tbaa !1970
  %1401 = add i64 %1378, 104
  %1402 = inttoptr i64 %1379 to i64*
  %1403 = load i64, i64* %1402
  store i64 %1403, i64* %20, align 8, !tbaa !1947
  %1404 = inttoptr i64 %1401 to i64*
  %1405 = load i64, i64* %1404
  store i64 %1405, i64* %3, align 8, !tbaa !1947
  %1406 = add i64 %1378, 112
  store i64 %1406, i64* %19, align 8, !tbaa !1947
  ret %struct.Memory* %1377
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4022b0_daxpy_ur(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_4022b0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %12 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %17 = load i64, i64* %15, align 8
  %18 = load i64, i64* %14, align 1, !tbaa !1947
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20
  store i64 %19, i64* %14, align 8, !tbaa !1947
  store i64 %19, i64* %15, align 8, !tbaa !1947
  %21 = add i64 %18, -12
  %22 = load i32, i32* %7, align 4
  %23 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %23
  %24 = add i64 %18, -24
  %25 = bitcast [32 x %union.VectorReg]* %16 to i8*
  %26 = bitcast [32 x %union.VectorReg]* %16 to double*
  %27 = load double, double* %26, align 1
  %28 = inttoptr i64 %24 to double*
  store double %27, double* %28
  %29 = add i64 %18, -32
  %30 = load i64, i64* %13, align 8
  %31 = inttoptr i64 %29 to i64*
  store i64 %30, i64* %31
  %32 = add i64 %18, -36
  %33 = load i32, i32* %5, align 4
  %34 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %34
  %35 = add i64 %18, -48
  %36 = load i64, i64* %11, align 8
  %37 = inttoptr i64 %35 to i64*
  store i64 %36, i64* %37
  %38 = add i64 %18, -52
  %39 = load i32, i32* %9, align 4
  %40 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %40
  %41 = add i64 %18, -12
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %44, align 1, !tbaa !1953
  %45 = and i32 %43, 255
  %46 = tail call i32 @llvm.ctpop.i32(i32 %45) #6
  %47 = and i32 %46, 1
  %48 = xor i32 %47, 1
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !1966
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %51, align 1, !tbaa !1967
  %52 = icmp eq i32 %43, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %53, i8* %54, align 1, !tbaa !1968
  %55 = lshr i32 %43, 31
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %56, i8* %57, align 1, !tbaa !1969
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %58, align 1, !tbaa !1970
  %59 = xor i1 %52, true
  %60 = icmp eq i8 %56, 0
  %61 = and i1 %60, %59
  %62 = select i1 %61, i64 42, i64 37
  %63 = add i64 %62, %1
  br i1 %61, label %block_4022da, label %block_4022d5

block_402364:                                     ; preds = %block_402358
  %64 = inttoptr i64 %191 to i64*
  %65 = load i64, i64* %64
  %66 = inttoptr i64 %192 to i32*
  %67 = load i32, i32* %66
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 3
  %70 = add i64 %69, %65
  %71 = inttoptr i64 %70 to double*
  %72 = load double, double* %71
  %73 = inttoptr i64 %193 to double*
  %74 = load double, double* %73
  %75 = inttoptr i64 %194 to i64*
  %76 = load i64, i64* %75
  %77 = inttoptr i64 %195 to i32*
  %78 = load i32, i32* %77
  %79 = sext i32 %78 to i64
  %80 = shl nsw i64 %79, 3
  %81 = add i64 %80, %76
  %82 = inttoptr i64 %81 to double*
  %83 = load double, double* %82
  %84 = fmul double %74, %83
  store double %84, double* %142, align 1, !tbaa !1971
  store i64 0, i64* %143, align 1, !tbaa !1971
  %85 = fadd double %72, %84
  store double %85, double* %26, align 1, !tbaa !1971
  store i64 0, i64* %132, align 1, !tbaa !1971
  store i64 %68, i64* %11, align 8, !tbaa !1947
  %86 = inttoptr i64 %70 to double*
  store double %85, double* %86
  %87 = inttoptr i64 %195 to i32*
  %88 = load i32, i32* %87
  %89 = inttoptr i64 %196 to i32*
  %90 = load i32, i32* %89
  %91 = add i32 %90, %88
  %92 = inttoptr i64 %195 to i32*
  store i32 %91, i32* %92
  %93 = inttoptr i64 %192 to i32*
  %94 = load i32, i32* %93
  %95 = inttoptr i64 %197 to i32*
  %96 = load i32, i32* %95
  %97 = add i32 %96, %94
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %12, align 8, !tbaa !1947
  %99 = inttoptr i64 %192 to i32*
  store i32 %97, i32* %99
  %100 = inttoptr i64 %187 to i32*
  %101 = load i32, i32* %100
  %102 = add i32 %101, 1
  %103 = inttoptr i64 %187 to i32*
  store i32 %102, i32* %103
  %104 = add i64 %535, -12
  br label %block_402358

block_4023e0:                                     ; preds = %block_4023ec, %block_4023d9
  %105 = phi i64 [ %178, %block_4023d9 ], [ %516, %block_4023ec ]
  %106 = phi %struct.Memory* [ %468, %block_4023d9 ], [ %106, %block_4023ec ]
  %107 = inttoptr i64 %476 to i32*
  %108 = load i32, i32* %107
  %109 = inttoptr i64 %469 to i32*
  %110 = load i32, i32* %109
  %111 = sub i32 %108, %110
  %112 = lshr i32 %111, 31
  %113 = lshr i32 %108, 31
  %114 = lshr i32 %110, 31
  %115 = xor i32 %114, %113
  %116 = xor i32 %112, %113
  %117 = add nuw nsw i32 %116, %115
  %118 = icmp eq i32 %117, 2
  %119 = icmp ne i32 %112, 0
  %120 = xor i1 %119, %118
  %121 = select i1 %120, i64 12, i64 74
  %122 = add i64 %105, %121
  br i1 %120, label %block_4023ec, label %block_40242a

block_4022f7:                                     ; preds = %block_4022ec, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %123 = phi i64 [ %285, %block_4022ec ], [ %177, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  %124 = load i64, i64* %15, align 8
  %125 = add i64 %124, -28
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %126
  %128 = icmp eq i32 %127, 1
  %129 = select i1 %128, i64 10, i64 20
  %130 = add i64 %123, %129
  br i1 %128, label %block_402301, label %block_40230b

block_4022da:                                     ; preds = %block_4022b0
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %133 = bitcast [32 x %union.VectorReg]* %16 to i32*
  store i32 0, i32* %133, align 1, !tbaa !1951
  %134 = getelementptr inbounds i8, i8* %25, i64 4
  %135 = bitcast i8* %134 to i32*
  store i32 0, i32* %135, align 1, !tbaa !1951
  %136 = bitcast i64* %132 to i32*
  store i32 0, i32* %136, align 1, !tbaa !1951
  %137 = getelementptr inbounds i8, i8* %25, i64 12
  %138 = bitcast i8* %137 to i32*
  store i32 0, i32* %138, align 1, !tbaa !1951
  %139 = add i64 %18, -24
  %140 = inttoptr i64 %139 to double*
  %141 = load double, double* %140
  %142 = bitcast %union.VectorReg* %131 to double*
  store double %141, double* %142, align 1, !tbaa !1971
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %144 = bitcast i64* %143 to double*
  store double 0.000000e+00, double* %144, align 1, !tbaa !1971
  %145 = add i64 %63, 12
  store i64 %145, i64* %3, align 8
  %146 = load double, double* %26, align 1
  %147 = fcmp uno double %141, %146
  br i1 %147, label %148, label %161

; <label>:148                                     ; preds = %block_4022da
  %149 = fadd double %141, %146
  %150 = bitcast double %149 to i64
  %151 = and i64 %150, 9221120237041090560
  %152 = icmp eq i64 %151, 9218868437227405312
  %153 = and i64 %150, 2251799813685247
  %154 = icmp ne i64 %153, 0
  %155 = and i1 %152, %154
  br i1 %155, label %156, label %160

; <label>:156                                     ; preds = %148
  %157 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %145, %struct.Memory* %2) #11
  %158 = load i64, i64* %3, align 8
  %159 = load i8, i8* %54, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:160                                     ; preds = %148
  store i8 1, i8* %54, align 1, !tbaa !2065
  store i8 1, i8* %50, align 1, !tbaa !2065
  store i8 1, i8* %44, align 1, !tbaa !2065
  br label %170

; <label>:161                                     ; preds = %block_4022da
  %162 = fcmp ogt double %141, %146
  br i1 %162, label %163, label %164

; <label>:163                                     ; preds = %161
  store i8 0, i8* %54, align 1, !tbaa !2065
  store i8 0, i8* %50, align 1, !tbaa !2065
  store i8 0, i8* %44, align 1, !tbaa !2065
  br label %170

; <label>:164                                     ; preds = %161
  %165 = fcmp olt double %141, %146
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %164
  store i8 0, i8* %54, align 1, !tbaa !2065
  store i8 0, i8* %50, align 1, !tbaa !2065
  store i8 1, i8* %44, align 1, !tbaa !2065
  br label %170

; <label>:167                                     ; preds = %164
  %168 = fcmp oeq double %141, %146
  br i1 %168, label %169, label %170

; <label>:169                                     ; preds = %167
  store i8 1, i8* %54, align 1, !tbaa !2065
  store i8 0, i8* %50, align 1, !tbaa !2065
  store i8 0, i8* %44, align 1, !tbaa !2065
  br label %170

; <label>:170                                     ; preds = %169, %167, %166, %163, %160
  %171 = phi i8 [ 1, %169 ], [ 0, %167 ], [ 0, %166 ], [ 0, %163 ], [ 1, %160 ]
  store i8 0, i8* %58, align 1, !tbaa !2065
  store i8 0, i8* %57, align 1, !tbaa !2065
  store i8 0, i8* %51, align 1, !tbaa !2065
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %170, %156
  %172 = phi i8 [ %159, %156 ], [ %171, %170 ]
  %173 = phi i64 [ %158, %156 ], [ %145, %170 ]
  %174 = phi %struct.Memory* [ %157, %156 ], [ %2, %170 ]
  %175 = icmp eq i8 %172, 0
  %176 = select i1 %175, i64 17, i64 6
  %177 = add i64 %173, %176
  br i1 %175, label %block_4022f7, label %block_4022ec

block_4023d9:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %178 = add i64 %475, 7
  %179 = inttoptr i64 %476 to i32*
  store i32 0, i32* %179
  %180 = add i64 %467, -40
  %181 = add i64 %467, -16
  %182 = add i64 %467, -24
  br label %block_4023e0

block_4022f2:                                     ; preds = %block_4022ec
  br label %block_40254b

block_4022d5:                                     ; preds = %block_4022b0
  br label %block_40254b

block_402439:                                     ; preds = %block_40242a
  %183 = add i64 %402, 5
  br label %block_40243e

block_402351:                                     ; preds = %block_402335, %block_40233f
  %184 = phi i64 [ %339, %block_402335 ], [ %315, %block_40233f ]
  %185 = phi i64 [ %329, %block_402335 ], [ %313, %block_40233f ]
  %186 = phi %struct.Memory* [ %330, %block_402335 ], [ %330, %block_40233f ]
  %187 = add i64 %185, -48
  %188 = add i64 %184, 7
  %189 = inttoptr i64 %187 to i32*
  store i32 0, i32* %189
  %190 = add i64 %185, -4
  %191 = add i64 %185, -40
  %192 = add i64 %185, -56
  %193 = add i64 %185, -16
  %194 = add i64 %185, -24
  %195 = add i64 %185, -52
  %196 = add i64 %185, -28
  %197 = add i64 %185, -44
  br label %block_402358

block_402450:                                     ; preds = %block_402444
  %198 = inttoptr i64 %319 to i64*
  %199 = load i64, i64* %198
  %200 = sext i32 %290 to i64
  %201 = shl nsw i64 %200, 3
  %202 = add i64 %201, %199
  %203 = inttoptr i64 %202 to double*
  %204 = load double, double* %203
  %205 = inttoptr i64 %318 to double*
  %206 = load double, double* %205
  %207 = inttoptr i64 %317 to i64*
  %208 = load i64, i64* %207
  %209 = add i64 %201, %208
  %210 = inttoptr i64 %209 to double*
  %211 = load double, double* %210
  %212 = fmul double %206, %211
  %213 = fadd double %204, %212
  %214 = inttoptr i64 %202 to double*
  store double %213, double* %214
  %215 = inttoptr i64 %319 to i64*
  %216 = load i64, i64* %215
  %217 = inttoptr i64 %476 to i32*
  %218 = load i32, i32* %217
  %219 = add i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = shl nsw i64 %220, 3
  %222 = add i64 %221, %216
  %223 = inttoptr i64 %222 to double*
  %224 = load double, double* %223
  %225 = inttoptr i64 %318 to double*
  %226 = load double, double* %225
  %227 = inttoptr i64 %317 to i64*
  %228 = load i64, i64* %227
  %229 = add i64 %221, %228
  %230 = inttoptr i64 %229 to double*
  %231 = load double, double* %230
  %232 = fmul double %226, %231
  %233 = fadd double %224, %232
  %234 = inttoptr i64 %222 to double*
  store double %233, double* %234
  %235 = inttoptr i64 %319 to i64*
  %236 = load i64, i64* %235
  %237 = inttoptr i64 %476 to i32*
  %238 = load i32, i32* %237
  %239 = add i32 %238, 2
  %240 = sext i32 %239 to i64
  %241 = shl nsw i64 %240, 3
  %242 = add i64 %241, %236
  %243 = inttoptr i64 %242 to double*
  %244 = load double, double* %243
  %245 = inttoptr i64 %318 to double*
  %246 = load double, double* %245
  %247 = inttoptr i64 %317 to i64*
  %248 = load i64, i64* %247
  %249 = add i64 %241, %248
  %250 = inttoptr i64 %249 to double*
  %251 = load double, double* %250
  %252 = fmul double %246, %251
  %253 = fadd double %244, %252
  %254 = inttoptr i64 %242 to double*
  store double %253, double* %254
  %255 = inttoptr i64 %319 to i64*
  %256 = load i64, i64* %255
  %257 = inttoptr i64 %476 to i32*
  %258 = load i32, i32* %257
  %259 = add i32 %258, 3
  %260 = zext i32 %259 to i64
  %261 = sext i32 %259 to i64
  %262 = shl nsw i64 %261, 3
  %263 = add i64 %262, %256
  %264 = inttoptr i64 %263 to double*
  %265 = load double, double* %264
  store double 0.000000e+00, double* %323, align 1, !tbaa !1971
  %266 = inttoptr i64 %318 to double*
  %267 = load double, double* %266
  %268 = inttoptr i64 %317 to i64*
  %269 = load i64, i64* %268
  %270 = add i64 %262, %269
  %271 = inttoptr i64 %270 to double*
  %272 = load double, double* %271
  %273 = fmul double %267, %272
  store double %273, double* %142, align 1, !tbaa !1971
  store i64 0, i64* %143, align 1, !tbaa !1971
  %274 = fadd double %265, %273
  store double %274, double* %26, align 1, !tbaa !1971
  store i64 0, i64* %132, align 1, !tbaa !1971
  store i64 %260, i64* %12, align 8, !tbaa !1947
  store i64 %261, i64* %11, align 8, !tbaa !1947
  %275 = inttoptr i64 %263 to double*
  store double %274, double* %275
  %276 = inttoptr i64 %476 to i32*
  %277 = load i32, i32* %276
  %278 = add i32 %277, 4
  %279 = zext i32 %278 to i64
  %280 = inttoptr i64 %476 to i32*
  store i32 %278, i32* %280
  %281 = add i64 %306, -12
  br label %block_402444

block_4022ec:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %282 = load i8, i8* %50, align 1, !tbaa !1966
  %283 = icmp ne i8 %282, 0
  %284 = select i1 %283, i64 11, i64 6
  %285 = add i64 %177, %284
  %286 = icmp eq i8 %282, 1
  br i1 %286, label %block_4022f7, label %block_4022f2

block_402444:                                     ; preds = %block_40243e, %block_402450
  %287 = phi i64 [ %326, %block_40243e ], [ %281, %block_402450 ]
  %288 = phi %struct.Memory* [ %322, %block_40243e ], [ %288, %block_402450 ]
  %289 = inttoptr i64 %476 to i32*
  %290 = load i32, i32* %289
  %291 = zext i32 %290 to i64
  %292 = inttoptr i64 %320 to i32*
  %293 = load i32, i32* %292
  %294 = sub i32 %290, %293
  %295 = lshr i32 %294, 31
  %296 = trunc i32 %295 to i8
  %297 = lshr i32 %290, 31
  %298 = lshr i32 %293, 31
  %299 = xor i32 %298, %297
  %300 = xor i32 %295, %297
  %301 = add nuw nsw i32 %300, %299
  %302 = icmp eq i32 %301, 2
  %303 = icmp ne i8 %296, 0
  %304 = xor i1 %303, %302
  %305 = select i1 %304, i64 12, i64 263
  %306 = add i64 %287, %305
  br i1 %304, label %block_402450, label %block_40254b.loopexit

block_40233f:                                     ; preds = %block_402335
  %307 = add i64 %329, -4
  %308 = inttoptr i64 %307 to i32*
  %309 = load i32, i32* %308
  %310 = sub i32 1, %309
  %311 = mul i32 %334, %310
  %312 = add i32 %311, 1
  %313 = load i64, i64* %15, align 8
  %314 = add i64 %313, -56
  %315 = add i64 %339, 18
  %316 = inttoptr i64 %314 to i32*
  store i32 %312, i32* %316
  br label %block_402351

block_40243e:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge, %block_402439
  %317 = phi i64 [ %480, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge ], [ %182, %block_402439 ]
  %318 = phi i64 [ %479, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge ], [ %181, %block_402439 ]
  %319 = phi i64 [ %478, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge ], [ %180, %block_402439 ]
  %320 = phi i64 [ %477, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge ], [ %375, %block_402439 ]
  %321 = phi i64 [ %475, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge ], [ %183, %block_402439 ]
  %322 = phi %struct.Memory* [ %468, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge ], [ %373, %block_402439 ]
  %323 = bitcast i64* %132 to double*
  %324 = inttoptr i64 %469 to i32*
  %325 = load i32, i32* %324
  %326 = add i64 %321, 6
  %327 = inttoptr i64 %476 to i32*
  store i32 %325, i32* %327
  br label %block_402444

block_402335:                                     ; preds = %block_40230b, %block_402323
  %328 = phi i64 [ %493, %block_40230b ], [ %433, %block_402323 ]
  %329 = phi i64 [ %124, %block_40230b ], [ %431, %block_402323 ]
  %330 = phi %struct.Memory* [ %174, %block_40230b ], [ %174, %block_402323 ]
  %331 = add i64 %329, -44
  %332 = add i64 %328, 4
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333
  %335 = lshr i32 %334, 31
  %336 = trunc i32 %335 to i8
  %337 = icmp ne i8 %336, 0
  %338 = select i1 %337, i64 6, i64 24
  %339 = add i64 %338, %332
  %340 = icmp eq i8 %336, 0
  br i1 %340, label %block_402351, label %block_40233f

block_402434:                                     ; preds = %block_40242a
  br label %block_40254b

block_40254b.loopexit:                            ; preds = %block_402444
  %341 = phi i64 [ %291, %block_402444 ]
  %342 = phi i1 [ %302, %block_402444 ]
  %343 = phi i8 [ %296, %block_402444 ]
  %344 = phi i32 [ %294, %block_402444 ]
  %345 = phi i32 [ %293, %block_402444 ]
  %346 = phi i32 [ %290, %block_402444 ]
  %347 = phi %struct.Memory* [ %288, %block_402444 ]
  store i64 %341, i64* %10, align 8, !tbaa !1947
  %348 = icmp ult i32 %346, %345
  %349 = zext i1 %348 to i8
  %350 = and i32 %344, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350) #6
  %352 = and i32 %351, 1
  %353 = xor i32 %352, 1
  %354 = trunc i32 %353 to i8
  %355 = xor i32 %345, %346
  %356 = xor i32 %355, %344
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = icmp eq i32 %346, %345
  %361 = zext i1 %360 to i8
  %362 = zext i1 %342 to i8
  store i8 %349, i8* %44, align 1, !tbaa !1953
  store i8 %354, i8* %50, align 1, !tbaa !1966
  store i8 %359, i8* %51, align 1, !tbaa !1967
  store i8 %361, i8* %54, align 1, !tbaa !1968
  store i8 %343, i8* %57, align 1, !tbaa !1969
  store i8 %362, i8* %58, align 1, !tbaa !1970
  br label %block_40254b

block_40254b:                                     ; preds = %block_4023b4, %block_40254b.loopexit, %block_402434, %block_4022d5, %block_4022f2
  %363 = phi %struct.Memory* [ %408, %block_4023b4 ], [ %373, %block_402434 ], [ %174, %block_4022f2 ], [ %2, %block_4022d5 ], [ %347, %block_40254b.loopexit ]
  %364 = load i64, i64* %14, align 1, !tbaa !1947
  %365 = add i64 %364, 8
  %366 = inttoptr i64 %364 to i64*
  %367 = load i64, i64* %366
  store i64 %367, i64* %15, align 8, !tbaa !1947
  %368 = inttoptr i64 %365 to i64*
  %369 = load i64, i64* %368
  store i64 %369, i64* %3, align 8, !tbaa !1947
  %370 = add i64 %364, 16
  store i64 %370, i64* %14, align 8, !tbaa !1947
  ret %struct.Memory* %363

block_40242a:                                     ; preds = %block_4023e0
  %371 = phi i64 [ %122, %block_4023e0 ]
  %372 = phi i32 [ %108, %block_4023e0 ]
  %373 = phi %struct.Memory* [ %106, %block_4023e0 ]
  %374 = zext i32 %372 to i64
  store i64 %374, i64* %10, align 8, !tbaa !1947
  %375 = add i64 %467, -4
  %376 = inttoptr i64 %375 to i32*
  %377 = load i32, i32* %376
  %378 = add i32 %377, -4
  %379 = icmp ult i32 %377, 4
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %44, align 1, !tbaa !1953
  %381 = and i32 %378, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #6
  %383 = and i32 %382, 1
  %384 = xor i32 %383, 1
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %50, align 1, !tbaa !1966
  %386 = xor i32 %378, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %51, align 1, !tbaa !1967
  %390 = icmp eq i32 %377, 4
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %54, align 1, !tbaa !1968
  %392 = lshr i32 %378, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %57, align 1, !tbaa !1969
  %394 = lshr i32 %377, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %394
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %58, align 1, !tbaa !1970
  %399 = icmp ne i8 %393, 0
  %400 = xor i1 %399, %397
  %401 = select i1 %400, i64 10, i64 15
  %402 = add i64 %371, %401
  br i1 %400, label %block_402434, label %block_402439

block_4023b4:                                     ; preds = %block_402358
  %403 = phi i1 [ %531, %block_402358 ]
  %404 = phi i8 [ %525, %block_402358 ]
  %405 = phi i32 [ %523, %block_402358 ]
  %406 = phi i32 [ %522, %block_402358 ]
  %407 = phi i32 [ %520, %block_402358 ]
  %408 = phi %struct.Memory* [ %518, %block_402358 ]
  %409 = zext i32 %407 to i64
  store i64 %409, i64* %10, align 8, !tbaa !1947
  %410 = icmp ult i32 %407, %406
  %411 = zext i1 %410 to i8
  %412 = and i32 %405, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412) #6
  %414 = and i32 %413, 1
  %415 = xor i32 %414, 1
  %416 = trunc i32 %415 to i8
  %417 = xor i32 %406, %407
  %418 = xor i32 %417, %405
  %419 = lshr i32 %418, 4
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = icmp eq i32 %407, %406
  %423 = zext i1 %422 to i8
  %424 = zext i1 %403 to i8
  store i8 %411, i8* %44, align 1, !tbaa !1953
  store i8 %416, i8* %50, align 1, !tbaa !1966
  store i8 %421, i8* %51, align 1, !tbaa !1967
  store i8 %423, i8* %54, align 1, !tbaa !1968
  store i8 %404, i8* %57, align 1, !tbaa !1969
  store i8 %424, i8* %58, align 1, !tbaa !1970
  br label %block_40254b

block_402323:                                     ; preds = %block_40230b
  %425 = add i64 %124, -4
  %426 = inttoptr i64 %425 to i32*
  %427 = load i32, i32* %426
  %428 = sub i32 1, %427
  %429 = mul i32 %488, %428
  %430 = add i32 %429, 1
  %431 = load i64, i64* %15, align 8
  %432 = add i64 %431, -52
  %433 = add i64 %493, 18
  %434 = inttoptr i64 %432 to i32*
  store i32 %430, i32* %434
  br label %block_402335

block_4023b9:                                     ; preds = %block_402301
  %435 = add i64 %124, -4
  %436 = inttoptr i64 %435 to i32*
  %437 = load i32, i32* %436
  %438 = add i64 %124, -64
  %439 = inttoptr i64 %438 to i32*
  store i32 4, i32* %439
  %440 = zext i32 %437 to i64
  store i64 %440, i64* %10, align 8, !tbaa !1947
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %442 = sext i32 %437 to i64
  %443 = lshr i64 %442, 32
  store i64 %443, i64* %441, align 8, !tbaa !1947
  %444 = inttoptr i64 %438 to i32*
  %445 = load i32, i32* %444
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %11, align 8, !tbaa !1947
  %447 = add i64 %561, 19
  store i64 %447, i64* %3, align 8
  %448 = zext i32 %437 to i64
  %449 = sext i32 %445 to i64
  %450 = shl nuw i64 %443, 32
  %451 = or i64 %450, %448
  %452 = sdiv i64 %451, %449
  %453 = shl i64 %452, 32
  %454 = ashr exact i64 %453, 32
  %455 = icmp eq i64 %452, %454
  br i1 %455, label %461, label %456

; <label>:456                                     ; preds = %block_4023b9
  %457 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %447, %struct.Memory* %174) #11
  %458 = load i64, i64* %15, align 8
  %459 = load i32, i32* %5, align 4
  %460 = load i64, i64* %3, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:461                                     ; preds = %block_4023b9
  %462 = srem i64 %451, %449
  %463 = and i64 %462, 4294967295
  store i64 %463, i64* %12, align 8, !tbaa !1947
  %464 = trunc i64 %462 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %461, %456
  %465 = phi i64 [ %460, %456 ], [ %447, %461 ]
  %466 = phi i32 [ %459, %456 ], [ %464, %461 ]
  %467 = phi i64 [ %458, %456 ], [ %124, %461 ]
  %468 = phi %struct.Memory* [ %457, %456 ], [ %174, %461 ]
  %469 = add i64 %467, -60
  %470 = inttoptr i64 %469 to i32*
  store i32 %466, i32* %470
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471
  %473 = icmp eq i32 %472, 0
  %474 = select i1 %473, i64 114, i64 13
  %475 = add i64 %465, %474
  %476 = add i64 %467, -48
  br i1 %473, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge, label %block_4023d9

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_40243e_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %477 = add i64 %467, -4
  %478 = add i64 %467, -40
  %479 = add i64 %467, -16
  %480 = add i64 %467, -24
  br label %block_40243e

block_40230b:                                     ; preds = %block_402301, %block_4022f7
  %481 = phi i64 [ %561, %block_402301 ], [ %130, %block_4022f7 ]
  %482 = add i64 %124, -52
  %483 = inttoptr i64 %482 to i32*
  store i32 1, i32* %483
  %484 = add i64 %124, -56
  %485 = inttoptr i64 %484 to i32*
  store i32 1, i32* %485
  %486 = add i64 %481, 18
  %487 = inttoptr i64 %125 to i32*
  %488 = load i32, i32* %487
  %489 = lshr i32 %488, 31
  %490 = trunc i32 %489 to i8
  %491 = icmp ne i8 %490, 0
  %492 = select i1 %491, i64 6, i64 24
  %493 = add i64 %492, %486
  %494 = icmp eq i8 %490, 0
  br i1 %494, label %block_402335, label %block_402323

block_4023ec:                                     ; preds = %block_4023e0
  %495 = inttoptr i64 %180 to i64*
  %496 = load i64, i64* %495
  %497 = sext i32 %108 to i64
  %498 = shl nsw i64 %497, 3
  %499 = add i64 %498, %496
  %500 = inttoptr i64 %499 to double*
  %501 = load double, double* %500
  %502 = inttoptr i64 %181 to double*
  %503 = load double, double* %502
  %504 = inttoptr i64 %182 to i64*
  %505 = load i64, i64* %504
  %506 = add i64 %498, %505
  %507 = inttoptr i64 %506 to double*
  %508 = load double, double* %507
  %509 = fmul double %503, %508
  store double %509, double* %142, align 1, !tbaa !1971
  store i64 0, i64* %143, align 1, !tbaa !1971
  %510 = fadd double %501, %509
  store double %510, double* %26, align 1, !tbaa !1971
  store i64 0, i64* %132, align 1, !tbaa !1971
  store i64 %497, i64* %11, align 8, !tbaa !1947
  %511 = inttoptr i64 %499 to double*
  store double %510, double* %511
  %512 = inttoptr i64 %476 to i32*
  %513 = load i32, i32* %512
  %514 = add i32 %513, 1
  %515 = inttoptr i64 %476 to i32*
  store i32 %514, i32* %515
  %516 = add i64 %122, -12
  br label %block_4023e0

block_402358:                                     ; preds = %block_402351, %block_402364
  %517 = phi i64 [ %188, %block_402351 ], [ %104, %block_402364 ]
  %518 = phi %struct.Memory* [ %186, %block_402351 ], [ %518, %block_402364 ]
  %519 = inttoptr i64 %187 to i32*
  %520 = load i32, i32* %519
  %521 = inttoptr i64 %190 to i32*
  %522 = load i32, i32* %521
  %523 = sub i32 %520, %522
  %524 = lshr i32 %523, 31
  %525 = trunc i32 %524 to i8
  %526 = lshr i32 %520, 31
  %527 = lshr i32 %522, 31
  %528 = xor i32 %527, %526
  %529 = xor i32 %524, %526
  %530 = add nuw nsw i32 %529, %528
  %531 = icmp eq i32 %530, 2
  %532 = icmp ne i8 %525, 0
  %533 = xor i1 %532, %531
  %534 = select i1 %533, i64 12, i64 92
  %535 = add i64 %517, %534
  br i1 %533, label %block_402364, label %block_4023b4

block_402301:                                     ; preds = %block_4022f7
  %536 = add i64 %124, -44
  %537 = inttoptr i64 %536 to i32*
  %538 = load i32, i32* %537
  %539 = add i32 %538, -1
  %540 = icmp eq i32 %538, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %44, align 1, !tbaa !1953
  %542 = and i32 %539, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542) #6
  %544 = and i32 %543, 1
  %545 = xor i32 %544, 1
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %50, align 1, !tbaa !1966
  %547 = xor i32 %539, %538
  %548 = lshr i32 %547, 4
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  store i8 %550, i8* %51, align 1, !tbaa !1967
  %551 = icmp eq i32 %538, 1
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %54, align 1, !tbaa !1968
  %553 = lshr i32 %539, 31
  %554 = trunc i32 %553 to i8
  store i8 %554, i8* %57, align 1, !tbaa !1969
  %555 = lshr i32 %538, 31
  %556 = xor i32 %553, %555
  %557 = add nuw nsw i32 %556, %555
  %558 = icmp eq i32 %557, 2
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %58, align 1, !tbaa !1970
  %560 = select i1 %551, i64 184, i64 10
  %561 = add i64 %130, %560
  br i1 %551, label %block_4023b9, label %block_40230b
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401600_dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_401600:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %11 = bitcast %union.anon* %10 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %15 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %16 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %17 = getelementptr inbounds %union.anon, %union.anon* %10, i64 0, i32 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %24 = load i64, i64* %20, align 8
  %25 = load i64, i64* %19, align 1, !tbaa !1947
  %26 = add i64 %25, -8
  %27 = inttoptr i64 %26 to i64*
  store i64 %24, i64* %27
  store i64 %26, i64* %20, align 8, !tbaa !1947
  %28 = add i64 %25, -152
  store i64 %28, i64* %19, align 8, !tbaa !1947
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %35 = add i64 %25, 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %36
  %38 = add i64 %25, -16
  %39 = load i64, i64* %18, align 8
  %40 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %40
  %41 = add i64 %25, -20
  %42 = load i32, i32* %11, align 4
  %43 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %43
  %44 = add i64 %25, -24
  %45 = load i32, i32* %9, align 4
  %46 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %46
  %47 = add i64 %25, -32
  %48 = load i64, i64* %15, align 8
  %49 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %49
  %50 = add i64 %25, -40
  %51 = load i64, i64* %21, align 8
  %52 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %52
  %53 = add i64 %25, -44
  %54 = load i32, i32* %13, align 4
  %55 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %55
  %56 = inttoptr i64 %35 to i32*
  %57 = load i32, i32* %56
  %58 = icmp eq i32 %57, 0
  %59 = add i64 %25, -76
  %60 = inttoptr i64 %59 to i32*
  store i32 %37, i32* %60
  %61 = select i1 %58, i64 930, i64 49
  %62 = add i64 %61, %1
  %63 = inttoptr i64 %44 to i32*
  %64 = load i32, i32* %63
  %65 = add i32 %64, -1
  %66 = load i64, i64* %20, align 8
  %67 = add i64 %66, -64
  %68 = inttoptr i64 %67 to i32*
  store i32 %65, i32* %68
  %69 = add i64 %66, -36
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %70
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i64 19, i64 445
  %74 = add i64 %62, %73
  br i1 %58, label %block_4019a2, label %block_401631

block_401c10:                                     ; preds = %block_401c04
  store i64 1, i64* %14, align 8, !tbaa !1947
  %75 = add i64 %185, -16
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %76
  %78 = add i32 %189, 1
  %79 = sub i32 %77, %78
  %80 = add i64 %185, -52
  %81 = inttoptr i64 %80 to i32*
  store i32 %79, i32* %81
  %82 = add i64 %185, -32
  %83 = inttoptr i64 %82 to i64*
  %84 = load i64, i64* %83
  %85 = inttoptr i64 %80 to i32*
  %86 = load i32, i32* %85
  %87 = sext i32 %86 to i64
  %88 = shl nsw i64 %87, 3
  %89 = add i64 %88, %84
  %90 = inttoptr i64 %89 to double*
  %91 = load double, double* %90
  store double %91, double* %1207, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1209, align 1, !tbaa !1971
  %92 = load i64, i64* %20, align 8
  %93 = add i64 %92, -16
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %94
  %96 = add i64 %92, -52
  %97 = inttoptr i64 %96 to i32*
  %98 = load i32, i32* %97
  %99 = add i32 %98, 1
  %100 = sub i32 %95, %99
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %15, align 8, !tbaa !1947
  %102 = add i64 %92, -8
  %103 = inttoptr i64 %102 to i64*
  %104 = load i64, i64* %103
  store i64 %104, i64* %17, align 8, !tbaa !1947
  %105 = add i64 %92, -12
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106
  %108 = mul i32 %98, %107
  %109 = load i64, i64* %20, align 8
  %110 = add i64 %109, -52
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32, i32* %111
  %113 = add i32 %112, %108
  %114 = add i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 3
  %117 = load i64, i64* %17, align 8
  %118 = add i64 %116, %117
  store i64 %118, i64* %17, align 8, !tbaa !1947
  %119 = load i64, i64* %20, align 8
  %120 = add i64 %119, -32
  %121 = inttoptr i64 %120 to i64*
  %122 = load i64, i64* %121
  %123 = add i64 %119, -52
  %124 = inttoptr i64 %123 to i32*
  %125 = load i32, i32* %124
  %126 = add i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 3
  %129 = add i64 %128, %122
  %130 = load i64, i64* %20, align 8
  %131 = add i64 %130, -128
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132
  %133 = load i32, i32* %7, align 4
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %18, align 8, !tbaa !1947
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %16, align 8, !tbaa !1947
  %137 = inttoptr i64 %131 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %15, align 8, !tbaa !1947
  store i64 %136, i64* %21, align 8, !tbaa !1947
  %139 = add i64 %130, -136
  %140 = load double, double* %1207, align 1
  %141 = inttoptr i64 %139 to double*
  store double %140, double* %141
  %142 = add i64 %206, 2704
  %143 = add i64 %206, 118
  %144 = load i64, i64* %19, align 1, !tbaa !1947
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146
  store i64 %145, i64* %19, align 8, !tbaa !1947
  %147 = tail call %struct.Memory* @sub_4026a0_ddot_ur(%struct.State* nonnull %0, i64 %142, %struct.Memory* %186)
  %148 = load i64, i64* %20, align 8
  %149 = add i64 %148, -136
  %150 = load i64, i64* %3, align 8
  %151 = inttoptr i64 %149 to double*
  %152 = load double, double* %151
  %153 = load double, double* %1207, align 1
  %154 = fadd double %152, %153
  store double %154, double* %692, align 1, !tbaa !1971
  store i64 0, i64* %693, align 1, !tbaa !1971
  %155 = add i64 %148, -32
  %156 = inttoptr i64 %155 to i64*
  %157 = load i64, i64* %156
  %158 = add i64 %148, -52
  %159 = inttoptr i64 %158 to i32*
  %160 = load i32, i32* %159
  %161 = sext i32 %160 to i64
  %162 = shl nsw i64 %161, 3
  %163 = add i64 %162, %157
  %164 = inttoptr i64 %163 to double*
  store double %154, double* %164
  %165 = add i64 %148, -24
  %166 = inttoptr i64 %165 to i64*
  %167 = load i64, i64* %166
  store i64 %167, i64* %15, align 8, !tbaa !1947
  %168 = inttoptr i64 %158 to i32*
  %169 = load i32, i32* %168
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %17, align 8, !tbaa !1947
  %171 = shl nsw i64 %170, 2
  %172 = add i64 %171, %167
  %173 = inttoptr i64 %172 to i32*
  %174 = load i32, i32* %173
  %175 = add i64 %148, -60
  %176 = inttoptr i64 %175 to i32*
  store i32 %174, i32* %176
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177
  %179 = inttoptr i64 %158 to i32*
  %180 = load i32, i32* %179
  %181 = icmp eq i32 %178, %180
  %182 = select i1 %181, i64 113, i64 51
  %183 = add i64 %150, %182
  br i1 %181, label %block_401cf7, label %block_401cb9

block_401c04:                                     ; preds = %block_401bfd, %block_401cf7
  %184 = phi i64 [ %690, %block_401bfd ], [ %688, %block_401cf7 ]
  %185 = phi i64 [ %959, %block_401bfd ], [ %148, %block_401cf7 ]
  %186 = phi %struct.Memory* [ %958, %block_401bfd ], [ %682, %block_401cf7 ]
  %187 = add i64 %185, -56
  %188 = inttoptr i64 %187 to i32*
  %189 = load i32, i32* %188
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %14, align 8, !tbaa !1947
  %191 = add i64 %185, -64
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32, i32* %192
  %194 = sub i32 %189, %193
  %195 = lshr i32 %194, 31
  %196 = trunc i32 %195 to i8
  %197 = lshr i32 %189, 31
  %198 = lshr i32 %193, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %195, %197
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = icmp ne i8 %196, 0
  %204 = xor i1 %203, %202
  %205 = select i1 %204, i64 12, i64 262
  %206 = add i64 %184, %205
  br i1 %204, label %block_401c10, label %block_401d0a

block_40188c:                                     ; preds = %block_401882
  %207 = add i64 %1212, -56
  %208 = add i64 %1226, 7
  %209 = inttoptr i64 %207 to i32*
  store i32 1, i32* %209
  %210 = bitcast %union.VectorReg* %23 to double*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  br label %block_401893

block_40168d:                                     ; preds = %block_401661
  %212 = inttoptr i64 %1237 to i64*
  %213 = load i64, i64* %212
  %214 = sext i32 %1252 to i64
  %215 = shl nsw i64 %214, 3
  %216 = add i64 %215, %213
  %217 = inttoptr i64 %216 to double*
  %218 = load double, double* %217
  %219 = sext i32 %1250 to i64
  %220 = shl nsw i64 %219, 3
  %221 = add i64 %220, %213
  %222 = inttoptr i64 %221 to double*
  store double %218, double* %222
  %223 = inttoptr i64 %1247 to double*
  %224 = load double, double* %223
  store double %224, double* %1003, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1005, align 1, !tbaa !1971
  %225 = inttoptr i64 %1237 to i64*
  %226 = load i64, i64* %225
  %227 = inttoptr i64 %1184 to i32*
  %228 = load i32, i32* %227
  %229 = sext i32 %228 to i64
  %230 = shl nsw i64 %229, 3
  %231 = add i64 %230, %226
  %232 = add i64 %1255, 44
  %233 = inttoptr i64 %231 to double*
  store double %224, double* %233
  br label %block_4016b9

block_40189f:                                     ; preds = %block_401893
  store i64 1, i64* %14, align 8, !tbaa !1947
  %234 = add i64 %351, -16
  %235 = inttoptr i64 %234 to i32*
  %236 = load i32, i32* %235
  %237 = add i32 %355, 1
  %238 = sub i32 %236, %237
  %239 = add i64 %351, -52
  %240 = inttoptr i64 %239 to i32*
  store i32 %238, i32* %240
  %241 = add i64 %351, -32
  %242 = inttoptr i64 %241 to i64*
  %243 = load i64, i64* %242
  %244 = inttoptr i64 %239 to i32*
  %245 = load i32, i32* %244
  %246 = sext i32 %245 to i64
  %247 = shl nsw i64 %246, 3
  %248 = add i64 %247, %243
  %249 = inttoptr i64 %248 to double*
  %250 = load double, double* %249
  store double %250, double* %1293, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1295, align 1, !tbaa !1971
  %251 = load i64, i64* %20, align 8
  %252 = add i64 %251, -16
  %253 = inttoptr i64 %252 to i32*
  %254 = load i32, i32* %253
  %255 = add i64 %251, -52
  %256 = inttoptr i64 %255 to i32*
  %257 = load i32, i32* %256
  %258 = add i32 %257, 1
  %259 = sub i32 %254, %258
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %15, align 8, !tbaa !1947
  %261 = add i64 %251, -8
  %262 = inttoptr i64 %261 to i64*
  %263 = load i64, i64* %262
  store i64 %263, i64* %17, align 8, !tbaa !1947
  %264 = add i64 %251, -12
  %265 = inttoptr i64 %264 to i32*
  %266 = load i32, i32* %265
  %267 = mul i32 %257, %266
  %268 = load i64, i64* %20, align 8
  %269 = add i64 %268, -52
  %270 = inttoptr i64 %269 to i32*
  %271 = load i32, i32* %270
  %272 = add i32 %271, %267
  %273 = add i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = shl nsw i64 %274, 3
  %276 = load i64, i64* %17, align 8
  %277 = add i64 %275, %276
  store i64 %277, i64* %17, align 8, !tbaa !1947
  %278 = load i64, i64* %20, align 8
  %279 = add i64 %278, -32
  %280 = inttoptr i64 %279 to i64*
  %281 = load i64, i64* %280
  %282 = add i64 %278, -52
  %283 = inttoptr i64 %282 to i32*
  %284 = load i32, i32* %283
  %285 = add i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = shl nsw i64 %286, 3
  %288 = add i64 %287, %281
  %289 = load i64, i64* %20, align 8
  %290 = add i64 %289, -96
  %291 = inttoptr i64 %290 to i64*
  store i64 %288, i64* %291
  %292 = load i32, i32* %7, align 4
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %18, align 8, !tbaa !1947
  %294 = load i32, i32* %5, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %16, align 8, !tbaa !1947
  %296 = inttoptr i64 %290 to i64*
  %297 = load i64, i64* %296
  store i64 %297, i64* %15, align 8, !tbaa !1947
  store i64 %295, i64* %21, align 8, !tbaa !1947
  %298 = add i64 %289, -104
  %299 = load double, double* %1293, align 1
  %300 = inttoptr i64 %298 to double*
  store double %299, double* %300
  %301 = add i64 %372, 3249
  %302 = add i64 %372, 115
  %303 = load i64, i64* %19, align 1, !tbaa !1947
  %304 = add i64 %303, -8
  %305 = inttoptr i64 %304 to i64*
  store i64 %302, i64* %305
  store i64 %304, i64* %19, align 8, !tbaa !1947
  %306 = tail call %struct.Memory* @sub_402550_ddot_r(%struct.State* nonnull %0, i64 %301, %struct.Memory* %352)
  %307 = load i64, i64* %20, align 8
  %308 = add i64 %307, -104
  %309 = load i64, i64* %3, align 8
  %310 = inttoptr i64 %308 to double*
  %311 = load double, double* %310
  %312 = load double, double* %1293, align 1
  %313 = fadd double %311, %312
  store double %313, double* %210, align 1, !tbaa !1971
  store i64 0, i64* %211, align 1, !tbaa !1971
  %314 = add i64 %307, -32
  %315 = inttoptr i64 %314 to i64*
  %316 = load i64, i64* %315
  %317 = add i64 %307, -52
  %318 = inttoptr i64 %317 to i32*
  %319 = load i32, i32* %318
  %320 = sext i32 %319 to i64
  %321 = shl nsw i64 %320, 3
  %322 = add i64 %321, %316
  %323 = inttoptr i64 %322 to double*
  store double %313, double* %323
  %324 = add i64 %307, -24
  %325 = inttoptr i64 %324 to i64*
  %326 = load i64, i64* %325
  store i64 %326, i64* %15, align 8, !tbaa !1947
  %327 = inttoptr i64 %317 to i32*
  %328 = load i32, i32* %327
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %17, align 8, !tbaa !1947
  %330 = shl nsw i64 %329, 2
  %331 = add i64 %330, %326
  %332 = inttoptr i64 %331 to i32*
  %333 = load i32, i32* %332
  %334 = add i64 %307, -60
  %335 = inttoptr i64 %334 to i32*
  store i32 %333, i32* %335
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336
  %338 = inttoptr i64 %317 to i32*
  %339 = load i32, i32* %338
  %340 = icmp eq i32 %337, %339
  %341 = select i1 %340, i64 110, i64 48
  %342 = add i64 %309, %341
  br i1 %340, label %block_401980, label %block_401942

block_401d0f:                                     ; preds = %block_401d0a, %block_401bf3
  %343 = phi %struct.Memory* [ %958, %block_401bf3 ], [ %1289, %block_401d0a ]
  br label %block_401d14

block_4019bf:                                     ; preds = %block_4019b5
  %344 = add i64 %66, -52
  %345 = add i64 %783, 7
  %346 = inttoptr i64 %344 to i32*
  store i32 0, i32* %346
  %347 = bitcast [32 x %union.VectorReg]* %22 to double*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %349 = bitcast i64* %348 to double*
  br label %block_4019c6

block_401893:                                     ; preds = %block_401980, %block_40188c
  %350 = phi i64 [ %208, %block_40188c ], [ %794, %block_401980 ]
  %351 = phi i64 [ %1212, %block_40188c ], [ %307, %block_401980 ]
  %352 = phi %struct.Memory* [ %1211, %block_40188c ], [ %788, %block_401980 ]
  %353 = add i64 %351, -56
  %354 = inttoptr i64 %353 to i32*
  %355 = load i32, i32* %354
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %14, align 8, !tbaa !1947
  %357 = add i64 %351, -64
  %358 = inttoptr i64 %357 to i32*
  %359 = load i32, i32* %358
  %360 = sub i32 %355, %359
  %361 = lshr i32 %360, 31
  %362 = trunc i32 %361 to i8
  %363 = lshr i32 %355, 31
  %364 = lshr i32 %359, 31
  %365 = xor i32 %364, %363
  %366 = xor i32 %361, %363
  %367 = add nuw nsw i32 %366, %365
  %368 = icmp eq i32 %367, 2
  %369 = icmp ne i8 %362, 0
  %370 = xor i1 %369, %368
  %371 = select i1 %370, i64 12, i64 256
  %372 = add i64 %350, %371
  br i1 %370, label %block_40189f, label %block_401993

block_401a95:                                     ; preds = %block_401a90, %block_4019b5.block_401a95_crit_edge
  %373 = phi double* [ %786, %block_4019b5.block_401a95_crit_edge ], [ %349, %block_401a90 ]
  %374 = phi i64* [ %785, %block_4019b5.block_401a95_crit_edge ], [ %348, %block_401a90 ]
  %375 = phi double* [ %784, %block_4019b5.block_401a95_crit_edge ], [ %347, %block_401a90 ]
  %376 = phi i64 [ %783, %block_4019b5.block_401a95_crit_edge ], [ %999, %block_401a90 ]
  %377 = phi i64 [ %66, %block_4019b5.block_401a95_crit_edge ], [ %998, %block_401a90 ]
  %378 = phi %struct.Memory* [ %2, %block_4019b5.block_401a95_crit_edge ], [ %997, %block_401a90 ]
  %379 = add i64 %377, -56
  %380 = add i64 %376, 7
  %381 = inttoptr i64 %379 to i32*
  store i32 0, i32* %381
  %382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  br label %block_401a9c

block_401d19.loopexit:                            ; preds = %block_40172b
  %383 = phi %struct.Memory* [ %660, %block_40172b ]
  br label %block_401d19

block_401d19:                                     ; preds = %block_401882, %block_401993, %block_401d14, %block_401d19.loopexit
  %384 = phi %struct.Memory* [ %415, %block_401d14 ], [ %1211, %block_401882 ], [ %477, %block_401993 ], [ %383, %block_401d19.loopexit ]
  %385 = load i64, i64* %19, align 8
  %386 = add i64 %385, 144
  %387 = icmp ugt i64 %385, -145
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %29, align 1, !tbaa !1953
  %389 = trunc i64 %386 to i32
  %390 = and i32 %389, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390) #6
  %392 = and i32 %391, 1
  %393 = xor i32 %392, 1
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %30, align 1, !tbaa !1966
  %395 = xor i64 %385, 16
  %396 = xor i64 %395, %386
  %397 = lshr i64 %396, 4
  %398 = trunc i64 %397 to i8
  %399 = and i8 %398, 1
  store i8 %399, i8* %31, align 1, !tbaa !1967
  %400 = icmp eq i64 %386, 0
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %32, align 1, !tbaa !1968
  %402 = lshr i64 %386, 63
  %403 = trunc i64 %402 to i8
  store i8 %403, i8* %33, align 1, !tbaa !1969
  %404 = lshr i64 %385, 63
  %405 = xor i64 %402, %404
  %406 = add nuw nsw i64 %405, %402
  %407 = icmp eq i64 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %34, align 1, !tbaa !1970
  %409 = add i64 %385, 152
  %410 = inttoptr i64 %386 to i64*
  %411 = load i64, i64* %410
  store i64 %411, i64* %20, align 8, !tbaa !1947
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412
  store i64 %413, i64* %3, align 8, !tbaa !1947
  %414 = add i64 %385, 160
  store i64 %414, i64* %19, align 8, !tbaa !1947
  ret %struct.Memory* %384

block_401d14:                                     ; preds = %block_401b5a, %block_401d0f
  %415 = phi %struct.Memory* [ %1203, %block_401b5a ], [ %343, %block_401d0f ]
  br label %block_401d19

block_401644:                                     ; preds = %block_401631
  %416 = inttoptr i64 %67 to i32*
  %417 = load i32, i32* %416
  %418 = add i32 %417, -1
  %419 = lshr i32 %418, 31
  %420 = trunc i32 %419 to i8
  %421 = lshr i32 %417, 31
  %422 = xor i32 %419, %421
  %423 = add nuw nsw i32 %422, %421
  %424 = icmp eq i32 %423, 2
  %425 = icmp ne i8 %420, 0
  %426 = xor i1 %425, %424
  %427 = select i1 %426, i64 224, i64 10
  %428 = add i64 %74, %427
  br i1 %426, label %block_401644.block_401724_crit_edge, label %block_40164e

block_401644.block_401724_crit_edge:              ; preds = %block_401644
  %429 = bitcast [32 x %union.VectorReg]* %22 to double*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %431 = bitcast i64* %430 to double*
  br label %block_401724

block_4019fe:                                     ; preds = %block_4019d2
  %432 = inttoptr i64 %938 to i64*
  %433 = load i64, i64* %432
  %434 = sext i32 %953 to i64
  %435 = shl nsw i64 %434, 3
  %436 = add i64 %435, %433
  %437 = inttoptr i64 %436 to double*
  %438 = load double, double* %437
  %439 = sext i32 %951 to i64
  %440 = shl nsw i64 %439, 3
  %441 = add i64 %440, %433
  %442 = inttoptr i64 %441 to double*
  store double %438, double* %442
  %443 = inttoptr i64 %948 to double*
  %444 = load double, double* %443
  store double %444, double* %347, align 1, !tbaa !1971
  store double 0.000000e+00, double* %349, align 1, !tbaa !1971
  %445 = inttoptr i64 %938 to i64*
  %446 = load i64, i64* %445
  %447 = inttoptr i64 %977 to i32*
  %448 = load i32, i32* %447
  %449 = sext i32 %448 to i64
  %450 = shl nsw i64 %449, 3
  %451 = add i64 %450, %446
  %452 = add i64 %956, 44
  %453 = inttoptr i64 %451 to double*
  store double %444, double* %453
  br label %block_401a2a

block_401a9c:                                     ; preds = %block_401aa8, %block_401a95
  %454 = phi i64 [ %380, %block_401a95 ], [ %594, %block_401aa8 ]
  %455 = phi i64 [ %377, %block_401a95 ], [ %587, %block_401aa8 ]
  %456 = phi %struct.Memory* [ %378, %block_401a95 ], [ %586, %block_401aa8 ]
  %457 = add i64 %455, -56
  %458 = inttoptr i64 %457 to i32*
  %459 = load i32, i32* %458
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %14, align 8, !tbaa !1947
  %461 = add i64 %455, -16
  %462 = inttoptr i64 %461 to i32*
  %463 = load i32, i32* %462
  %464 = sub i32 %459, %463
  %465 = lshr i32 %464, 31
  %466 = trunc i32 %465 to i8
  %467 = lshr i32 %459, 31
  %468 = lshr i32 %463, 31
  %469 = xor i32 %468, %467
  %470 = xor i32 %465, %467
  %471 = add nuw nsw i32 %470, %469
  %472 = icmp eq i32 %471, 2
  %473 = icmp ne i8 %466, 0
  %474 = xor i1 %473, %472
  %475 = select i1 %474, i64 12, i64 190
  %476 = add i64 %454, %475
  br i1 %474, label %block_401aa8, label %block_401b5a

block_401993:                                     ; preds = %block_401893
  %477 = phi %struct.Memory* [ %352, %block_401893 ]
  br label %block_401d19

block_4017f5:                                     ; preds = %block_4017ee, %block_401801
  %478 = phi i64 [ %1291, %block_4017ee ], [ %770, %block_401801 ]
  %479 = phi i64 [ %66, %block_4017ee ], [ %755, %block_401801 ]
  %480 = phi %struct.Memory* [ %2, %block_4017ee ], [ %721, %block_401801 ]
  %481 = add i64 %479, -52
  %482 = inttoptr i64 %481 to i32*
  %483 = load i32, i32* %482
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %14, align 8, !tbaa !1947
  %485 = add i64 %479, -16
  %486 = inttoptr i64 %485 to i32*
  %487 = load i32, i32* %486
  %488 = sub i32 %483, %487
  %489 = lshr i32 %488, 31
  %490 = trunc i32 %489 to i8
  %491 = lshr i32 %483, 31
  %492 = lshr i32 %487, 31
  %493 = xor i32 %492, %491
  %494 = xor i32 %489, %491
  %495 = add nuw nsw i32 %494, %493
  %496 = icmp eq i32 %495, 2
  %497 = icmp ne i8 %490, 0
  %498 = xor i1 %497, %496
  %499 = select i1 %498, i64 12, i64 141
  %500 = add i64 %478, %499
  br i1 %498, label %block_401801, label %block_401882

block_401aa8:                                     ; preds = %block_401a9c
  store i64 1, i64* %14, align 8, !tbaa !1947
  store i64 -9223372036854775808, i64* %15, align 8, !tbaa !1947
  %501 = add i32 %459, 1
  %502 = sub i32 %463, %501
  %503 = add i64 %455, -52
  %504 = inttoptr i64 %503 to i32*
  store i32 %502, i32* %504
  %505 = add i64 %455, -32
  %506 = inttoptr i64 %505 to i64*
  %507 = load i64, i64* %506
  %508 = inttoptr i64 %503 to i32*
  %509 = load i32, i32* %508
  %510 = sext i32 %509 to i64
  %511 = shl nsw i64 %510, 3
  %512 = add i64 %511, %507
  %513 = inttoptr i64 %512 to double*
  %514 = load double, double* %513
  store double %514, double* %375, align 1, !tbaa !1971
  store double 0.000000e+00, double* %373, align 1, !tbaa !1971
  %515 = load i64, i64* %20, align 8
  %516 = add i64 %515, -8
  %517 = inttoptr i64 %516 to i64*
  %518 = load i64, i64* %517
  %519 = add i64 %515, -12
  %520 = inttoptr i64 %519 to i32*
  %521 = load i32, i32* %520
  %522 = add i64 %515, -52
  %523 = inttoptr i64 %522 to i32*
  %524 = load i32, i32* %523
  %525 = sext i32 %524 to i64
  %526 = mul i32 %524, %521
  %527 = add i32 %524, %526
  %528 = sext i32 %527 to i64
  %529 = shl nsw i64 %528, 3
  %530 = add i64 %529, %518
  %531 = inttoptr i64 %530 to double*
  %532 = load double, double* %531
  %533 = fdiv double %514, %532
  store double %533, double* %375, align 1, !tbaa !1971
  store i64 0, i64* %374, align 1, !tbaa !1971
  %534 = add i64 %515, -32
  %535 = inttoptr i64 %534 to i64*
  %536 = load i64, i64* %535
  %537 = shl nsw i64 %525, 3
  %538 = add i64 %537, %536
  %539 = inttoptr i64 %538 to double*
  store double %533, double* %539
  %540 = load i64, i64* %20, align 8
  %541 = add i64 %540, -32
  %542 = inttoptr i64 %541 to i64*
  %543 = load i64, i64* %542
  %544 = add i64 %540, -52
  %545 = inttoptr i64 %544 to i32*
  %546 = load i32, i32* %545
  %547 = sext i32 %546 to i64
  %548 = shl nsw i64 %547, 3
  %549 = add i64 %548, %543
  %550 = inttoptr i64 %549 to double*
  %551 = load double, double* %550
  store double %551, double* %375, align 1, !tbaa !1971
  store double 0.000000e+00, double* %373, align 1, !tbaa !1971
  %552 = bitcast double %551 to i64
  %553 = load i64, i64* %15, align 8
  %554 = xor i64 %553, %552
  store i64 %554, i64* %382, align 1, !tbaa !1947
  store i64 0, i64* %374, align 1, !tbaa !1947
  %555 = add i64 %540, -48
  %556 = bitcast i64 %554 to double
  %557 = inttoptr i64 %555 to double*
  store double %556, double* %557
  %558 = inttoptr i64 %544 to i32*
  %559 = load i32, i32* %558
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %18, align 8, !tbaa !1947
  %561 = inttoptr i64 %555 to double*
  %562 = load double, double* %561
  store double %562, double* %375, align 1, !tbaa !1971
  store double 0.000000e+00, double* %373, align 1, !tbaa !1971
  %563 = add i64 %540, -8
  %564 = inttoptr i64 %563 to i64*
  %565 = load i64, i64* %564
  %566 = add i64 %540, -12
  %567 = inttoptr i64 %566 to i32*
  %568 = load i32, i32* %567
  %569 = sext i32 %568 to i64
  %570 = sext i32 %559 to i64
  %571 = mul nsw i64 %570, %569
  %572 = shl i64 %571, 32
  %573 = ashr exact i64 %572, 29
  %574 = add i64 %573, %565
  %575 = load i64, i64* %20, align 8
  %576 = add i64 %575, -32
  %577 = inttoptr i64 %576 to i64*
  %578 = load i64, i64* %577
  store i64 %574, i64* %17, align 8, !tbaa !1947
  %579 = load i32, i32* %5, align 4
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %16, align 8, !tbaa !1947
  store i64 %578, i64* %15, align 8, !tbaa !1947
  store i64 %580, i64* %21, align 8, !tbaa !1947
  %581 = add i64 %476, 2056
  %582 = add i64 %476, 164
  %583 = load i64, i64* %19, align 1, !tbaa !1947
  %584 = add i64 %583, -8
  %585 = inttoptr i64 %584 to i64*
  store i64 %582, i64* %585
  store i64 %584, i64* %19, align 8, !tbaa !1947
  %586 = tail call %struct.Memory* @sub_4022b0_daxpy_ur(%struct.State* nonnull %0, i64 %581, %struct.Memory* %456)
  %587 = load i64, i64* %20, align 8
  %588 = add i64 %587, -56
  %589 = load i64, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590
  %592 = add i32 %591, 1
  %593 = inttoptr i64 %588 to i32*
  store i32 %592, i32* %593
  %594 = add i64 %589, -176
  br label %block_401a9c

block_4016b9:                                     ; preds = %block_401661, %block_40168d
  %595 = phi i64 [ %1255, %block_401661 ], [ %232, %block_40168d ]
  %596 = phi %struct.Memory* [ %1183, %block_401661 ], [ %1183, %block_40168d ]
  store i64 1, i64* %14, align 8, !tbaa !1947
  %597 = add i64 %1182, -16
  %598 = inttoptr i64 %597 to i32*
  %599 = load i32, i32* %598
  %600 = inttoptr i64 %1184 to i32*
  %601 = load i32, i32* %600
  %602 = add i32 %601, 1
  %603 = sub i32 %599, %602
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %15, align 8, !tbaa !1947
  %605 = inttoptr i64 %1247 to double*
  %606 = load double, double* %605
  store double %606, double* %1003, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1005, align 1, !tbaa !1971
  %607 = add i64 %1182, -8
  %608 = inttoptr i64 %607 to i64*
  %609 = load i64, i64* %608
  store i64 %609, i64* %17, align 8, !tbaa !1947
  %610 = add i64 %1182, -12
  %611 = inttoptr i64 %610 to i32*
  %612 = load i32, i32* %611
  %613 = load i64, i64* %20, align 8
  %614 = add i64 %613, -52
  %615 = inttoptr i64 %614 to i32*
  %616 = load i32, i32* %615
  %617 = mul i32 %616, %612
  %618 = add i32 %616, %617
  %619 = add i32 %618, 1
  %620 = sext i32 %619 to i64
  %621 = shl nsw i64 %620, 3
  %622 = load i64, i64* %17, align 8
  %623 = add i64 %621, %622
  store i64 %623, i64* %17, align 8, !tbaa !1947
  %624 = load i64, i64* %20, align 8
  %625 = add i64 %624, -32
  %626 = inttoptr i64 %625 to i64*
  %627 = load i64, i64* %626
  %628 = add i64 %624, -52
  %629 = inttoptr i64 %628 to i32*
  %630 = load i32, i32* %629
  %631 = add i32 %630, 1
  %632 = sext i32 %631 to i64
  %633 = shl nsw i64 %632, 3
  %634 = add i64 %633, %627
  %635 = load i64, i64* %20, align 8
  %636 = add i64 %635, -80
  %637 = inttoptr i64 %636 to i64*
  store i64 %634, i64* %637
  %638 = load i32, i32* %7, align 4
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %18, align 8, !tbaa !1947
  %640 = load i32, i32* %5, align 4
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %16, align 8, !tbaa !1947
  %642 = inttoptr i64 %636 to i64*
  %643 = load i64, i64* %642
  store i64 %643, i64* %15, align 8, !tbaa !1947
  store i64 %641, i64* %21, align 8, !tbaa !1947
  %644 = add i64 %595, 2231
  %645 = add i64 %595, 88
  %646 = load i64, i64* %19, align 1, !tbaa !1947
  %647 = add i64 %646, -8
  %648 = inttoptr i64 %647 to i64*
  store i64 %645, i64* %648
  store i64 %647, i64* %19, align 8, !tbaa !1947
  %649 = tail call %struct.Memory* @sub_401f70_daxpy_r(%struct.State* nonnull %0, i64 %644, %struct.Memory* %596)
  %650 = load i64, i64* %20, align 8
  %651 = add i64 %650, -52
  %652 = load i64, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653
  %655 = add i32 %654, 1
  %656 = inttoptr i64 %651 to i32*
  store i32 %655, i32* %656
  %657 = add i64 %652, -188
  br label %block_401655

block_40172b:                                     ; preds = %block_401724, %block_401737
  %658 = phi i64 [ %1263, %block_401724 ], [ %888, %block_401737 ]
  %659 = phi i64 [ %1260, %block_401724 ], [ %881, %block_401737 ]
  %660 = phi %struct.Memory* [ %1261, %block_401724 ], [ %880, %block_401737 ]
  %661 = add i64 %659, -56
  %662 = inttoptr i64 %661 to i32*
  %663 = load i32, i32* %662
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %14, align 8, !tbaa !1947
  %665 = add i64 %659, -16
  %666 = inttoptr i64 %665 to i32*
  %667 = load i32, i32* %666
  %668 = sub i32 %663, %667
  %669 = lshr i32 %668, 31
  %670 = trunc i32 %669 to i8
  %671 = lshr i32 %663, 31
  %672 = lshr i32 %667, 31
  %673 = xor i32 %672, %671
  %674 = xor i32 %669, %671
  %675 = add nuw nsw i32 %674, %673
  %676 = icmp eq i32 %675, 2
  %677 = icmp ne i8 %670, 0
  %678 = xor i1 %677, %676
  %679 = select i1 %678, i64 12, i64 190
  %680 = add i64 %658, %679
  br i1 %678, label %block_401737, label %block_401d19.loopexit

block_401cf7:                                     ; preds = %block_401cb9, %block_401c10
  %681 = phi i64 [ %183, %block_401c10 ], [ %1116, %block_401cb9 ]
  %682 = phi %struct.Memory* [ %147, %block_401c10 ], [ %147, %block_401cb9 ]
  %683 = add i64 %148, -56
  %684 = inttoptr i64 %683 to i32*
  %685 = load i32, i32* %684
  %686 = add i32 %685, 1
  %687 = inttoptr i64 %683 to i32*
  store i32 %686, i32* %687
  %688 = add i64 %681, -243
  br label %block_401c04

block_401631:                                     ; preds = %block_401600
  br i1 %72, label %block_401644, label %block_4017ee

block_401bfd:                                     ; preds = %block_401bf3
  %689 = add i64 %959, -56
  %690 = add i64 %973, 7
  %691 = inttoptr i64 %689 to i32*
  store i32 1, i32* %691
  %692 = bitcast %union.VectorReg* %23 to double*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  br label %block_401c04

block_401801:                                     ; preds = %block_4017f5
  store i64 1, i64* %14, align 8, !tbaa !1947
  store i64 %484, i64* %18, align 8, !tbaa !1947
  %694 = add i64 %479, -8
  %695 = inttoptr i64 %694 to i64*
  %696 = load i64, i64* %695
  %697 = add i64 %479, -12
  %698 = inttoptr i64 %697 to i32*
  %699 = load i32, i32* %698
  %700 = sext i32 %699 to i64
  %701 = sext i32 %483 to i64
  %702 = mul nsw i64 %701, %700
  %703 = shl i64 %702, 32
  %704 = ashr exact i64 %703, 29
  %705 = add i64 %704, %696
  %706 = load i64, i64* %20, align 8
  %707 = add i64 %706, -32
  %708 = inttoptr i64 %707 to i64*
  %709 = load i64, i64* %708
  %710 = add i64 %706, -88
  %711 = inttoptr i64 %710 to i64*
  store i64 %709, i64* %711
  store i64 %705, i64* %17, align 8, !tbaa !1947
  %712 = load i32, i32* %5, align 4
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %16, align 8, !tbaa !1947
  %714 = inttoptr i64 %710 to i64*
  %715 = load i64, i64* %714
  store i64 %715, i64* %15, align 8, !tbaa !1947
  store i64 %713, i64* %21, align 8, !tbaa !1947
  %716 = add i64 %500, 3407
  %717 = add i64 %500, 57
  %718 = load i64, i64* %19, align 1, !tbaa !1947
  %719 = add i64 %718, -8
  %720 = inttoptr i64 %719 to i64*
  store i64 %717, i64* %720
  store i64 %719, i64* %19, align 8, !tbaa !1947
  %721 = tail call %struct.Memory* @sub_402550_ddot_r(%struct.State* nonnull %0, i64 %716, %struct.Memory* %480)
  %722 = load i64, i64* %20, align 8
  %723 = add i64 %722, -48
  %724 = load i64, i64* %3, align 8
  %725 = load double, double* %1293, align 1
  %726 = inttoptr i64 %723 to double*
  store double %725, double* %726
  %727 = add i64 %722, -32
  %728 = inttoptr i64 %727 to i64*
  %729 = load i64, i64* %728
  %730 = add i64 %722, -52
  %731 = inttoptr i64 %730 to i32*
  %732 = load i32, i32* %731
  %733 = sext i32 %732 to i64
  %734 = shl nsw i64 %733, 3
  %735 = add i64 %734, %729
  %736 = inttoptr i64 %735 to double*
  %737 = load double, double* %736
  %738 = inttoptr i64 %723 to double*
  %739 = load double, double* %738
  %740 = fsub double %737, %739
  %741 = add i64 %722, -8
  %742 = inttoptr i64 %741 to i64*
  %743 = load i64, i64* %742
  %744 = add i64 %722, -12
  %745 = inttoptr i64 %744 to i32*
  %746 = load i32, i32* %745
  %747 = mul i32 %732, %746
  %748 = add i32 %732, %747
  %749 = sext i32 %748 to i64
  %750 = shl nsw i64 %749, 3
  %751 = add i64 %750, %743
  %752 = inttoptr i64 %751 to double*
  %753 = load double, double* %752
  %754 = fdiv double %740, %753
  store double %754, double* %1293, align 1, !tbaa !1971
  store i64 0, i64* %1294, align 1, !tbaa !1971
  %755 = load i64, i64* %20, align 8
  %756 = add i64 %755, -32
  %757 = inttoptr i64 %756 to i64*
  %758 = load i64, i64* %757
  store i64 %758, i64* %15, align 8, !tbaa !1947
  %759 = add i64 %755, -52
  %760 = inttoptr i64 %759 to i32*
  %761 = load i32, i32* %760
  %762 = sext i32 %761 to i64
  store i64 %762, i64* %17, align 8, !tbaa !1947
  %763 = shl nsw i64 %762, 3
  %764 = add i64 %763, %758
  %765 = inttoptr i64 %764 to double*
  store double %754, double* %765
  %766 = inttoptr i64 %759 to i32*
  %767 = load i32, i32* %766
  %768 = add i32 %767, 1
  %769 = inttoptr i64 %759 to i32*
  store i32 %768, i32* %769
  %770 = add i64 %724, -69
  br label %block_4017f5

block_4019b5:                                     ; preds = %block_4019a2
  %771 = inttoptr i64 %67 to i32*
  %772 = load i32, i32* %771
  %773 = add i32 %772, -1
  %774 = lshr i32 %773, 31
  %775 = trunc i32 %774 to i8
  %776 = lshr i32 %772, 31
  %777 = xor i32 %774, %776
  %778 = add nuw nsw i32 %777, %776
  %779 = icmp eq i32 %778, 2
  %780 = icmp ne i8 %775, 0
  %781 = xor i1 %780, %779
  %782 = select i1 %781, i64 224, i64 10
  %783 = add i64 %74, %782
  br i1 %781, label %block_4019b5.block_401a95_crit_edge, label %block_4019bf

block_4019b5.block_401a95_crit_edge:              ; preds = %block_4019b5
  %784 = bitcast [32 x %union.VectorReg]* %22 to double*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %786 = bitcast i64* %785 to double*
  br label %block_401a95

block_401980:                                     ; preds = %block_401942, %block_40189f
  %787 = phi i64 [ %342, %block_40189f ], [ %926, %block_401942 ]
  %788 = phi %struct.Memory* [ %306, %block_40189f ], [ %306, %block_401942 ]
  %789 = add i64 %307, -56
  %790 = inttoptr i64 %789 to i32*
  %791 = load i32, i32* %790
  %792 = add i32 %791, 1
  %793 = inttoptr i64 %789 to i32*
  store i32 %792, i32* %793
  %794 = add i64 %787, -237
  br label %block_401893

block_401737:                                     ; preds = %block_40172b
  store i64 1, i64* %14, align 8, !tbaa !1947
  store i64 -9223372036854775808, i64* %15, align 8, !tbaa !1947
  %795 = add i32 %663, 1
  %796 = sub i32 %667, %795
  %797 = add i64 %659, -52
  %798 = inttoptr i64 %797 to i32*
  store i32 %796, i32* %798
  %799 = add i64 %659, -32
  %800 = inttoptr i64 %799 to i64*
  %801 = load i64, i64* %800
  %802 = inttoptr i64 %797 to i32*
  %803 = load i32, i32* %802
  %804 = sext i32 %803 to i64
  %805 = shl nsw i64 %804, 3
  %806 = add i64 %805, %801
  %807 = inttoptr i64 %806 to double*
  %808 = load double, double* %807
  store double %808, double* %1258, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1256, align 1, !tbaa !1971
  %809 = load i64, i64* %20, align 8
  %810 = add i64 %809, -8
  %811 = inttoptr i64 %810 to i64*
  %812 = load i64, i64* %811
  %813 = add i64 %809, -12
  %814 = inttoptr i64 %813 to i32*
  %815 = load i32, i32* %814
  %816 = add i64 %809, -52
  %817 = inttoptr i64 %816 to i32*
  %818 = load i32, i32* %817
  %819 = sext i32 %818 to i64
  %820 = mul i32 %818, %815
  %821 = add i32 %818, %820
  %822 = sext i32 %821 to i64
  %823 = shl nsw i64 %822, 3
  %824 = add i64 %823, %812
  %825 = inttoptr i64 %824 to double*
  %826 = load double, double* %825
  %827 = fdiv double %808, %826
  store double %827, double* %1258, align 1, !tbaa !1971
  store i64 0, i64* %1257, align 1, !tbaa !1971
  %828 = add i64 %809, -32
  %829 = inttoptr i64 %828 to i64*
  %830 = load i64, i64* %829
  %831 = shl nsw i64 %819, 3
  %832 = add i64 %831, %830
  %833 = inttoptr i64 %832 to double*
  store double %827, double* %833
  %834 = load i64, i64* %20, align 8
  %835 = add i64 %834, -32
  %836 = inttoptr i64 %835 to i64*
  %837 = load i64, i64* %836
  %838 = add i64 %834, -52
  %839 = inttoptr i64 %838 to i32*
  %840 = load i32, i32* %839
  %841 = sext i32 %840 to i64
  %842 = shl nsw i64 %841, 3
  %843 = add i64 %842, %837
  %844 = inttoptr i64 %843 to double*
  %845 = load double, double* %844
  store double %845, double* %1258, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1256, align 1, !tbaa !1971
  %846 = bitcast double %845 to i64
  %847 = load i64, i64* %15, align 8
  %848 = xor i64 %847, %846
  store i64 %848, i64* %1265, align 1, !tbaa !1947
  store i64 0, i64* %1257, align 1, !tbaa !1947
  %849 = add i64 %834, -48
  %850 = bitcast i64 %848 to double
  %851 = inttoptr i64 %849 to double*
  store double %850, double* %851
  %852 = inttoptr i64 %838 to i32*
  %853 = load i32, i32* %852
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %18, align 8, !tbaa !1947
  %855 = inttoptr i64 %849 to double*
  %856 = load double, double* %855
  store double %856, double* %1258, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1256, align 1, !tbaa !1971
  %857 = add i64 %834, -8
  %858 = inttoptr i64 %857 to i64*
  %859 = load i64, i64* %858
  %860 = add i64 %834, -12
  %861 = inttoptr i64 %860 to i32*
  %862 = load i32, i32* %861
  %863 = sext i32 %862 to i64
  %864 = sext i32 %853 to i64
  %865 = mul nsw i64 %864, %863
  %866 = shl i64 %865, 32
  %867 = ashr exact i64 %866, 29
  %868 = add i64 %867, %859
  %869 = load i64, i64* %20, align 8
  %870 = add i64 %869, -32
  %871 = inttoptr i64 %870 to i64*
  %872 = load i64, i64* %871
  store i64 %868, i64* %17, align 8, !tbaa !1947
  %873 = load i32, i32* %5, align 4
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %16, align 8, !tbaa !1947
  store i64 %872, i64* %15, align 8, !tbaa !1947
  store i64 %874, i64* %21, align 8, !tbaa !1947
  %875 = add i64 %680, 2105
  %876 = add i64 %680, 164
  %877 = load i64, i64* %19, align 1, !tbaa !1947
  %878 = add i64 %877, -8
  %879 = inttoptr i64 %878 to i64*
  store i64 %876, i64* %879
  store i64 %878, i64* %19, align 8, !tbaa !1947
  %880 = tail call %struct.Memory* @sub_401f70_daxpy_r(%struct.State* nonnull %0, i64 %875, %struct.Memory* %660)
  %881 = load i64, i64* %20, align 8
  %882 = add i64 %881, -56
  %883 = load i64, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884
  %886 = add i32 %885, 1
  %887 = inttoptr i64 %882 to i32*
  store i32 %886, i32* %887
  %888 = add i64 %883, -176
  br label %block_40172b

block_40171f:                                     ; preds = %block_401655
  %889 = phi i64 [ %1202, %block_401655 ]
  %890 = phi %struct.Memory* [ %1183, %block_401655 ]
  %891 = phi i64 [ %1182, %block_401655 ]
  %892 = add i64 %889, 5
  br label %block_401724

block_401942:                                     ; preds = %block_40189f
  %893 = inttoptr i64 %314 to i64*
  %894 = load i64, i64* %893
  %895 = sext i32 %337 to i64
  %896 = shl nsw i64 %895, 3
  %897 = add i64 %896, %894
  %898 = inttoptr i64 %897 to double*
  %899 = load double, double* %898
  %900 = add i64 %307, -48
  %901 = inttoptr i64 %900 to double*
  store double %899, double* %901
  %902 = inttoptr i64 %314 to i64*
  %903 = load i64, i64* %902
  %904 = inttoptr i64 %317 to i32*
  %905 = load i32, i32* %904
  %906 = sext i32 %905 to i64
  %907 = shl nsw i64 %906, 3
  %908 = add i64 %907, %903
  %909 = inttoptr i64 %908 to double*
  %910 = load double, double* %909
  %911 = inttoptr i64 %334 to i32*
  %912 = load i32, i32* %911
  %913 = sext i32 %912 to i64
  %914 = shl nsw i64 %913, 3
  %915 = add i64 %914, %903
  %916 = inttoptr i64 %915 to double*
  store double %910, double* %916
  %917 = inttoptr i64 %900 to double*
  %918 = load double, double* %917
  store double %918, double* %1293, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1295, align 1, !tbaa !1971
  %919 = inttoptr i64 %314 to i64*
  %920 = load i64, i64* %919
  %921 = inttoptr i64 %317 to i32*
  %922 = load i32, i32* %921
  %923 = sext i32 %922 to i64
  store i64 %923, i64* %15, align 8, !tbaa !1947
  %924 = shl nsw i64 %923, 3
  %925 = add i64 %924, %920
  %926 = add i64 %342, 62
  %927 = inttoptr i64 %925 to double*
  store double %918, double* %927
  br label %block_401980

block_4019d2:                                     ; preds = %block_4019c6
  %928 = add i64 %975, -24
  %929 = inttoptr i64 %928 to i64*
  %930 = load i64, i64* %929
  %931 = sext i32 %979 to i64
  %932 = shl nsw i64 %931, 2
  %933 = add i64 %932, %930
  %934 = inttoptr i64 %933 to i32*
  %935 = load i32, i32* %934
  %936 = add i64 %975, -60
  %937 = inttoptr i64 %936 to i32*
  store i32 %935, i32* %937
  %938 = add i64 %975, -32
  %939 = inttoptr i64 %938 to i64*
  %940 = load i64, i64* %939
  %941 = inttoptr i64 %936 to i32*
  %942 = load i32, i32* %941
  %943 = sext i32 %942 to i64
  %944 = shl nsw i64 %943, 3
  %945 = add i64 %944, %940
  %946 = inttoptr i64 %945 to double*
  %947 = load double, double* %946
  store double %947, double* %347, align 1, !tbaa !1971
  store double 0.000000e+00, double* %349, align 1, !tbaa !1971
  %948 = add i64 %975, -48
  %949 = inttoptr i64 %948 to double*
  store double %947, double* %949
  %950 = inttoptr i64 %936 to i32*
  %951 = load i32, i32* %950
  %952 = inttoptr i64 %977 to i32*
  %953 = load i32, i32* %952
  %954 = icmp eq i32 %951, %953
  %955 = select i1 %954, i64 88, i64 44
  %956 = add i64 %995, %955
  br i1 %954, label %block_401a2a, label %block_4019fe

block_401bf3:                                     ; preds = %block_401b66
  %957 = phi i64 [ %1288, %block_401b66 ]
  %958 = phi %struct.Memory* [ %1268, %block_401b66 ]
  %959 = phi i64 [ %1267, %block_401b66 ]
  %960 = add i64 %959, -64
  %961 = inttoptr i64 %960 to i32*
  %962 = load i32, i32* %961
  %963 = add i32 %962, -1
  %964 = lshr i32 %963, 31
  %965 = trunc i32 %964 to i8
  %966 = lshr i32 %962, 31
  %967 = xor i32 %964, %966
  %968 = add nuw nsw i32 %967, %966
  %969 = icmp eq i32 %968, 2
  %970 = icmp ne i8 %965, 0
  %971 = xor i1 %970, %969
  %972 = select i1 %971, i64 284, i64 10
  %973 = add i64 %957, %972
  br i1 %971, label %block_401d0f, label %block_401bfd

block_4019c6:                                     ; preds = %block_401a2a, %block_4019bf
  %974 = phi i64 [ %345, %block_4019bf ], [ %1180, %block_401a2a ]
  %975 = phi i64 [ %66, %block_4019bf ], [ %1173, %block_401a2a ]
  %976 = phi %struct.Memory* [ %2, %block_4019bf ], [ %1172, %block_401a2a ]
  %977 = add i64 %975, -52
  %978 = inttoptr i64 %977 to i32*
  %979 = load i32, i32* %978
  %980 = add i64 %975, -64
  %981 = inttoptr i64 %980 to i32*
  %982 = load i32, i32* %981
  %983 = sub i32 %979, %982
  %984 = lshr i32 %983, 31
  %985 = trunc i32 %984 to i8
  %986 = lshr i32 %979, 31
  %987 = lshr i32 %982, 31
  %988 = xor i32 %987, %986
  %989 = xor i32 %984, %986
  %990 = add nuw nsw i32 %989, %988
  %991 = icmp eq i32 %990, 2
  %992 = icmp ne i8 %985, 0
  %993 = xor i1 %992, %991
  %994 = select i1 %993, i64 12, i64 202
  %995 = add i64 %974, %994
  br i1 %993, label %block_4019d2, label %block_401a90

block_401a90:                                     ; preds = %block_4019c6
  %996 = phi i64 [ %995, %block_4019c6 ]
  %997 = phi %struct.Memory* [ %976, %block_4019c6 ]
  %998 = phi i64 [ %975, %block_4019c6 ]
  %999 = add i64 %996, 5
  br label %block_401a95

block_40164e:                                     ; preds = %block_401644
  %1000 = add i64 %66, -52
  %1001 = add i64 %428, 7
  %1002 = inttoptr i64 %1000 to i32*
  store i32 0, i32* %1002
  %1003 = bitcast [32 x %union.VectorReg]* %22 to double*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1005 = bitcast i64* %1004 to double*
  br label %block_401655

block_401b72:                                     ; preds = %block_401b66
  store i64 1, i64* %14, align 8, !tbaa !1947
  store i64 %1272, i64* %18, align 8, !tbaa !1947
  %1006 = add i64 %1267, -8
  %1007 = inttoptr i64 %1006 to i64*
  %1008 = load i64, i64* %1007
  %1009 = add i64 %1267, -12
  %1010 = inttoptr i64 %1009 to i32*
  %1011 = load i32, i32* %1010
  %1012 = sext i32 %1011 to i64
  %1013 = sext i32 %1271 to i64
  %1014 = mul nsw i64 %1013, %1012
  %1015 = shl i64 %1014, 32
  %1016 = ashr exact i64 %1015, 29
  %1017 = add i64 %1016, %1008
  %1018 = load i64, i64* %20, align 8
  %1019 = add i64 %1018, -32
  %1020 = inttoptr i64 %1019 to i64*
  %1021 = load i64, i64* %1020
  %1022 = add i64 %1018, -120
  %1023 = inttoptr i64 %1022 to i64*
  store i64 %1021, i64* %1023
  store i64 %1017, i64* %17, align 8, !tbaa !1947
  %1024 = load i32, i32* %5, align 4
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %16, align 8, !tbaa !1947
  %1026 = inttoptr i64 %1022 to i64*
  %1027 = load i64, i64* %1026
  store i64 %1027, i64* %15, align 8, !tbaa !1947
  store i64 %1025, i64* %21, align 8, !tbaa !1947
  %1028 = add i64 %1288, 2862
  %1029 = add i64 %1288, 57
  %1030 = load i64, i64* %19, align 1, !tbaa !1947
  %1031 = add i64 %1030, -8
  %1032 = inttoptr i64 %1031 to i64*
  store i64 %1029, i64* %1032
  store i64 %1031, i64* %19, align 8, !tbaa !1947
  %1033 = tail call %struct.Memory* @sub_4026a0_ddot_ur(%struct.State* nonnull %0, i64 %1028, %struct.Memory* %1268)
  %1034 = load i64, i64* %20, align 8
  %1035 = add i64 %1034, -48
  %1036 = load i64, i64* %3, align 8
  %1037 = load double, double* %1207, align 1
  %1038 = inttoptr i64 %1035 to double*
  store double %1037, double* %1038
  %1039 = add i64 %1034, -32
  %1040 = inttoptr i64 %1039 to i64*
  %1041 = load i64, i64* %1040
  %1042 = add i64 %1034, -52
  %1043 = inttoptr i64 %1042 to i32*
  %1044 = load i32, i32* %1043
  %1045 = sext i32 %1044 to i64
  %1046 = shl nsw i64 %1045, 3
  %1047 = add i64 %1046, %1041
  %1048 = inttoptr i64 %1047 to double*
  %1049 = load double, double* %1048
  %1050 = inttoptr i64 %1035 to double*
  %1051 = load double, double* %1050
  %1052 = fsub double %1049, %1051
  %1053 = add i64 %1034, -8
  %1054 = inttoptr i64 %1053 to i64*
  %1055 = load i64, i64* %1054
  %1056 = add i64 %1034, -12
  %1057 = inttoptr i64 %1056 to i32*
  %1058 = load i32, i32* %1057
  %1059 = mul i32 %1044, %1058
  %1060 = add i32 %1044, %1059
  %1061 = sext i32 %1060 to i64
  %1062 = shl nsw i64 %1061, 3
  %1063 = add i64 %1062, %1055
  %1064 = inttoptr i64 %1063 to double*
  %1065 = load double, double* %1064
  %1066 = fdiv double %1052, %1065
  store double %1066, double* %1207, align 1, !tbaa !1971
  store i64 0, i64* %1208, align 1, !tbaa !1971
  %1067 = load i64, i64* %20, align 8
  %1068 = add i64 %1067, -32
  %1069 = inttoptr i64 %1068 to i64*
  %1070 = load i64, i64* %1069
  store i64 %1070, i64* %15, align 8, !tbaa !1947
  %1071 = add i64 %1067, -52
  %1072 = inttoptr i64 %1071 to i32*
  %1073 = load i32, i32* %1072
  %1074 = sext i32 %1073 to i64
  store i64 %1074, i64* %17, align 8, !tbaa !1947
  %1075 = shl nsw i64 %1074, 3
  %1076 = add i64 %1075, %1070
  %1077 = inttoptr i64 %1076 to double*
  store double %1066, double* %1077
  %1078 = inttoptr i64 %1071 to i32*
  %1079 = load i32, i32* %1078
  %1080 = add i32 %1079, 1
  %1081 = inttoptr i64 %1071 to i32*
  store i32 %1080, i32* %1081
  %1082 = add i64 %1036, -69
  br label %block_401b66

block_401cb9:                                     ; preds = %block_401c10
  %1083 = inttoptr i64 %155 to i64*
  %1084 = load i64, i64* %1083
  %1085 = sext i32 %178 to i64
  %1086 = shl nsw i64 %1085, 3
  %1087 = add i64 %1086, %1084
  %1088 = inttoptr i64 %1087 to double*
  %1089 = load double, double* %1088
  %1090 = add i64 %148, -48
  %1091 = inttoptr i64 %1090 to double*
  store double %1089, double* %1091
  %1092 = inttoptr i64 %155 to i64*
  %1093 = load i64, i64* %1092
  %1094 = inttoptr i64 %158 to i32*
  %1095 = load i32, i32* %1094
  %1096 = sext i32 %1095 to i64
  %1097 = shl nsw i64 %1096, 3
  %1098 = add i64 %1097, %1093
  %1099 = inttoptr i64 %1098 to double*
  %1100 = load double, double* %1099
  %1101 = inttoptr i64 %175 to i32*
  %1102 = load i32, i32* %1101
  %1103 = sext i32 %1102 to i64
  %1104 = shl nsw i64 %1103, 3
  %1105 = add i64 %1104, %1093
  %1106 = inttoptr i64 %1105 to double*
  store double %1100, double* %1106
  %1107 = inttoptr i64 %1090 to double*
  %1108 = load double, double* %1107
  store double %1108, double* %1207, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1209, align 1, !tbaa !1971
  %1109 = inttoptr i64 %155 to i64*
  %1110 = load i64, i64* %1109
  %1111 = inttoptr i64 %158 to i32*
  %1112 = load i32, i32* %1111
  %1113 = sext i32 %1112 to i64
  store i64 %1113, i64* %15, align 8, !tbaa !1947
  %1114 = shl nsw i64 %1113, 3
  %1115 = add i64 %1114, %1110
  %1116 = add i64 %183, 62
  %1117 = inttoptr i64 %1115 to double*
  store double %1108, double* %1117
  br label %block_401cf7

block_401a2a:                                     ; preds = %block_4019d2, %block_4019fe
  %1118 = phi i64 [ %956, %block_4019d2 ], [ %452, %block_4019fe ]
  %1119 = phi %struct.Memory* [ %976, %block_4019d2 ], [ %976, %block_4019fe ]
  store i64 1, i64* %14, align 8, !tbaa !1947
  %1120 = add i64 %975, -16
  %1121 = inttoptr i64 %1120 to i32*
  %1122 = load i32, i32* %1121
  %1123 = inttoptr i64 %977 to i32*
  %1124 = load i32, i32* %1123
  %1125 = add i32 %1124, 1
  %1126 = sub i32 %1122, %1125
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %15, align 8, !tbaa !1947
  %1128 = inttoptr i64 %948 to double*
  %1129 = load double, double* %1128
  store double %1129, double* %347, align 1, !tbaa !1971
  store double 0.000000e+00, double* %349, align 1, !tbaa !1971
  %1130 = add i64 %975, -8
  %1131 = inttoptr i64 %1130 to i64*
  %1132 = load i64, i64* %1131
  store i64 %1132, i64* %17, align 8, !tbaa !1947
  %1133 = add i64 %975, -12
  %1134 = inttoptr i64 %1133 to i32*
  %1135 = load i32, i32* %1134
  %1136 = load i64, i64* %20, align 8
  %1137 = add i64 %1136, -52
  %1138 = inttoptr i64 %1137 to i32*
  %1139 = load i32, i32* %1138
  %1140 = mul i32 %1139, %1135
  %1141 = add i32 %1139, %1140
  %1142 = add i32 %1141, 1
  %1143 = sext i32 %1142 to i64
  %1144 = shl nsw i64 %1143, 3
  %1145 = load i64, i64* %17, align 8
  %1146 = add i64 %1144, %1145
  store i64 %1146, i64* %17, align 8, !tbaa !1947
  %1147 = load i64, i64* %20, align 8
  %1148 = add i64 %1147, -32
  %1149 = inttoptr i64 %1148 to i64*
  %1150 = load i64, i64* %1149
  %1151 = add i64 %1147, -52
  %1152 = inttoptr i64 %1151 to i32*
  %1153 = load i32, i32* %1152
  %1154 = add i32 %1153, 1
  %1155 = sext i32 %1154 to i64
  %1156 = shl nsw i64 %1155, 3
  %1157 = add i64 %1156, %1150
  %1158 = load i64, i64* %20, align 8
  %1159 = add i64 %1158, -112
  %1160 = inttoptr i64 %1159 to i64*
  store i64 %1157, i64* %1160
  %1161 = load i32, i32* %7, align 4
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %18, align 8, !tbaa !1947
  %1163 = load i32, i32* %5, align 4
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %16, align 8, !tbaa !1947
  %1165 = inttoptr i64 %1159 to i64*
  %1166 = load i64, i64* %1165
  store i64 %1166, i64* %15, align 8, !tbaa !1947
  store i64 %1164, i64* %21, align 8, !tbaa !1947
  %1167 = add i64 %1118, 2182
  %1168 = add i64 %1118, 88
  %1169 = load i64, i64* %19, align 1, !tbaa !1947
  %1170 = add i64 %1169, -8
  %1171 = inttoptr i64 %1170 to i64*
  store i64 %1168, i64* %1171
  store i64 %1170, i64* %19, align 8, !tbaa !1947
  %1172 = tail call %struct.Memory* @sub_4022b0_daxpy_ur(%struct.State* nonnull %0, i64 %1167, %struct.Memory* %1119)
  %1173 = load i64, i64* %20, align 8
  %1174 = add i64 %1173, -52
  %1175 = load i64, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176
  %1178 = add i32 %1177, 1
  %1179 = inttoptr i64 %1174 to i32*
  store i32 %1178, i32* %1179
  %1180 = add i64 %1175, -188
  br label %block_4019c6

block_401655:                                     ; preds = %block_40164e, %block_4016b9
  %1181 = phi i64 [ %1001, %block_40164e ], [ %657, %block_4016b9 ]
  %1182 = phi i64 [ %66, %block_40164e ], [ %650, %block_4016b9 ]
  %1183 = phi %struct.Memory* [ %2, %block_40164e ], [ %649, %block_4016b9 ]
  %1184 = add i64 %1182, -52
  %1185 = inttoptr i64 %1184 to i32*
  %1186 = load i32, i32* %1185
  %1187 = add i64 %1182, -64
  %1188 = inttoptr i64 %1187 to i32*
  %1189 = load i32, i32* %1188
  %1190 = sub i32 %1186, %1189
  %1191 = lshr i32 %1190, 31
  %1192 = trunc i32 %1191 to i8
  %1193 = lshr i32 %1186, 31
  %1194 = lshr i32 %1189, 31
  %1195 = xor i32 %1194, %1193
  %1196 = xor i32 %1191, %1193
  %1197 = add nuw nsw i32 %1196, %1195
  %1198 = icmp eq i32 %1197, 2
  %1199 = icmp ne i8 %1192, 0
  %1200 = xor i1 %1199, %1198
  %1201 = select i1 %1200, i64 12, i64 202
  %1202 = add i64 %1181, %1201
  br i1 %1200, label %block_401661, label %block_40171f

block_401b5a:                                     ; preds = %block_401a9c
  %1203 = phi %struct.Memory* [ %456, %block_401a9c ]
  br label %block_401d14

block_401b5f:                                     ; preds = %block_4019a2
  %1204 = add i64 %66, -52
  %1205 = add i64 %74, 7
  %1206 = inttoptr i64 %1204 to i32*
  store i32 0, i32* %1206
  %1207 = bitcast [32 x %union.VectorReg]* %22 to double*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1209 = bitcast i64* %1208 to double*
  br label %block_401b66

block_401882:                                     ; preds = %block_4017f5
  %1210 = phi i64 [ %500, %block_4017f5 ]
  %1211 = phi %struct.Memory* [ %480, %block_4017f5 ]
  %1212 = phi i64 [ %479, %block_4017f5 ]
  %1213 = add i64 %1212, -64
  %1214 = inttoptr i64 %1213 to i32*
  %1215 = load i32, i32* %1214
  %1216 = add i32 %1215, -1
  %1217 = lshr i32 %1216, 31
  %1218 = trunc i32 %1217 to i8
  %1219 = lshr i32 %1215, 31
  %1220 = xor i32 %1217, %1219
  %1221 = add nuw nsw i32 %1220, %1219
  %1222 = icmp eq i32 %1221, 2
  %1223 = icmp ne i8 %1218, 0
  %1224 = xor i1 %1223, %1222
  %1225 = select i1 %1224, i64 278, i64 10
  %1226 = add i64 %1210, %1225
  br i1 %1224, label %block_401d19, label %block_40188c

block_401661:                                     ; preds = %block_401655
  %1227 = add i64 %1182, -24
  %1228 = inttoptr i64 %1227 to i64*
  %1229 = load i64, i64* %1228
  %1230 = sext i32 %1186 to i64
  %1231 = shl nsw i64 %1230, 2
  %1232 = add i64 %1231, %1229
  %1233 = inttoptr i64 %1232 to i32*
  %1234 = load i32, i32* %1233
  %1235 = add i64 %1182, -60
  %1236 = inttoptr i64 %1235 to i32*
  store i32 %1234, i32* %1236
  %1237 = add i64 %1182, -32
  %1238 = inttoptr i64 %1237 to i64*
  %1239 = load i64, i64* %1238
  %1240 = inttoptr i64 %1235 to i32*
  %1241 = load i32, i32* %1240
  %1242 = sext i32 %1241 to i64
  %1243 = shl nsw i64 %1242, 3
  %1244 = add i64 %1243, %1239
  %1245 = inttoptr i64 %1244 to double*
  %1246 = load double, double* %1245
  store double %1246, double* %1003, align 1, !tbaa !1971
  store double 0.000000e+00, double* %1005, align 1, !tbaa !1971
  %1247 = add i64 %1182, -48
  %1248 = inttoptr i64 %1247 to double*
  store double %1246, double* %1248
  %1249 = inttoptr i64 %1235 to i32*
  %1250 = load i32, i32* %1249
  %1251 = inttoptr i64 %1184 to i32*
  %1252 = load i32, i32* %1251
  %1253 = icmp eq i32 %1250, %1252
  %1254 = select i1 %1253, i64 88, i64 44
  %1255 = add i64 %1202, %1254
  br i1 %1253, label %block_4016b9, label %block_40168d

block_401724:                                     ; preds = %block_40171f, %block_401644.block_401724_crit_edge
  %1256 = phi double* [ %431, %block_401644.block_401724_crit_edge ], [ %1005, %block_40171f ]
  %1257 = phi i64* [ %430, %block_401644.block_401724_crit_edge ], [ %1004, %block_40171f ]
  %1258 = phi double* [ %429, %block_401644.block_401724_crit_edge ], [ %1003, %block_40171f ]
  %1259 = phi i64 [ %428, %block_401644.block_401724_crit_edge ], [ %892, %block_40171f ]
  %1260 = phi i64 [ %66, %block_401644.block_401724_crit_edge ], [ %891, %block_40171f ]
  %1261 = phi %struct.Memory* [ %2, %block_401644.block_401724_crit_edge ], [ %890, %block_40171f ]
  %1262 = add i64 %1260, -56
  %1263 = add i64 %1259, 7
  %1264 = inttoptr i64 %1262 to i32*
  store i32 0, i32* %1264
  %1265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  br label %block_40172b

block_401b66:                                     ; preds = %block_401b5f, %block_401b72
  %1266 = phi i64 [ %1205, %block_401b5f ], [ %1082, %block_401b72 ]
  %1267 = phi i64 [ %66, %block_401b5f ], [ %1067, %block_401b72 ]
  %1268 = phi %struct.Memory* [ %2, %block_401b5f ], [ %1033, %block_401b72 ]
  %1269 = add i64 %1267, -52
  %1270 = inttoptr i64 %1269 to i32*
  %1271 = load i32, i32* %1270
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %14, align 8, !tbaa !1947
  %1273 = add i64 %1267, -16
  %1274 = inttoptr i64 %1273 to i32*
  %1275 = load i32, i32* %1274
  %1276 = sub i32 %1271, %1275
  %1277 = lshr i32 %1276, 31
  %1278 = trunc i32 %1277 to i8
  %1279 = lshr i32 %1271, 31
  %1280 = lshr i32 %1275, 31
  %1281 = xor i32 %1280, %1279
  %1282 = xor i32 %1277, %1279
  %1283 = add nuw nsw i32 %1282, %1281
  %1284 = icmp eq i32 %1283, 2
  %1285 = icmp ne i8 %1278, 0
  %1286 = xor i1 %1285, %1284
  %1287 = select i1 %1286, i64 12, i64 141
  %1288 = add i64 %1266, %1287
  br i1 %1286, label %block_401b72, label %block_401bf3

block_401d0a:                                     ; preds = %block_401c04
  %1289 = phi %struct.Memory* [ %186, %block_401c04 ]
  br label %block_401d0f

block_4019a2:                                     ; preds = %block_401600
  br i1 %72, label %block_4019b5, label %block_401b5f

block_4017ee:                                     ; preds = %block_401631
  %1290 = add i64 %66, -52
  %1291 = add i64 %74, 7
  %1292 = inttoptr i64 %1290 to i32*
  store i32 0, i32* %1292
  %1293 = bitcast [32 x %union.VectorReg]* %22 to double*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1295 = bitcast i64* %1294 to double*
  br label %block_4017f5
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e20_second(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #4 {
block_400e20:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 1, !tbaa !1947
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %9, i64* %12
  %13 = add i64 %1, 9
  %14 = add i64 %10, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %13, i64* %15
  %16 = tail call i64 @clock(), !noalias !2076
  store i64 %16, i64* %4, align 8, !alias.scope !2076, !noalias !2079
  %17 = bitcast [32 x %union.VectorReg]* %7 to i8*
  %18 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 56) to double*)
  %19 = bitcast [32 x %union.VectorReg]* %7 to double*
  store double %18, double* %19, align 1, !tbaa !1971
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %21 = bitcast i64* %20 to double*
  store double 0.000000e+00, double* %21, align 1, !tbaa !1971
  %22 = sitofp i64 %16 to double
  %23 = bitcast %union.VectorReg* %8 to double*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %25 = bitcast i64* %24 to <2 x float>*
  %26 = load <2 x float>, <2 x float>* %25, align 1
  %27 = fdiv double %22, %18
  store double %27, double* %23, align 1, !tbaa !1971
  %28 = bitcast double %27 to <2 x float>
  %29 = extractelement <2 x float> %28, i32 0
  %30 = bitcast [32 x %union.VectorReg]* %7 to float*
  store float %29, float* %30, align 1, !tbaa !2063
  %31 = extractelement <2 x float> %28, i32 1
  %32 = getelementptr inbounds i8, i8* %17, i64 4
  %33 = bitcast i8* %32 to float*
  store float %31, float* %33, align 1, !tbaa !2063
  %34 = extractelement <2 x float> %26, i32 0
  %35 = bitcast i64* %20 to float*
  store float %34, float* %35, align 1, !tbaa !2063
  %36 = extractelement <2 x float> %26, i32 1
  %37 = getelementptr inbounds i8, i8* %17, i64 12
  %38 = bitcast i8* %37 to float*
  store float %36, float* %38, align 1, !tbaa !2063
  %39 = inttoptr i64 %11 to i64*
  %40 = load i64, i64* %39
  store i64 %40, i64* %6, align 8, !tbaa !1947
  %41 = inttoptr i64 %10 to i64*
  %42 = load i64, i64* %41
  store i64 %42, i64* %3, align 8, !tbaa !1947
  %43 = add i64 %10, 8
  store i64 %43, i64* %5, align 8, !tbaa !1947
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_402920___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {
block_402920:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %11 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %17 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %12, align 1, !tbaa !1947
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21
  %22 = load i64, i64* %16, align 8
  %23 = add i64 %19, -16
  %24 = inttoptr i64 %23 to i64*
  store i64 %22, i64* %24
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %17, align 8, !tbaa !1947
  %27 = load i64, i64* %15, align 8
  %28 = add i64 %19, -24
  %29 = inttoptr i64 %28 to i64*
  store i64 %27, i64* %29
  %30 = load i64, i64* %14, align 8
  %31 = add i64 %19, -32
  %32 = inttoptr i64 %31 to i64*
  store i64 %30, i64* %32
  store i64 ptrtoint (%seg_603e00__init_array_type* @seg_603e00__init_array to i64), i64* %14, align 8, !tbaa !1947
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %19, -40
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %19, -48
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %16, align 8, !tbaa !1947
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %15, align 8, !tbaa !1947
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 ashr (i64 sub (i64 add (i64 ptrtoint (%seg_603e00__init_array_type* @seg_603e00__init_array to i64), i64 8), i64 ptrtoint (%seg_603e00__init_array_type* @seg_603e00__init_array to i64)), i64 3), i64* %13, align 8, !tbaa !1947
  %47 = add i64 %1, -9088
  %48 = add i64 %1, 49
  %49 = add i64 %19, -64
  %50 = inttoptr i64 %49 to i64*
  store i64 %48, i64* %50
  store i64 %49, i64* %12, align 8, !tbaa !1947
  %51 = tail call %struct.Memory* @sub_4005a0__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp eq i64 %52, 0
  %55 = select i1 %54, i64 37, i64 5
  %56 = add i64 %53, %55
  br i1 %54, label %block_402976, label %block_402956

block_402956:                                     ; preds = %block_402920
  store i64 0, i64* %8, align 8, !tbaa !1947
  store i8 0, i8* %41, align 1, !tbaa !1953
  store i8 1, i8* %42, align 1, !tbaa !1966
  store i8 1, i8* %44, align 1, !tbaa !1968
  store i8 0, i8* %45, align 1, !tbaa !1969
  store i8 0, i8* %46, align 1, !tbaa !1970
  store i8 0, i8* %43, align 1, !tbaa !1967
  %57 = add i64 %56, 10
  br label %block_402960

block_402960:                                     ; preds = %block_402960, %block_402956
  %58 = phi i64 [ 0, %block_402956 ], [ %77, %block_402960 ]
  %59 = phi i64 [ %57, %block_402956 ], [ %105, %block_402960 ]
  %60 = phi %struct.Memory* [ %51, %block_402956 ], [ %74, %block_402960 ]
  %61 = load i64, i64* %15, align 8
  store i64 %61, i64* %9, align 8, !tbaa !1947
  %62 = load i64, i64* %16, align 8
  store i64 %62, i64* %10, align 8, !tbaa !1947
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %11, align 8, !tbaa !1947
  %65 = load i64, i64* %14, align 8
  %66 = shl i64 %58, 3
  %67 = add i64 %66, %65
  %68 = add i64 %59, 13
  %69 = load i64, i64* %12, align 1, !tbaa !1947
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71
  store i64 %70, i64* %12, align 8, !tbaa !1947
  %72 = inttoptr i64 %67 to i64*
  %73 = load i64, i64* %72
  store i64 %73, i64* %3, align 8, !tbaa !1947
  %74 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %73, %struct.Memory* %60)
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %75, 1
  store i64 %77, i64* %8, align 8, !tbaa !1947
  %78 = lshr i64 %77, 63
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %77, %79
  %81 = icmp ult i64 %77, %79
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %41, align 1, !tbaa !1953
  %83 = trunc i64 %80 to i32
  %84 = and i32 %83, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #6
  %86 = and i32 %85, 1
  %87 = xor i32 %86, 1
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %42, align 1, !tbaa !1966
  %89 = xor i64 %79, %77
  %90 = xor i64 %89, %80
  %91 = lshr i64 %90, 4
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %43, align 1, !tbaa !1967
  %94 = icmp eq i64 %77, %79
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %44, align 1, !tbaa !1968
  %96 = lshr i64 %80, 63
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %45, align 1, !tbaa !1969
  %98 = lshr i64 %79, 63
  %99 = xor i64 %98, %78
  %100 = xor i64 %96, %78
  %101 = add nuw nsw i64 %100, %99
  %102 = icmp eq i64 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %46, align 1, !tbaa !1970
  %104 = select i1 %94, i64 9, i64 -13
  %105 = add i64 %76, %104
  br i1 %94, label %block_402976.loopexit, label %block_402960

block_402976.loopexit:                            ; preds = %block_402960
  %106 = phi %struct.Memory* [ %74, %block_402960 ]
  br label %block_402976

block_402976:                                     ; preds = %block_402976.loopexit, %block_402920
  %107 = phi %struct.Memory* [ %51, %block_402920 ], [ %106, %block_402976.loopexit ]
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %108, 8
  %110 = icmp ugt i64 %108, -9
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %41, align 1, !tbaa !1953
  %112 = trunc i64 %109 to i32
  %113 = and i32 %112, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #6
  %115 = and i32 %114, 1
  %116 = xor i32 %115, 1
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %42, align 1, !tbaa !1966
  %118 = xor i64 %109, %108
  %119 = lshr i64 %118, 4
  %120 = trunc i64 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %43, align 1, !tbaa !1967
  %122 = icmp eq i64 %109, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %44, align 1, !tbaa !1968
  %124 = lshr i64 %109, 63
  %125 = trunc i64 %124 to i8
  store i8 %125, i8* %45, align 1, !tbaa !1969
  %126 = lshr i64 %108, 63
  %127 = xor i64 %124, %126
  %128 = add nuw nsw i64 %127, %124
  %129 = icmp eq i64 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %46, align 1, !tbaa !1970
  %131 = add i64 %108, 16
  %132 = inttoptr i64 %109 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %8, align 8, !tbaa !1947
  %134 = add i64 %108, 24
  %135 = inttoptr i64 %131 to i64*
  %136 = load i64, i64* %135
  store i64 %136, i64* %13, align 8, !tbaa !1947
  %137 = add i64 %108, 32
  %138 = inttoptr i64 %134 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %14, align 8, !tbaa !1947
  %140 = add i64 %108, 40
  %141 = inttoptr i64 %137 to i64*
  %142 = load i64, i64* %141
  store i64 %142, i64* %15, align 8, !tbaa !1947
  %143 = add i64 %108, 48
  %144 = inttoptr i64 %140 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %16, align 8, !tbaa !1947
  %146 = add i64 %108, 56
  %147 = inttoptr i64 %143 to i64*
  %148 = load i64, i64* %147
  store i64 %148, i64* %17, align 8, !tbaa !1947
  %149 = inttoptr i64 %146 to i64*
  %150 = load i64, i64* %149
  store i64 %150, i64* %3, align 8, !tbaa !1947
  %151 = add i64 %108, 64
  store i64 %151, i64* %12, align 8, !tbaa !1947
  ret %struct.Memory* %107
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400e40_matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_400e40:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %10 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %11 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* %13, align 1, !tbaa !1947
  %21 = add i64 %20, -8
  %22 = inttoptr i64 %21 to i64*
  store i64 %19, i64* %22
  store i64 %21, i64* %13, align 8, !tbaa !1947
  store i64 %21, i64* %14, align 8, !tbaa !1947
  %23 = bitcast [32 x %union.VectorReg]* %16 to i8*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %25 = bitcast [32 x %union.VectorReg]* %16 to i32*
  store i32 0, i32* %25, align 1, !tbaa !1951
  %26 = getelementptr inbounds i8, i8* %23, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 0, i32* %27, align 1, !tbaa !1951
  %28 = bitcast i64* %24 to i32*
  store i32 0, i32* %28, align 1, !tbaa !1951
  %29 = getelementptr inbounds i8, i8* %23, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 0, i32* %30, align 1, !tbaa !1951
  %31 = add i64 %20, -16
  %32 = load i64, i64* %12, align 8
  %33 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %33
  %34 = add i64 %20, -20
  %35 = load i32, i32* %7, align 4
  %36 = inttoptr i64 %34 to i32*
  store i32 %35, i32* %36
  %37 = add i64 %20, -24
  %38 = load i32, i32* %5, align 4
  %39 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %39
  %40 = add i64 %20, -32
  %41 = load i64, i64* %9, align 8
  %42 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %42
  %43 = add i64 %20, -40
  %44 = load i64, i64* %15, align 8
  %45 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %45
  %46 = add i64 %20, -44
  %47 = inttoptr i64 %46 to i32*
  store i32 1325, i32* %47
  %48 = inttoptr i64 %43 to i64*
  %49 = load i64, i64* %48
  store i64 %49, i64* %9, align 8, !tbaa !1947
  %50 = bitcast [32 x %union.VectorReg]* %16 to double*
  %51 = load double, double* %50, align 1
  %52 = inttoptr i64 %49 to double*
  store double %51, double* %52
  %53 = add i64 %20, -52
  %54 = add i64 %1, 47
  %55 = inttoptr i64 %53 to i32*
  store i32 0, i32* %55
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %62 = bitcast i64* %24 to double*
  %63 = bitcast %union.VectorReg* %17 to double*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %65 = bitcast i64* %64 to double*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %68 = bitcast %union.VectorReg* %18 to double*
  br label %block_400e6f

block_400ff3:                                     ; preds = %block_400fa9
  %69 = phi i64 [ %205, %block_400fa9 ]
  %70 = phi %struct.Memory* [ %187, %block_400fa9 ]
  %71 = phi i64 [ %186, %block_400fa9 ]
  %72 = add i64 %71, -44
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73
  %75 = add i32 %74, 1
  %76 = inttoptr i64 %72 to i32*
  store i32 %75, i32* %76
  %77 = add i64 %69, -93
  br label %block_400f96

block_400f71:                                     ; preds = %block_400f65
  store i32 0, i32* %25, align 1, !tbaa !1951
  store i32 0, i32* %27, align 1, !tbaa !1951
  store i32 0, i32* %28, align 1, !tbaa !1951
  store i32 0, i32* %30, align 1, !tbaa !1951
  %78 = inttoptr i64 %121 to i64*
  %79 = load i64, i64* %78
  %80 = sext i32 %384 to i64
  store i64 %80, i64* %9, align 8, !tbaa !1947
  %81 = shl nsw i64 %80, 3
  %82 = add i64 %81, %79
  %83 = load double, double* %50, align 1
  %84 = inttoptr i64 %82 to double*
  store double %83, double* %84
  %85 = inttoptr i64 %117 to i32*
  %86 = load i32, i32* %85
  %87 = add i32 %86, 1
  %88 = inttoptr i64 %117 to i32*
  store i32 %87, i32* %88
  %89 = add i64 %399, -12
  br label %block_400f65

block_400e6f:                                     ; preds = %block_400f4b, %block_400e40
  %90 = phi i64 [ %54, %block_400e40 ], [ %130, %block_400f4b ]
  %91 = phi i64 [ %21, %block_400e40 ], [ %124, %block_400f4b ]
  %92 = phi %struct.Memory* [ %2, %block_400e40 ], [ %123, %block_400f4b ]
  %93 = add i64 %91, -44
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %94
  %96 = add i64 %91, -16
  %97 = inttoptr i64 %96 to i32*
  %98 = load i32, i32* %97
  %99 = sub i32 %95, %98
  %100 = lshr i32 %99, 31
  %101 = trunc i32 %100 to i8
  %102 = lshr i32 %95, 31
  %103 = lshr i32 %98, 31
  %104 = xor i32 %103, %102
  %105 = xor i32 %100, %102
  %106 = add nuw nsw i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = icmp ne i8 %101, 0
  %109 = xor i1 %108, %107
  %110 = select i1 %109, i64 12, i64 239
  %111 = add i64 %90, %110
  %112 = add i64 %91, -40
  %113 = add i64 %111, 7
  %114 = inttoptr i64 %112 to i32*
  store i32 0, i32* %114
  br i1 %109, label %block_400e82.preheader, label %block_400f65.preheader

block_400e82.preheader:                           ; preds = %block_400e6f
  br label %block_400e82

block_400f65.preheader:                           ; preds = %block_400e6f
  %115 = phi %struct.Memory* [ %92, %block_400e6f ]
  %116 = phi i64 [ %113, %block_400e6f ]
  %117 = phi i64 [ %112, %block_400e6f ]
  %118 = phi i64 [ %96, %block_400e6f ]
  %119 = phi i64 [ %93, %block_400e6f ]
  %120 = phi i64 [ %91, %block_400e6f ]
  %121 = add i64 %120, -24
  br label %block_400f65

block_400f4b:                                     ; preds = %block_400e82
  %122 = phi i64 [ %505, %block_400e82 ]
  %123 = phi %struct.Memory* [ %486, %block_400e82 ]
  %124 = phi i64 [ %485, %block_400e82 ]
  %125 = add i64 %124, -44
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %126
  %128 = add i32 %127, 1
  %129 = inttoptr i64 %125 to i32*
  store i32 %128, i32* %129
  %130 = add i64 %122, -220
  br label %block_400e6f

block_400fb5:                                     ; preds = %block_400fa9
  %131 = add i64 %186, -24
  %132 = inttoptr i64 %131 to i64*
  %133 = load i64, i64* %132
  %134 = sext i32 %190 to i64
  %135 = shl nsw i64 %134, 3
  %136 = add i64 %135, %133
  %137 = inttoptr i64 %136 to double*
  %138 = load double, double* %137
  %139 = add i64 %186, -8
  %140 = inttoptr i64 %139 to i64*
  %141 = load i64, i64* %140
  %142 = add i64 %186, -12
  %143 = inttoptr i64 %142 to i32*
  %144 = load i32, i32* %143
  %145 = add i64 %186, -44
  %146 = inttoptr i64 %145 to i32*
  %147 = load i32, i32* %146
  %148 = mul i32 %147, %144
  %149 = add i32 %190, %148
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %10, align 8, !tbaa !1947
  %151 = sext i32 %149 to i64
  %152 = shl nsw i64 %151, 3
  %153 = add i64 %152, %141
  %154 = inttoptr i64 %153 to double*
  %155 = load double, double* %154
  %156 = fadd double %138, %155
  store double %156, double* %50, align 1, !tbaa !1971
  store i64 0, i64* %24, align 1, !tbaa !1971
  %157 = inttoptr i64 %211 to i64*
  %158 = load i64, i64* %157
  %159 = inttoptr i64 %212 to i32*
  %160 = load i32, i32* %159
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %9, align 8, !tbaa !1947
  %162 = shl nsw i64 %161, 3
  %163 = add i64 %162, %158
  %164 = inttoptr i64 %163 to double*
  store double %156, double* %164
  %165 = inttoptr i64 %212 to i32*
  %166 = load i32, i32* %165
  %167 = add i32 %166, 1
  %168 = inttoptr i64 %212 to i32*
  store i32 %167, i32* %168
  %169 = add i64 %205, -12
  br label %block_400fa9

block_400f30:                                     ; preds = %block_400f23, %block_400f03
  %170 = phi i64 [ %461, %block_400f23 ], [ %439, %block_400f03 ]
  %171 = phi i64 [ %453, %block_400f23 ], [ %452, %block_400f03 ]
  %172 = phi i64 [ %458, %block_400f23 ], [ %449, %block_400f03 ]
  %173 = phi i64 [ %459, %block_400f23 ], [ %451, %block_400f03 ]
  %174 = phi %struct.Memory* [ %375, %block_400f23 ], [ %375, %block_400f03 ]
  %175 = inttoptr i64 %172 to double*
  %176 = load double, double* %175
  store double %176, double* %50, align 1, !tbaa !1971
  store double 0.000000e+00, double* %62, align 1, !tbaa !1971
  %177 = inttoptr i64 %171 to i64*
  %178 = load i64, i64* %177
  %179 = inttoptr i64 %178 to double*
  store double %176, double* %179
  %180 = inttoptr i64 %170 to i32*
  %181 = load i32, i32* %180
  %182 = add i32 %181, 1
  %183 = inttoptr i64 %170 to i32*
  store i32 %182, i32* %183
  %184 = add i64 %173, -174
  br label %block_400e82

block_400fa9:                                     ; preds = %block_400fa2, %block_400fb5
  %185 = phi i64 [ %214, %block_400fa2 ], [ %169, %block_400fb5 ]
  %186 = phi i64 [ %463, %block_400fa2 ], [ %210, %block_400fb5 ]
  %187 = phi %struct.Memory* [ %464, %block_400fa2 ], [ %187, %block_400fb5 ]
  %188 = add i64 %186, -40
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32, i32* %189
  %191 = add i64 %186, -16
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32, i32* %192
  %194 = sub i32 %190, %193
  %195 = lshr i32 %194, 31
  %196 = lshr i32 %190, 31
  %197 = lshr i32 %193, 31
  %198 = xor i32 %197, %196
  %199 = xor i32 %195, %196
  %200 = add nuw nsw i32 %199, %198
  %201 = icmp eq i32 %200, 2
  %202 = icmp ne i32 %195, 0
  %203 = xor i1 %202, %201
  %204 = select i1 %203, i64 12, i64 74
  %205 = add i64 %185, %204
  br i1 %203, label %block_400fb5, label %block_400ff3

block_400f8f:                                     ; preds = %block_400f65
  %206 = phi i64 [ %399, %block_400f65 ]
  %207 = phi %struct.Memory* [ %382, %block_400f65 ]
  %208 = add i64 %206, 7
  %209 = inttoptr i64 %119 to i32*
  store i32 0, i32* %209
  %210 = load i64, i64* %14, align 8
  %211 = add i64 %210, -24
  %212 = add i64 %210, -40
  br label %block_400f96

block_400fa2:                                     ; preds = %block_400f96
  %213 = add i64 %463, -40
  %214 = add i64 %483, 7
  %215 = inttoptr i64 %213 to i32*
  store i32 0, i32* %215
  br label %block_400fa9

block_400e8e:                                     ; preds = %block_400e82
  %216 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 64) to double*)
  store double %216, double* %50, align 1, !tbaa !1971
  store double 0.000000e+00, double* %62, align 1, !tbaa !1971
  %217 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4029a0__rodata_type* @seg_4029a0__rodata to i64), i64 72) to double*)
  store double %217, double* %63, align 1, !tbaa !1971
  store double 0.000000e+00, double* %65, align 1, !tbaa !1971
  store i64 65536, i64* %9, align 8, !tbaa !1947
  %218 = add i64 %485, -36
  %219 = inttoptr i64 %218 to i32*
  %220 = load i32, i32* %219
  %221 = sext i32 %220 to i64
  %222 = sext i32 %220 to i128
  %223 = and i128 %222, -18446744073709551616
  %224 = zext i64 %221 to i128
  %225 = or i128 %223, %224
  %226 = mul nsw i128 %225, 3125
  %227 = trunc i128 %226 to i64
  store i64 %227, i64* %8, align 8, !tbaa !1947
  %228 = sext i64 %227 to i128
  %229 = icmp ne i128 %228, %226
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %56, align 1, !tbaa !1953
  %231 = trunc i128 %226 to i32
  %232 = and i32 %231, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232) #6
  %234 = and i32 %233, 1
  %235 = xor i32 %234, 1
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %57, align 1, !tbaa !1966
  store i8 0, i8* %58, align 1, !tbaa !1967
  store i8 0, i8* %59, align 1, !tbaa !1968
  %237 = lshr i64 %227, 63
  %238 = trunc i64 %237 to i8
  store i8 %238, i8* %60, align 1, !tbaa !1969
  store i8 %230, i8* %61, align 1, !tbaa !1970
  %239 = ashr i64 %227, 63
  store i64 %239, i64* %66, align 8, !tbaa !1947
  %240 = add i64 %505, 39
  store i64 %240, i64* %3, align 8
  %241 = zext i64 %239 to i128
  %242 = shl nuw i128 %241, 64
  %243 = and i128 %226, 18446744073709551615
  %244 = or i128 %243, %242
  %245 = sdiv i128 %244, 65536
  %246 = trunc i128 %245 to i64
  %247 = and i128 %245, 18446744073709551615
  %248 = sext i64 %246 to i128
  %249 = and i128 %248, -18446744073709551616
  %250 = or i128 %249, %247
  %251 = icmp eq i128 %245, %250
  br i1 %251, label %259, label %252

; <label>:252                                     ; preds = %block_400e8e
  %253 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %240, %struct.Memory* %486) #11
  %254 = load i32, i32* %5, align 4
  %255 = load i64, i64* %3, align 8
  %256 = load i64, i64* %14, align 8
  %257 = load double, double* %63, align 1
  %258 = load double, double* %50, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:259                                     ; preds = %block_400e8e
  %260 = srem i128 %244, 65536
  store i64 %246, i64* %67, align 8, !tbaa !1947
  %261 = trunc i128 %260 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %259, %252
  %262 = phi double [ %258, %252 ], [ %216, %259 ]
  %263 = phi double [ %257, %252 ], [ %217, %259 ]
  %264 = phi i64 [ %256, %252 ], [ %485, %259 ]
  %265 = phi i64 [ %255, %252 ], [ %240, %259 ]
  %266 = phi i32 [ %254, %252 ], [ %261, %259 ]
  %267 = phi %struct.Memory* [ %253, %252 ], [ %486, %259 ]
  %268 = add i64 %264, -36
  %269 = inttoptr i64 %268 to i32*
  store i32 %266, i32* %269
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270
  %272 = sitofp i32 %271 to double
  %273 = fsub double %272, %263
  %274 = fdiv double %273, %262
  store double %274, double* %68, align 1, !tbaa !1971
  %275 = add i64 %264, -8
  %276 = inttoptr i64 %275 to i64*
  %277 = load i64, i64* %276
  %278 = add i64 %264, -12
  %279 = inttoptr i64 %278 to i32*
  %280 = load i32, i32* %279
  %281 = add i64 %264, -44
  %282 = inttoptr i64 %281 to i32*
  %283 = load i32, i32* %282
  %284 = mul i32 %283, %280
  %285 = add i64 %264, -40
  %286 = inttoptr i64 %285 to i32*
  %287 = load i32, i32* %286
  %288 = add i32 %287, %284
  %289 = sext i32 %288 to i64
  %290 = shl nsw i64 %289, 3
  %291 = add i64 %290, %277
  %292 = inttoptr i64 %291 to double*
  store double %274, double* %292
  %293 = load i64, i64* %14, align 8
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  %296 = load i64, i64* %295
  %297 = add i64 %293, -12
  %298 = inttoptr i64 %297 to i32*
  %299 = load i32, i32* %298
  %300 = add i64 %293, -44
  %301 = inttoptr i64 %300 to i32*
  %302 = load i32, i32* %301
  %303 = mul i32 %302, %299
  %304 = add i64 %293, -40
  %305 = inttoptr i64 %304 to i32*
  %306 = load i32, i32* %305
  %307 = add i32 %306, %303
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %11, align 8, !tbaa !1947
  %309 = icmp ult i32 %307, %303
  %310 = icmp ult i32 %307, %306
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %56, align 1, !tbaa !1953
  %313 = and i32 %307, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313) #6
  %315 = and i32 %314, 1
  %316 = xor i32 %315, 1
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %57, align 1, !tbaa !1966
  %318 = xor i32 %306, %303
  %319 = xor i32 %318, %307
  %320 = lshr i32 %319, 4
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  store i8 %322, i8* %58, align 1, !tbaa !1967
  %323 = icmp eq i32 %307, 0
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %59, align 1, !tbaa !1968
  %325 = lshr i32 %307, 31
  %326 = trunc i32 %325 to i8
  store i8 %326, i8* %60, align 1, !tbaa !1969
  %327 = lshr i32 %303, 31
  %328 = lshr i32 %306, 31
  %329 = xor i32 %325, %327
  %330 = xor i32 %325, %328
  %331 = add nuw nsw i32 %329, %330
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %61, align 1, !tbaa !1970
  %334 = sext i32 %307 to i64
  store i64 %334, i64* %10, align 8, !tbaa !1947
  %335 = shl nsw i64 %334, 3
  %336 = add i64 %335, %296
  %337 = inttoptr i64 %336 to double*
  %338 = load double, double* %337
  store double %338, double* %50, align 1, !tbaa !1971
  store double 0.000000e+00, double* %62, align 1, !tbaa !1971
  %339 = add i64 %293, -32
  %340 = inttoptr i64 %339 to i64*
  %341 = load i64, i64* %340
  store i64 %341, i64* %9, align 8, !tbaa !1947
  %342 = add i64 %265, 72
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to double*
  %344 = load double, double* %343
  %345 = fcmp uno double %338, %344
  br i1 %345, label %346, label %360

; <label>:346                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %347 = fadd double %338, %344
  %348 = bitcast double %347 to i64
  %349 = and i64 %348, 9221120237041090560
  %350 = icmp eq i64 %349, 9218868437227405312
  %351 = and i64 %348, 2251799813685247
  %352 = icmp ne i64 %351, 0
  %353 = and i1 %350, %352
  br i1 %353, label %354, label %359

; <label>:354                                     ; preds = %346
  %355 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %342, %struct.Memory* %267) #11
  %356 = load i64, i64* %3, align 8
  %357 = load i8, i8* %56, align 1, !tbaa !1953
  %358 = load i8, i8* %59, align 1, !tbaa !1968
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:359                                     ; preds = %346
  br label %369

; <label>:360                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %361 = fcmp ogt double %338, %344
  br i1 %361, label %362, label %363

; <label>:362                                     ; preds = %360
  br label %369

; <label>:363                                     ; preds = %360
  %364 = fcmp olt double %338, %344
  br i1 %364, label %365, label %366

; <label>:365                                     ; preds = %363
  br label %369

; <label>:366                                     ; preds = %363
  %367 = fcmp oeq double %338, %344
  br i1 %367, label %368, label %369

; <label>:368                                     ; preds = %366
  br label %369

; <label>:369                                     ; preds = %368, %366, %365, %362, %359
  %370 = phi i8 [ 1, %368 ], [ %324, %366 ], [ 0, %365 ], [ 0, %362 ], [ 1, %359 ]
  %371 = phi i8 [ 0, %368 ], [ %312, %366 ], [ 1, %365 ], [ 0, %362 ], [ 1, %359 ]
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %369, %354
  %372 = phi i8 [ %358, %354 ], [ %370, %369 ]
  %373 = phi i8 [ %357, %354 ], [ %371, %369 ]
  %374 = phi i64 [ %356, %354 ], [ %342, %369 ]
  %375 = phi %struct.Memory* [ %355, %354 ], [ %267, %369 ]
  %376 = or i8 %372, %373
  %377 = icmp ne i8 %376, 0
  %378 = select i1 %377, i64 38, i64 6
  %379 = add i64 %374, %378
  %380 = load i64, i64* %14, align 8
  br i1 %377, label %block_400f23, label %block_400f03

block_400f65:                                     ; preds = %block_400f65.preheader, %block_400f71
  %381 = phi i64 [ %89, %block_400f71 ], [ %116, %block_400f65.preheader ]
  %382 = phi %struct.Memory* [ %382, %block_400f71 ], [ %115, %block_400f65.preheader ]
  %383 = inttoptr i64 %117 to i32*
  %384 = load i32, i32* %383
  %385 = inttoptr i64 %118 to i32*
  %386 = load i32, i32* %385
  %387 = sub i32 %384, %386
  %388 = lshr i32 %387, 31
  %389 = trunc i32 %388 to i8
  %390 = lshr i32 %384, 31
  %391 = lshr i32 %386, 31
  %392 = xor i32 %391, %390
  %393 = xor i32 %388, %390
  %394 = add nuw nsw i32 %393, %392
  %395 = icmp eq i32 %394, 2
  %396 = icmp ne i8 %389, 0
  %397 = xor i1 %396, %395
  %398 = select i1 %397, i64 12, i64 42
  %399 = add i64 %381, %398
  br i1 %397, label %block_400f71, label %block_400f8f

block_401006:                                     ; preds = %block_400f96
  %400 = phi i1 [ %479, %block_400f96 ]
  %401 = phi i8 [ %473, %block_400f96 ]
  %402 = phi i32 [ %471, %block_400f96 ]
  %403 = phi i32 [ %470, %block_400f96 ]
  %404 = phi i32 [ %467, %block_400f96 ]
  %405 = phi %struct.Memory* [ %464, %block_400f96 ]
  %406 = zext i32 %404 to i64
  %407 = icmp ult i32 %404, %403
  %408 = zext i1 %407 to i8
  %409 = and i32 %402, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409) #6
  %411 = and i32 %410, 1
  %412 = xor i32 %411, 1
  %413 = trunc i32 %412 to i8
  %414 = xor i32 %403, %404
  %415 = xor i32 %414, %402
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = icmp eq i32 %404, %403
  %420 = zext i1 %419 to i8
  %421 = zext i1 %400 to i8
  store i64 %406, i64* %8, align 8, !tbaa !1947
  store i8 %408, i8* %56, align 1, !tbaa !1953
  store i8 %413, i8* %57, align 1, !tbaa !1966
  store i8 %418, i8* %58, align 1, !tbaa !1967
  store i8 %420, i8* %59, align 1, !tbaa !1968
  store i8 %401, i8* %60, align 1, !tbaa !1969
  store i8 %421, i8* %61, align 1, !tbaa !1970
  %422 = load i64, i64* %13, align 1, !tbaa !1947
  %423 = add i64 %422, 8
  %424 = inttoptr i64 %422 to i64*
  %425 = load i64, i64* %424
  store i64 %425, i64* %14, align 8, !tbaa !1947
  %426 = inttoptr i64 %423 to i64*
  %427 = load i64, i64* %426
  store i64 %427, i64* %3, align 8, !tbaa !1947
  %428 = add i64 %422, 16
  store i64 %428, i64* %13, align 8, !tbaa !1947
  ret %struct.Memory* %405

block_400f03:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %429 = add i64 %380, -8
  %430 = inttoptr i64 %429 to i64*
  %431 = load i64, i64* %430
  %432 = add i64 %380, -12
  %433 = inttoptr i64 %432 to i32*
  %434 = load i32, i32* %433
  %435 = add i64 %380, -44
  %436 = inttoptr i64 %435 to i32*
  %437 = load i32, i32* %436
  %438 = mul i32 %437, %434
  %439 = add i64 %380, -40
  %440 = inttoptr i64 %439 to i32*
  %441 = load i32, i32* %440
  %442 = add i32 %441, %438
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %9, align 8, !tbaa !1947
  %444 = sext i32 %442 to i64
  store i64 %444, i64* %10, align 8, !tbaa !1947
  %445 = shl nsw i64 %444, 3
  %446 = add i64 %445, %431
  %447 = inttoptr i64 %446 to double*
  %448 = load double, double* %447
  store double %448, double* %50, align 1, !tbaa !1971
  store double 0.000000e+00, double* %62, align 1, !tbaa !1971
  %449 = add i64 %380, -56
  %450 = inttoptr i64 %449 to double*
  store double %448, double* %450
  %451 = add i64 %379, 45
  %452 = add i64 %380, -32
  br label %block_400f30

block_400f23:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %453 = add i64 %380, -32
  %454 = inttoptr i64 %453 to i64*
  %455 = load i64, i64* %454
  %456 = inttoptr i64 %455 to double*
  %457 = load double, double* %456
  store double %457, double* %50, align 1, !tbaa !1971
  store double 0.000000e+00, double* %62, align 1, !tbaa !1971
  %458 = add i64 %380, -56
  %459 = add i64 %379, 13
  %460 = inttoptr i64 %458 to double*
  store double %457, double* %460
  %461 = add i64 %380, -40
  br label %block_400f30

block_400f96:                                     ; preds = %block_400f8f, %block_400ff3
  %462 = phi i64 [ %208, %block_400f8f ], [ %77, %block_400ff3 ]
  %463 = phi i64 [ %120, %block_400f8f ], [ %71, %block_400ff3 ]
  %464 = phi %struct.Memory* [ %207, %block_400f8f ], [ %70, %block_400ff3 ]
  %465 = add i64 %463, -44
  %466 = inttoptr i64 %465 to i32*
  %467 = load i32, i32* %466
  %468 = add i64 %463, -16
  %469 = inttoptr i64 %468 to i32*
  %470 = load i32, i32* %469
  %471 = sub i32 %467, %470
  %472 = lshr i32 %471, 31
  %473 = trunc i32 %472 to i8
  %474 = lshr i32 %467, 31
  %475 = lshr i32 %470, 31
  %476 = xor i32 %475, %474
  %477 = xor i32 %472, %474
  %478 = add nuw nsw i32 %477, %476
  %479 = icmp eq i32 %478, 2
  %480 = icmp ne i8 %473, 0
  %481 = xor i1 %480, %479
  %482 = select i1 %481, i64 12, i64 112
  %483 = add i64 %462, %482
  br i1 %481, label %block_400fa2, label %block_401006

block_400e82:                                     ; preds = %block_400f30, %block_400e82.preheader
  %484 = phi i64 [ %184, %block_400f30 ], [ %113, %block_400e82.preheader ]
  %485 = phi i64 [ %380, %block_400f30 ], [ %91, %block_400e82.preheader ]
  %486 = phi %struct.Memory* [ %174, %block_400f30 ], [ %92, %block_400e82.preheader ]
  %487 = add i64 %485, -40
  %488 = inttoptr i64 %487 to i32*
  %489 = load i32, i32* %488
  %490 = add i64 %485, -16
  %491 = inttoptr i64 %490 to i32*
  %492 = load i32, i32* %491
  %493 = sub i32 %489, %492
  %494 = lshr i32 %493, 31
  %495 = trunc i32 %494 to i8
  %496 = lshr i32 %489, 31
  %497 = lshr i32 %492, 31
  %498 = xor i32 %497, %496
  %499 = xor i32 %494, %496
  %500 = add nuw nsw i32 %499, %498
  %501 = icmp eq i32 %500, 2
  %502 = icmp ne i8 %495, 0
  %503 = xor i1 %502, %501
  %504 = select i1 %503, i64 12, i64 201
  %505 = add i64 %484, %504
  br i1 %503, label %block_400e8e, label %block_400f4b
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_402994__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_402994:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9 = xor i64 %6, %5
  %10 = lshr i64 %9, 4
  %11 = trunc i64 %10 to i8
  %12 = and i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = lshr i64 %6, 63
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %5, 63
  %18 = xor i64 %15, %17
  %19 = add nuw nsw i64 %18, %17
  %20 = icmp eq i64 %19, 2
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %23 = icmp ult i64 %5, 8
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %7, align 1, !tbaa !1953
  %25 = trunc i64 %5 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #6
  %28 = and i32 %27, 1
  %29 = xor i32 %28, 1
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %8, align 1, !tbaa !1966
  store i8 %12, i8* %13, align 1, !tbaa !1967
  %31 = icmp eq i64 %5, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %14, align 1, !tbaa !1968
  %33 = trunc i64 %17 to i8
  store i8 %33, i8* %16, align 1, !tbaa !1969
  store i8 %21, i8* %22, align 1, !tbaa !1970
  %34 = inttoptr i64 %5 to i64*
  %35 = load i64, i64* %34
  store i64 %35, i64* %3, align 8, !tbaa !1947
  %36 = add i64 %5, 8
  store i64 %36, i64* %4, align 8, !tbaa !1947
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4020d0_dscal_ur(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
block_4020d0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %10 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %12, align 1, !tbaa !1947
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %15, i64* %18
  store i64 %17, i64* %12, align 8, !tbaa !1947
  store i64 %17, i64* %13, align 8, !tbaa !1947
  %19 = add i64 %16, -12
  %20 = load i32, i32* %7, align 4
  %21 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %21
  %22 = add i64 %16, -24
  %23 = bitcast %union.VectorReg* %14 to double*
  %24 = load double, double* %23, align 1
  %25 = inttoptr i64 %22 to double*
  store double %24, double* %25
  %26 = add i64 %16, -32
  %27 = load i64, i64* %11, align 8
  %28 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %28
  %29 = add i64 %16, -36
  %30 = load i32, i32* %5, align 4
  %31 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %31
  %32 = add i64 %16, -12
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %35, align 1, !tbaa !1953
  %36 = and i32 %34, 255
  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #6
  %38 = and i32 %37, 1
  %39 = xor i32 %38, 1
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %40, i8* %41, align 1, !tbaa !1966
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1, !tbaa !1967
  %43 = icmp eq i32 %34, 0
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %44, i8* %45, align 1, !tbaa !1968
  %46 = lshr i32 %34, 31
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %47, i8* %48, align 1, !tbaa !1969
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %49, align 1, !tbaa !1970
  %50 = xor i1 %43, true
  %51 = icmp eq i8 %47, 0
  %52 = and i1 %51, %50
  %53 = select i1 %52, i64 34, i64 29
  %54 = add i64 %53, %1
  br i1 %52, label %block_4020f2, label %block_4020ed

block_4022a2.loopexit:                            ; preds = %block_4021c5
  %55 = phi i1 [ %222, %block_4021c5 ]
  %56 = phi i8 [ %216, %block_4021c5 ]
  %57 = phi i32 [ %214, %block_4021c5 ]
  %58 = phi i32 [ %213, %block_4021c5 ]
  %59 = phi i32 [ %210, %block_4021c5 ]
  %60 = phi %struct.Memory* [ %208, %block_4021c5 ]
  %61 = icmp ult i32 %59, %58
  %62 = zext i1 %61 to i8
  %63 = and i32 %57, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #6
  %65 = and i32 %64, 1
  %66 = xor i32 %65, 1
  %67 = trunc i32 %66 to i8
  %68 = xor i32 %58, %59
  %69 = xor i32 %68, %57
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = icmp eq i32 %59, %58
  %74 = zext i1 %73 to i8
  %75 = zext i1 %55 to i8
  store i8 %62, i8* %35, align 1, !tbaa !1953
  store i8 %67, i8* %41, align 1, !tbaa !1966
  store i8 %72, i8* %42, align 1, !tbaa !1967
  store i8 %74, i8* %45, align 1, !tbaa !1968
  store i8 %56, i8* %48, align 1, !tbaa !1969
  store i8 %75, i8* %49, align 1, !tbaa !1970
  br label %block_4022a2

block_4022a2:                                     ; preds = %block_4020ed, %block_4021b5, %block_402146, %block_4022a2.loopexit
  %76 = phi %struct.Memory* [ %177, %block_4021b5 ], [ %232, %block_402146 ], [ %2, %block_4020ed ], [ %60, %block_4022a2.loopexit ]
  %77 = load i64, i64* %12, align 1, !tbaa !1947
  %78 = add i64 %77, 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79
  store i64 %80, i64* %13, align 8, !tbaa !1947
  %81 = inttoptr i64 %78 to i64*
  %82 = load i64, i64* %81
  store i64 %82, i64* %3, align 8, !tbaa !1947
  %83 = add i64 %77, 16
  store i64 %83, i64* %12, align 8, !tbaa !1947
  ret %struct.Memory* %76

block_4021d1:                                     ; preds = %block_4021c5
  %84 = inttoptr i64 %270 to double*
  %85 = load double, double* %84
  %86 = inttoptr i64 %268 to i64*
  %87 = load i64, i64* %86
  %88 = sext i32 %210 to i64
  %89 = shl nsw i64 %88, 3
  %90 = add i64 %89, %87
  %91 = inttoptr i64 %90 to double*
  %92 = load double, double* %91
  %93 = fmul double %85, %92
  %94 = inttoptr i64 %90 to double*
  store double %93, double* %94
  %95 = inttoptr i64 %270 to double*
  %96 = load double, double* %95
  %97 = inttoptr i64 %268 to i64*
  %98 = load i64, i64* %97
  %99 = inttoptr i64 %358 to i32*
  %100 = load i32, i32* %99
  %101 = add i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = shl nsw i64 %102, 3
  %104 = add i64 %103, %98
  %105 = inttoptr i64 %104 to double*
  %106 = load double, double* %105
  %107 = fmul double %96, %106
  %108 = inttoptr i64 %104 to double*
  store double %107, double* %108
  %109 = inttoptr i64 %270 to double*
  %110 = load double, double* %109
  %111 = inttoptr i64 %268 to i64*
  %112 = load i64, i64* %111
  %113 = inttoptr i64 %358 to i32*
  %114 = load i32, i32* %113
  %115 = add i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 3
  %118 = add i64 %117, %112
  %119 = inttoptr i64 %118 to double*
  %120 = load double, double* %119
  %121 = fmul double %110, %120
  %122 = inttoptr i64 %118 to double*
  store double %121, double* %122
  %123 = inttoptr i64 %270 to double*
  %124 = load double, double* %123
  %125 = inttoptr i64 %268 to i64*
  %126 = load i64, i64* %125
  %127 = inttoptr i64 %358 to i32*
  %128 = load i32, i32* %127
  %129 = add i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 3
  %132 = add i64 %131, %126
  %133 = inttoptr i64 %132 to double*
  %134 = load double, double* %133
  %135 = fmul double %124, %134
  %136 = inttoptr i64 %132 to double*
  store double %135, double* %136
  %137 = inttoptr i64 %270 to double*
  %138 = load double, double* %137
  store double 0.000000e+00, double* %274, align 1, !tbaa !1971
  %139 = inttoptr i64 %268 to i64*
  %140 = load i64, i64* %139
  %141 = inttoptr i64 %358 to i32*
  %142 = load i32, i32* %141
  %143 = add i32 %142, 4
  %144 = zext i32 %143 to i64
  %145 = sext i32 %143 to i64
  %146 = shl nsw i64 %145, 3
  %147 = add i64 %146, %140
  %148 = inttoptr i64 %147 to double*
  %149 = load double, double* %148
  %150 = fmul double %138, %149
  store double %150, double* %23, align 1, !tbaa !1971
  store i64 0, i64* %269, align 1, !tbaa !1971
  store i64 %144, i64* %10, align 8, !tbaa !1947
  store i64 %145, i64* %9, align 8, !tbaa !1947
  %151 = inttoptr i64 %147 to double*
  store double %150, double* %151
  %152 = inttoptr i64 %358 to i32*
  %153 = load i32, i32* %152
  %154 = add i32 %153, 5
  %155 = inttoptr i64 %358 to i32*
  store i32 %154, i32* %155
  %156 = add i64 %226, -12
  br label %block_4021c5

block_402172:                                     ; preds = %block_40216b, %block_40217e
  %157 = phi i64 [ %363, %block_40216b ], [ %319, %block_40217e ]
  %158 = phi %struct.Memory* [ %350, %block_40216b ], [ %158, %block_40217e ]
  %159 = inttoptr i64 %358 to i32*
  %160 = load i32, i32* %159
  %161 = inttoptr i64 %351 to i32*
  %162 = load i32, i32* %161
  %163 = sub i32 %160, %162
  %164 = lshr i32 %163, 31
  %165 = lshr i32 %160, 31
  %166 = lshr i32 %162, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %164, %165
  %169 = add nuw nsw i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = icmp ne i32 %164, 0
  %172 = xor i1 %171, %170
  %173 = select i1 %172, i64 12, i64 57
  %174 = add i64 %157, %173
  br i1 %172, label %block_40217e, label %block_4021ab

block_4021ab:                                     ; preds = %block_402172
  %175 = phi i64 [ %174, %block_402172 ]
  %176 = phi i32 [ %160, %block_402172 ]
  %177 = phi %struct.Memory* [ %158, %block_402172 ]
  %178 = zext i32 %176 to i64
  store i64 %178, i64* %8, align 8, !tbaa !1947
  %179 = add i64 %349, -4
  %180 = inttoptr i64 %179 to i32*
  %181 = load i32, i32* %180
  %182 = add i32 %181, -5
  %183 = icmp ult i32 %181, 5
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %35, align 1, !tbaa !1953
  %185 = and i32 %182, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185) #6
  %187 = and i32 %186, 1
  %188 = xor i32 %187, 1
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %41, align 1, !tbaa !1966
  %190 = xor i32 %182, %181
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %42, align 1, !tbaa !1967
  %194 = icmp eq i32 %181, 5
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %45, align 1, !tbaa !1968
  %196 = lshr i32 %182, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %48, align 1, !tbaa !1969
  %198 = lshr i32 %181, 31
  %199 = xor i32 %196, %198
  %200 = add nuw nsw i32 %199, %198
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %49, align 1, !tbaa !1970
  %203 = icmp ne i8 %197, 0
  %204 = xor i1 %203, %201
  %205 = select i1 %204, i64 10, i64 15
  %206 = add i64 %175, %205
  br i1 %204, label %block_4021b5, label %block_4021ba

block_4021c5:                                     ; preds = %block_4021bf, %block_4021d1
  %207 = phi i64 [ %277, %block_4021bf ], [ %156, %block_4021d1 ]
  %208 = phi %struct.Memory* [ %273, %block_4021bf ], [ %208, %block_4021d1 ]
  %209 = inttoptr i64 %358 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %8, align 8, !tbaa !1947
  %212 = inttoptr i64 %271 to i32*
  %213 = load i32, i32* %212
  %214 = sub i32 %210, %213
  %215 = lshr i32 %214, 31
  %216 = trunc i32 %215 to i8
  %217 = lshr i32 %210, 31
  %218 = lshr i32 %213, 31
  %219 = xor i32 %218, %217
  %220 = xor i32 %215, %217
  %221 = add nuw nsw i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = icmp ne i8 %216, 0
  %224 = xor i1 %223, %222
  %225 = select i1 %224, i64 12, i64 221
  %226 = add i64 %207, %225
  br i1 %224, label %block_4021d1, label %block_4022a2.loopexit

block_402146:                                     ; preds = %block_40210d
  %227 = phi i1 [ %263, %block_40210d ]
  %228 = phi i8 [ %257, %block_40210d ]
  %229 = phi i32 [ %255, %block_40210d ]
  %230 = phi i32 [ %254, %block_40210d ]
  %231 = phi i32 [ %252, %block_40210d ]
  %232 = phi %struct.Memory* [ %250, %block_40210d ]
  %233 = zext i32 %231 to i64
  store i64 %233, i64* %8, align 8, !tbaa !1947
  %234 = icmp ult i32 %231, %230
  %235 = zext i1 %234 to i8
  %236 = and i32 %229, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236) #6
  %238 = and i32 %237, 1
  %239 = xor i32 %238, 1
  %240 = trunc i32 %239 to i8
  %241 = xor i32 %230, %231
  %242 = xor i32 %241, %229
  %243 = lshr i32 %242, 4
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = icmp eq i32 %231, %230
  %247 = zext i1 %246 to i8
  %248 = zext i1 %227 to i8
  store i8 %235, i8* %35, align 1, !tbaa !1953
  store i8 %240, i8* %41, align 1, !tbaa !1966
  store i8 %245, i8* %42, align 1, !tbaa !1967
  store i8 %247, i8* %45, align 1, !tbaa !1968
  store i8 %228, i8* %48, align 1, !tbaa !1969
  store i8 %248, i8* %49, align 1, !tbaa !1970
  br label %block_4022a2

block_40210d:                                     ; preds = %block_4020fc, %block_402119
  %249 = phi i64 [ %394, %block_4020fc ], [ %385, %block_402119 ]
  %250 = phi %struct.Memory* [ %2, %block_4020fc ], [ %250, %block_402119 ]
  %251 = inttoptr i64 %393 to i32*
  %252 = load i32, i32* %251
  %253 = inttoptr i64 %390 to i32*
  %254 = load i32, i32* %253
  %255 = sub i32 %252, %254
  %256 = lshr i32 %255, 31
  %257 = trunc i32 %256 to i8
  %258 = lshr i32 %252, 31
  %259 = lshr i32 %254, 31
  %260 = xor i32 %259, %258
  %261 = xor i32 %256, %258
  %262 = add nuw nsw i32 %261, %260
  %263 = icmp eq i32 %262, 2
  %264 = icmp ne i8 %257, 0
  %265 = xor i1 %264, %263
  %266 = select i1 %265, i64 12, i64 57
  %267 = add i64 %249, %266
  br i1 %265, label %block_402119, label %block_402146

block_4021bf:                                     ; preds = %block_4021ba, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge
  %268 = phi i64 [ %362, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge ], [ %367, %block_4021ba ]
  %269 = phi i64* [ %361, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge ], [ %366, %block_4021ba ]
  %270 = phi i64 [ %360, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge ], [ %365, %block_4021ba ]
  %271 = phi i64 [ %359, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge ], [ %179, %block_4021ba ]
  %272 = phi i64 [ %357, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge ], [ %386, %block_4021ba ]
  %273 = phi %struct.Memory* [ %350, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge ], [ %177, %block_4021ba ]
  %274 = bitcast i64* %269 to double*
  %275 = inttoptr i64 %351 to i32*
  %276 = load i32, i32* %275
  %277 = add i64 %272, 6
  %278 = inttoptr i64 %358 to i32*
  store i32 %276, i32* %278
  br label %block_4021c5

block_4020f2:                                     ; preds = %block_4020d0
  %279 = inttoptr i64 %29 to i32*
  %280 = load i32, i32* %279
  %281 = add i32 %280, -1
  %282 = icmp eq i32 %280, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %35, align 1, !tbaa !1953
  %284 = and i32 %281, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284) #6
  %286 = and i32 %285, 1
  %287 = xor i32 %286, 1
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %41, align 1, !tbaa !1966
  %289 = xor i32 %281, %280
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %42, align 1, !tbaa !1967
  %293 = icmp eq i32 %280, 1
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %45, align 1, !tbaa !1968
  %295 = lshr i32 %281, 31
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %48, align 1, !tbaa !1969
  %297 = lshr i32 %280, 31
  %298 = xor i32 %295, %297
  %299 = add nuw nsw i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %49, align 1, !tbaa !1970
  %302 = select i1 %293, i64 89, i64 10
  %303 = add i64 %54, %302
  br i1 %293, label %block_40214b, label %block_4020fc

block_40217e:                                     ; preds = %block_402172
  %304 = inttoptr i64 %365 to double*
  %305 = load double, double* %304
  %306 = inttoptr i64 %367 to i64*
  %307 = load i64, i64* %306
  %308 = sext i32 %160 to i64
  %309 = shl nsw i64 %308, 3
  %310 = add i64 %309, %307
  %311 = inttoptr i64 %310 to double*
  %312 = load double, double* %311
  %313 = fmul double %305, %312
  store double %313, double* %23, align 1, !tbaa !1971
  store i64 0, i64* %366, align 1, !tbaa !1971
  store i64 %308, i64* %9, align 8, !tbaa !1947
  %314 = inttoptr i64 %310 to double*
  store double %313, double* %314
  %315 = inttoptr i64 %358 to i32*
  %316 = load i32, i32* %315
  %317 = add i32 %316, 1
  %318 = inttoptr i64 %358 to i32*
  store i32 %317, i32* %318
  %319 = add i64 %174, -12
  br label %block_402172

block_40214b:                                     ; preds = %block_4020f2
  %320 = add i64 %16, -52
  %321 = inttoptr i64 %320 to i32*
  store i32 5, i32* %321
  %322 = zext i32 %34 to i64
  store i64 %322, i64* %8, align 8, !tbaa !1947
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %324 = sext i32 %34 to i64
  %325 = lshr i64 %324, 32
  store i64 %325, i64* %323, align 8, !tbaa !1947
  %326 = inttoptr i64 %320 to i32*
  %327 = load i32, i32* %326
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %9, align 8, !tbaa !1947
  %329 = add i64 %303, 19
  store i64 %329, i64* %3, align 8
  %330 = zext i32 %34 to i64
  %331 = sext i32 %327 to i64
  %332 = shl nuw i64 %325, 32
  %333 = or i64 %332, %330
  %334 = sdiv i64 %333, %331
  %335 = shl i64 %334, 32
  %336 = ashr exact i64 %335, 32
  %337 = icmp eq i64 %334, %336
  br i1 %337, label %343, label %338

; <label>:338                                     ; preds = %block_40214b
  %339 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %329, %struct.Memory* %2) #11
  %340 = load i64, i64* %13, align 8
  %341 = load i32, i32* %5, align 4
  %342 = load i64, i64* %3, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:343                                     ; preds = %block_40214b
  %344 = srem i64 %333, %331
  %345 = and i64 %344, 4294967295
  store i64 %345, i64* %10, align 8, !tbaa !1947
  %346 = trunc i64 %344 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %343, %338
  %347 = phi i64 [ %342, %338 ], [ %329, %343 ]
  %348 = phi i32 [ %341, %338 ], [ %346, %343 ]
  %349 = phi i64 [ %340, %338 ], [ %17, %343 ]
  %350 = phi %struct.Memory* [ %339, %338 ], [ %2, %343 ]
  %351 = add i64 %349, -36
  %352 = inttoptr i64 %351 to i32*
  store i32 %348, i32* %352
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353
  %355 = icmp eq i32 %354, 0
  %356 = select i1 %355, i64 97, i64 13
  %357 = add i64 %347, %356
  %358 = add i64 %349, -32
  br i1 %355, label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge, label %block_40216b

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit.block_4021bf_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %359 = add i64 %349, -4
  %360 = add i64 %349, -16
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %362 = add i64 %349, -24
  br label %block_4021bf

block_4021b5:                                     ; preds = %block_4021ab
  br label %block_4022a2

block_40216b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %363 = add i64 %357, 7
  %364 = inttoptr i64 %358 to i32*
  store i32 0, i32* %364
  %365 = add i64 %349, -16
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %367 = add i64 %349, -24
  br label %block_402172

block_402119:                                     ; preds = %block_40210d
  %368 = inttoptr i64 %396 to double*
  %369 = load double, double* %368
  %370 = inttoptr i64 %398 to i64*
  %371 = load i64, i64* %370
  %372 = sext i32 %252 to i64
  %373 = shl nsw i64 %372, 3
  %374 = add i64 %373, %371
  %375 = inttoptr i64 %374 to double*
  %376 = load double, double* %375
  %377 = fmul double %369, %376
  store double %377, double* %23, align 1, !tbaa !1971
  store i64 0, i64* %397, align 1, !tbaa !1971
  store i64 %372, i64* %9, align 8, !tbaa !1947
  %378 = inttoptr i64 %374 to double*
  store double %377, double* %378
  %379 = inttoptr i64 %393 to i32*
  %380 = load i32, i32* %379
  %381 = inttoptr i64 %29 to i32*
  %382 = load i32, i32* %381
  %383 = add i32 %382, %380
  %384 = inttoptr i64 %393 to i32*
  store i32 %383, i32* %384
  %385 = add i64 %267, -12
  br label %block_40210d

block_4020ed:                                     ; preds = %block_4020d0
  br label %block_4022a2

block_4021ba:                                     ; preds = %block_4021ab
  %386 = add i64 %206, 5
  br label %block_4021bf

block_4020fc:                                     ; preds = %block_4020f2
  %387 = sext i32 %34 to i64
  %388 = sext i32 %280 to i64
  %389 = mul nsw i64 %388, %387
  %390 = add i64 %16, -48
  %391 = trunc i64 %389 to i32
  %392 = inttoptr i64 %390 to i32*
  store i32 %391, i32* %392
  %393 = add i64 %16, -40
  %394 = add i64 %303, 17
  %395 = inttoptr i64 %393 to i32*
  store i32 0, i32* %395
  %396 = add i64 %16, -24
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %398 = add i64 %16, -32
  br label %block_40210d
}

; Function Attrs: nobuiltin noinline
define i64 @callback_sub_400660__start(i64, i64, i64, i64, i64, i64, i64, i64) #5 {
  tail call void @__mcsema_verify_reg_state()
  store i64 4195936, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  tail call fastcc void @__mcsema_early_init()
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11
  %12 = add i64 %10, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %6, i64* %13
  %14 = add i64 %10, -24
  store i64 %14, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %15 = tail call %struct.Memory* @sub_400660__start(%struct.State* nonnull @__mcsema_reg_state, i64 4195936, %struct.Memory* null)
  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %16
}

; Function Attrs: nounwind
define void @__mcsema_verify_reg_state() #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %is_null, label %end

is_null:                                          ; preds = %entry
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %end

end:                                              ; preds = %is_null, %entry
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @__mcsema_early_init() #6 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  ret void

; <label>:3                                       ; preds = %0
  store i32 trunc (i64 add (i64 ptrtoint (%seg_400660__text_type* @seg_400660__text to i64), i64 6319) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400660__text_type* @seg_400660__text to i64), i64 6764) to i32*), align 4
  store i32 trunc (i64 add (i64 ptrtoint (%seg_400660__text_type* @seg_400660__text to i64), i64 6319) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400660__text_type* @seg_400660__text to i64), i64 6220) to i32*), align 4
  store i32 trunc (i64 add (i64 ptrtoint (%seg_400660__text_type* @seg_400660__text to i64), i64 6319) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_400660__text_type* @seg_400660__text to i64), i64 204) to i32*), align 4
  store i32 trunc (i64 add (i64 ptrtoint (%seg_400660__text_type* @seg_400660__text to i64), i64 6319) to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_4005c0__plt_type* @seg_4005c0__plt to i64), i64 12) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  ret void
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @callback_sub_400730_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #7 {
  tail call void @__mcsema_verify_reg_state()
  store i64 4196144, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  tail call fastcc void @__mcsema_early_init()
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11
  %12 = add i64 %10, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %6, i64* %13
  %14 = add i64 %10, -24
  store i64 %14, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %15 = tail call %struct.Memory* @sub_400730_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196144, %struct.Memory* null)
  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %16
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @callback_sub_400710___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #7 {
  tail call void @__mcsema_verify_reg_state()
  store i64 4196112, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  tail call fastcc void @__mcsema_early_init()
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11
  %12 = add i64 %10, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %6, i64* %13
  %14 = add i64 %10, -24
  store i64 %14, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %15 = tail call %struct.Memory* @sub_400710___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4196112, %struct.Memory* null)
  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %16
}

; Function Attrs: noinline nounwind
define %struct.Memory* @__mcsema_detach_call_value(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #3 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 8
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21
  %23 = add i64 %19, 16
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24
  %26 = inttoptr i64 %1 to i64 (i64, i64, i64, i64, i64, i64, i64, i64)*
  %27 = tail call i64 %26(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25) #6
  store i64 %27, i64* %5, align 8
  %28 = inttoptr i64 %19 to i64*
  %29 = load i64, i64* %28
  store i64 %29, i64* %4, align 8
  store i64 %20, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @callback_sub_402990___libc_csu_fini() #7 {
  tail call void @__mcsema_verify_reg_state()
  store i64 4204944, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  tail call fastcc void @__mcsema_early_init()
  %2 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %3 = add i64 %2, -8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %4 = tail call %struct.Memory* @sub_402990___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4204944, %struct.Memory* null)
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %5
}

; Function Attrs: nobuiltin noinline
define i64 @callback_sub_402920___libc_csu_init() #5 {
  tail call void @__mcsema_verify_reg_state()
  store i64 4204832, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  tail call fastcc void @__mcsema_early_init()
  %2 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %3 = add i64 %2, -8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %4 = tail call %struct.Memory* @sub_402920___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4204832, %struct.Memory* null)
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %5
}

; Function Attrs: nobuiltin noinline
define i64 @main(i64, i64, i64) #5 {
  tail call void @__mcsema_verify_reg_state()
  store i64 4196192, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  tail call fastcc void @__mcsema_early_init()
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %6 = add i64 %5, -8
  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %7 = tail call %struct.Memory* @sub_400760_main(%struct.State* nonnull @__mcsema_reg_state, i64 4196192, %struct.Memory* null)
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %8
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6040a8___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 8
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21
  %23 = add i64 %19, 16
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24
  %26 = inttoptr i64 %19 to i64*
  %27 = load i64, i64* %26
  store i64 %27, i64* %4, align 8
  store i64 %20, i64* %10, align 8
  %28 = tail call i64 @__libc_start_main(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25)
  store i64 %28, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_4005d0_getenv(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @getenv(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400600_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 8
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21
  %23 = add i64 %19, 16
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24
  %26 = add i64 %19, 24
  %27 = inttoptr i64 %26 to i64*
  %28 = load i64, i64* %27
  %29 = add i64 %19, 32
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64, i64* %30
  %32 = add i64 %19, 40
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33
  %35 = add i64 %19, 48
  %36 = inttoptr i64 %35 to i64*
  %37 = load i64, i64* %36
  %38 = add i64 %19, 56
  %39 = inttoptr i64 %38 to i64*
  %40 = load i64, i64* %39
  %41 = add i64 %19, 64
  %42 = inttoptr i64 %41 to i64*
  %43 = load i64, i64* %42
  %44 = add i64 %19, 72
  %45 = inttoptr i64 %44 to i64*
  %46 = load i64, i64* %45
  %47 = add i64 %19, 80
  %48 = inttoptr i64 %47 to i64*
  %49 = load i64, i64* %48
  %50 = inttoptr i64 %19 to i64*
  %51 = load i64, i64* %50
  store i64 %51, i64* %4, align 8
  store i64 %20, i64* %10, align 8
  %52 = tail call i64 @printf(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49)
  store i64 %52, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400630_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @malloc(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6040b8_atoi(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @atoi(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6040a0_gettimeofday(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %8, align 8
  %12 = inttoptr i64 %11 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %4, align 8
  %14 = add i64 %11, 8
  store i64 %14, i64* %8, align 8
  %15 = tail call i64 @gettimeofday(i64 %9, i64 %10)
  store i64 %15, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_604088_free(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @free(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6040c8___gmon_start__(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8
  store i64 %9, i64* %4, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  %11 = tail call i64 @__gmon_start__()
  store i64 %11, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_4005f0_clock(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8
  store i64 %9, i64* %4, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  %11 = tail call i64 @clock()
  store i64 %11, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nobuiltin noinline
define i64 @.init_proc(i64, i64, i64, i64, i64, i64, i64, i64) #5 {
  tail call void @__mcsema_verify_reg_state()
  store i64 4195744, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  tail call fastcc void @__mcsema_early_init()
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11
  %12 = add i64 %10, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %6, i64* %13
  %14 = add i64 %10, -24
  store i64 %14, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %15 = tail call %struct.Memory* @sub_4005a0__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195744, %struct.Memory* null)
  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %16
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @.term_proc(i64, i64, i64, i64, i64, i64, i64, i64) #7 {
  tail call void @__mcsema_verify_reg_state()
  store i64 4204948, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  tail call fastcc void @__mcsema_early_init()
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11
  %12 = add i64 %10, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %6, i64* %13
  %14 = add i64 %10, -24
  store i64 %14, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %15 = tail call %struct.Memory* @sub_402994__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4204948, %struct.Memory* null)
  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %16
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #6 {
  %1 = tail call i64 @callback_sub_402990___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  tail call fastcc void @__mcsema_early_init()
  %1 = tail call i64 @callback_sub_402920___libc_csu_init()
  ret void
}

; Function Attrs: noinline optnone
define %struct.State* @__mcsema_debug_get_reg_state() #9 {
  ret %struct.State* @__mcsema_reg_state
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #10

attributes #0 = { noduplicate noinline nounwind optnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noinline }
attributes #3 = { noinline nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noinline }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noinline nounwind }
attributes #8 = { alwaysinline inlinehint "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline optnone }
attributes #10 = { noreturn nounwind }
attributes #11 = { alwaysinline nobuiltin nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1945, !1946}

!0 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 3.7.1 (tags/RELEASE_371/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !3, retainedTypes: !65, subprograms: !862, imports: !874)
!2 = !DIFile(filename: "/home/weiwang99/mcsema-ve/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !24, !33, !37, !43, !49, !53, !59}
!4 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !"_ZTS14AsyncHyperCall", file: !5, line: 70, baseType: !6, size: 32, align: 32, elements: !9, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/weiwang99/mcsema-ve/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 183, baseType: !8)
!7 = !DIFile(filename: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/libraries/llvm/bin/../lib/clang/3.7.1/include/stdint.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!8 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!9 = !{!10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!10 = !DIEnumerator(name: "kInvalid", value: 0)
!11 = !DIEnumerator(name: "kX86Int1", value: 1)
!12 = !DIEnumerator(name: "kX86Int3", value: 2)
!13 = !DIEnumerator(name: "kX86IntO", value: 3)
!14 = !DIEnumerator(name: "kX86IntN", value: 4)
!15 = !DIEnumerator(name: "kX86Bound", value: 5)
!16 = !DIEnumerator(name: "kX86IRet", value: 6)
!17 = !DIEnumerator(name: "kX86SysCall", value: 7)
!18 = !DIEnumerator(name: "kX86SysRet", value: 8)
!19 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!20 = !DIEnumerator(name: "kX86SysExit", value: 10)
!21 = !DIEnumerator(name: "kX86JmpFar", value: 11)
!22 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 12)
!23 = !DIEnumerator(name: "kInvalidInstruction", value: 13)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !25, line: 64, baseType: !26, size: 16, align: 16, elements: !28, identifier: "_ZTS21RequestPrivilegeLevel")
!25 = !DIFile(filename: "/home/weiwang99/mcsema-ve/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 218, baseType: !27)
!27 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31, !32}
!29 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!30 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!31 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!32 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !25, line: 71, baseType: !26, size: 16, align: 16, elements: !34, identifier: "_ZTS14TableIndicator")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!36 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !25, line: 123, baseType: !26, size: 16, align: 16, elements: !38, identifier: "_ZTS19FPUPrecisionControl")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!40 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!41 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!42 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !25, line: 130, baseType: !26, size: 16, align: 16, elements: !44, identifier: "_ZTS18FPURoundingControl")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!46 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!47 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!48 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !25, line: 137, baseType: !26, size: 16, align: 16, elements: !50, identifier: "_ZTS18FPUInfinityControl")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!52 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !25, line: 214, baseType: !26, size: 16, align: 16, elements: !54, identifier: "_ZTS6FPUTag")
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!56 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!57 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!58 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !25, line: 221, baseType: !60, size: 8, align: 8, elements: !62, identifier: "_ZTS14FPUAbridgedTag")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 237, baseType: !61)
!61 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!62 = !{!63, !64}
!63 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!64 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!65 = !{!66, !68, !73, !78, !133, !134, !140, !142, !148, !149, !151, !159, !161, !163, !165, !183, !189, !4, !191, !198, !203, !217, !225, !231, !237, !241, !247, !252, !257, !264, !270, !275, !280, !286, !300, !304, !308, !312, !316, !320, !324, !328, !332, !336, !340, !344, !348, !362, !368, !372, !376, !380, !384, !388, !392, !396, !400, !404, !408, !412, !431, !435, !460, !475, !479, !24, !33, !484, !499, !502, !508, !512, !548, !552, !557, !561, !565, !577, !581, !585, !589, !593, !597, !601, !605, !609, !613, !617, !641, !646, !650, !664, !669, !676, !692, !696, !37, !43, !49, !709, !713, !729, !733, !53, !743, !750, !754, !760, !764, !771, !789, !793, !59, !803, !807, !826, !830, !843, !851, !856, !860}
!66 = !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 97, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!67 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!68 = !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 105, size: 128, align: 64, elements: !69, identifier: "_ZTS6ldiv_t")
!69 = !{!70, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !"_ZTS6ldiv_t", file: !67, line: 107, baseType: !71, size: 64, align: 64)
!71 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !"_ZTS6ldiv_t", file: !67, line: 108, baseType: !71, size: 64, align: 64, offset: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 117, size: 128, align: 64, elements: !74, identifier: "_ZTS7lldiv_t")
!74 = !{!75, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !"_ZTS7lldiv_t", file: !67, line: 119, baseType: !76, size: 64, align: 64)
!76 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !"_ZTS7lldiv_t", file: !67, line: 120, baseType: !76, size: 64, align: 64, offset: 64)
!78 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !80, file: !79, line: 75, size: 64, align: 64, elements: !83, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!79 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/exception_ptr.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!80 = !DINamespace(name: "__exception_ptr", scope: !81, file: !79, line: 53)
!81 = !DINamespace(name: "std", scope: null, file: !82, line: 194)
!82 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++config.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!83 = !{!84, !86, !90, !93, !94, !99, !100, !104, !109, !113, !117, !120, !121, !124, !128}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 77, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!86 = !DISubprogram(name: "exception_ptr", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 79, type: !87, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89, !85}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTSNSt15__exception_ptr13exception_ptrE", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!90 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 81, type: !91, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !89}
!93 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 82, type: !91, isLocal: false, isDefinition: false, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 84, type: !95, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{!85, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !"_ZTSNSt15__exception_ptr13exception_ptrE")
!99 = !DISubprogram(name: "exception_ptr", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 90, type: !91, isLocal: false, isDefinition: false, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!100 = !DISubprogram(name: "exception_ptr", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 92, type: !101, isLocal: false, isDefinition: false, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !89, !103}
!103 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !98)
!104 = !DISubprogram(name: "exception_ptr", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 95, type: !105, isLocal: false, isDefinition: false, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !89, !107}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !81, file: !82, line: 200, baseType: !108)
!108 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!109 = !DISubprogram(name: "exception_ptr", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 99, type: !110, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !89, !112}
!112 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !"_ZTSNSt15__exception_ptr13exception_ptrE")
!113 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 112, type: !114, isLocal: false, isDefinition: false, scopeLine: 112, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !89, !103}
!116 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !"_ZTSNSt15__exception_ptr13exception_ptrE")
!117 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 116, type: !118, isLocal: false, isDefinition: false, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!116, !89, !112}
!120 = !DISubprogram(name: "~exception_ptr", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 123, type: !91, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!121 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 126, type: !122, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !89, !116}
!124 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 138, type: !125, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !97}
!127 = !DIBasicType(name: "bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!128 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !"_ZTSNSt15__exception_ptr13exception_ptrE", file: !79, line: 147, type: !129, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !97}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !"_ZTSSt9type_info")
!133 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !81, file: !79, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!134 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 82, size: 64, align: 32, elements: !136, identifier: "_ZTS11__mbstate_t")
!135 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!136 = !{!137, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !"_ZTS11__mbstate_t", file: !135, line: 84, baseType: !138, size: 32, align: 32)
!138 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !"_ZTS11__mbstate_t", file: !135, line: 93, baseType: !"_ZTSN11__mbstate_tUt_E", size: 32, align: 32, offset: 32)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !141, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!141 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, align: 64, elements: !143, identifier: "_ZTS13__va_list_tag")
!143 = !{!144, !145, !146, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !"_ZTS13__va_list_tag", file: !2, baseType: !8, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !"_ZTS13__va_list_tag", file: !2, baseType: !8, size: 32, align: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !"_ZTS13__va_list_tag", file: !2, baseType: !85, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !"_ZTS13__va_list_tag", file: !2, baseType: !85, size: 64, align: 64, offset: 128)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !135, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !150, line: 53, size: 768, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!150 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!151 = !DICompositeType(tag: DW_TAG_union_type, scope: !"_ZTS11__mbstate_t", file: !135, line: 85, size: 32, align: 32, elements: !152, identifier: "_ZTSN11__mbstate_tUt_E")
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !"_ZTSN11__mbstate_tUt_E", file: !135, line: 88, baseType: !8, size: 32, align: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !"_ZTSN11__mbstate_tUt_E", file: !135, line: 92, baseType: !155, size: 32, align: 8)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 32, align: 8, elements: !157)
!156 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!157 = !{!158}
!158 = !DISubrange(count: 4)
!159 = !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 21, size: 128, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!160 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!161 = !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 75, size: 256, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "Memory", file: !164, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS6Memory")
!164 = !DIFile(filename: "/home/weiwang99/mcsema-ve/remill/remill/Arch/Runtime/Types.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!165 = !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !25, line: 742, size: 27008, align: 128, elements: !166, identifier: "_ZTS5State")
!166 = !{!167, !168, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!167 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !"_ZTS5State", baseType: !"_ZTS9ArchState")
!168 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !"_ZTS5State", file: !25, line: 747, baseType: !169, size: 16384, align: 128, offset: 128)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !"_ZTS9VectorReg", size: 16384, align: 128, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !"_ZTS5State", file: !25, line: 751, baseType: !"_ZTS10ArithFlags", size: 128, align: 64, offset: 16512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rflag", scope: !"_ZTS5State", file: !25, line: 752, baseType: !"_ZTS5Flags", size: 64, align: 64, offset: 16640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !"_ZTS5State", file: !25, line: 753, baseType: !"_ZTS8Segments", size: 192, align: 64, offset: 16704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !"_ZTS5State", file: !25, line: 754, baseType: !"_ZTS12AddressSpace", size: 768, align: 64, offset: 16896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !"_ZTS5State", file: !25, line: 755, baseType: !"_ZTS3GPR", size: 2176, align: 64, offset: 17664)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !"_ZTS5State", file: !25, line: 756, baseType: !"_ZTS8X87Stack", size: 1024, align: 64, offset: 19840)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !"_ZTS5State", file: !25, line: 757, baseType: !"_ZTS3MMX", size: 1024, align: 64, offset: 20864)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !"_ZTS5State", file: !25, line: 758, baseType: !"_ZTS14FPUStatusFlags", size: 192, align: 8, offset: 21888)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !"_ZTS5State", file: !25, line: 759, baseType: !"_ZTS4XCR0", size: 64, align: 8, offset: 22080)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "x87", scope: !"_ZTS5State", file: !25, line: 760, baseType: !"_ZTS3FPU", size: 4096, align: 128, offset: 22144)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "seg_caches", scope: !"_ZTS5State", file: !25, line: 761, baseType: !"_ZTS13SegmentCaches", size: 768, align: 64, offset: 26240)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArchState", file: !184, line: 21, size: 128, align: 8, elements: !185, identifier: "_ZTS9ArchState")
!184 = !DIFile(filename: "/home/weiwang99/mcsema-ve/remill/remill/Arch/Runtime/State.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!185 = !{!186, !187, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call", scope: !"_ZTS9ArchState", file: !184, line: 23, baseType: !"_ZTSN14AsyncHyperCall4NameE", size: 32, align: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !"_ZTS9ArchState", file: !184, line: 25, baseType: !6, size: 32, align: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS9ArchState", file: !184, line: 31, baseType: !"_ZTSN9ArchStateUt_E", size: 64, align: 64, offset: 64)
!189 = !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, align: 8, elements: !190, identifier: "_ZTS14AsyncHyperCall")
!190 = !{}
!191 = !DICompositeType(tag: DW_TAG_union_type, scope: !"_ZTS9ArchState", file: !184, line: 31, size: 64, align: 64, elements: !192, identifier: "_ZTSN9ArchStateUt_E")
!192 = !{!193, !196, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_load", scope: !"_ZTSN9ArchStateUt_E", file: !184, line: 32, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 109, baseType: !195)
!195 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_store", scope: !"_ZTSN9ArchStateUt_E", file: !184, line: 33, baseType: !194, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call_vector", scope: !"_ZTSN9ArchStateUt_E", file: !184, line: 34, baseType: !6, size: 32, align: 32)
!198 = !DICompositeType(tag: DW_TAG_union_type, name: "VectorReg", file: !25, line: 636, size: 512, align: 128, elements: !199, identifier: "_ZTS9VectorReg")
!199 = !{!200, !201, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !"_ZTS9VectorReg", file: !25, line: 637, baseType: !"_ZTS8vec128_t", size: 128, align: 8)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !"_ZTS9VectorReg", file: !25, line: 638, baseType: !"_ZTS8vec256_t", size: 256, align: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "zmm", scope: !"_ZTS9VectorReg", file: !25, line: 639, baseType: !"_ZTS8vec512_t", size: 512, align: 8)
!203 = !DICompositeType(tag: DW_TAG_union_type, name: "vec128_t", file: !164, line: 317, size: 128, align: 8, elements: !204, identifier: "_ZTS8vec128_t")
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !"_ZTS8vec128_t", file: !164, line: 321, baseType: !"_ZTS11uint128v1_t", size: 128, align: 8)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !"_ZTS8vec128_t", file: !164, line: 323, baseType: !"_ZTS10uint8v16_t", size: 128, align: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !"_ZTS8vec128_t", file: !164, line: 324, baseType: !"_ZTS10uint16v8_t", size: 128, align: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !"_ZTS8vec128_t", file: !164, line: 325, baseType: !"_ZTS10uint32v4_t", size: 128, align: 8)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !"_ZTS8vec128_t", file: !164, line: 326, baseType: !"_ZTS10uint64v2_t", size: 128, align: 8)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !"_ZTS8vec128_t", file: !164, line: 327, baseType: !"_ZTS11float32v4_t", size: 128, align: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !"_ZTS8vec128_t", file: !164, line: 328, baseType: !"_ZTS11float64v2_t", size: 128, align: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !"_ZTS8vec128_t", file: !164, line: 330, baseType: !"_ZTS9int8v16_t", size: 128, align: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !"_ZTS8vec128_t", file: !164, line: 331, baseType: !"_ZTS9int16v8_t", size: 128, align: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !"_ZTS8vec128_t", file: !164, line: 332, baseType: !"_ZTS9int32v4_t", size: 128, align: 8)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !"_ZTS8vec128_t", file: !164, line: 333, baseType: !"_ZTS9int64v2_t", size: 128, align: 8)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !"_ZTS8vec128_t", file: !164, line: 334, baseType: !"_ZTS10int128v1_t", size: 128, align: 8)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v1_t", file: !164, line: 205, size: 128, align: 8, elements: !218, identifier: "_ZTS11uint128v1_t")
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11uint128v1_t", file: !164, line: 205, baseType: !220, size: 128, align: 128)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, align: 128, elements: !223)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !164, line: 46, baseType: !222)
!222 = !DIBasicType(name: "unsigned __int128", size: 128, align: 128, encoding: DW_ATE_unsigned)
!223 = !{!224}
!224 = !DISubrange(count: 1)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v16_t", file: !164, line: 182, size: 128, align: 8, elements: !226, identifier: "_ZTS10uint8v16_t")
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint8v16_t", file: !164, line: 182, baseType: !228, size: 128, align: 8)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, align: 8, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 16)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v8_t", file: !164, line: 189, size: 128, align: 8, elements: !232, identifier: "_ZTS10uint16v8_t")
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint16v8_t", file: !164, line: 189, baseType: !234, size: 128, align: 16)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, align: 16, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v4_t", file: !164, line: 195, size: 128, align: 8, elements: !238, identifier: "_ZTS10uint32v4_t")
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint32v4_t", file: !164, line: 195, baseType: !240, size: 128, align: 32)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, align: 32, elements: !157)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v2_t", file: !164, line: 200, size: 128, align: 8, elements: !242, identifier: "_ZTS10uint64v2_t")
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint64v2_t", file: !164, line: 200, baseType: !244, size: 128, align: 64)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, align: 64, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 2)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "float32v4_t", file: !164, line: 242, size: 128, align: 8, elements: !248, identifier: "_ZTS11float32v4_t")
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11float32v4_t", file: !164, line: 242, baseType: !250, size: 128, align: 32)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 128, align: 32, elements: !157)
!251 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "float64v2_t", file: !164, line: 247, size: 128, align: 8, elements: !253, identifier: "_ZTS11float64v2_t")
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11float64v2_t", file: !164, line: 247, baseType: !255, size: 128, align: 64)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, align: 64, elements: !245)
!256 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "int8v16_t", file: !164, line: 213, size: 128, align: 8, elements: !258, identifier: "_ZTS9int8v16_t")
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int8v16_t", file: !164, line: 213, baseType: !260, size: 128, align: 8)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 128, align: 8, elements: !229)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !262, line: 194, baseType: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!263 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "int16v8_t", file: !164, line: 220, size: 128, align: 8, elements: !265, identifier: "_ZTS9int16v8_t")
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int16v8_t", file: !164, line: 220, baseType: !267, size: 128, align: 16)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, align: 16, elements: !235)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !262, line: 195, baseType: !269)
!269 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "int32v4_t", file: !164, line: 226, size: 128, align: 8, elements: !271, identifier: "_ZTS9int32v4_t")
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int32v4_t", file: !164, line: 226, baseType: !273, size: 128, align: 32)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 128, align: 32, elements: !157)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !262, line: 196, baseType: !138)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "int64v2_t", file: !164, line: 231, size: 128, align: 8, elements: !276, identifier: "_ZTS9int64v2_t")
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int64v2_t", file: !164, line: 231, baseType: !278, size: 128, align: 64)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 128, align: 64, elements: !245)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !262, line: 197, baseType: !71)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "int128v1_t", file: !164, line: 236, size: 128, align: 8, elements: !281, identifier: "_ZTS10int128v1_t")
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10int128v1_t", file: !164, line: 236, baseType: !283, size: 128, align: 128)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, align: 128, elements: !223)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "int128_t", file: !164, line: 47, baseType: !285)
!285 = !DIBasicType(name: "__int128", size: 128, align: 128, encoding: DW_ATE_signed)
!286 = !DICompositeType(tag: DW_TAG_union_type, name: "vec256_t", file: !164, line: 340, size: 256, align: 8, elements: !287, identifier: "_ZTS8vec256_t")
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !"_ZTS8vec256_t", file: !164, line: 341, baseType: !"_ZTS10uint8v32_t", size: 256, align: 8)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !"_ZTS8vec256_t", file: !164, line: 342, baseType: !"_ZTS11uint16v16_t", size: 256, align: 8)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !"_ZTS8vec256_t", file: !164, line: 343, baseType: !"_ZTS10uint32v8_t", size: 256, align: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !"_ZTS8vec256_t", file: !164, line: 344, baseType: !"_ZTS10uint64v4_t", size: 256, align: 8)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !"_ZTS8vec256_t", file: !164, line: 345, baseType: !"_ZTS11uint128v2_t", size: 256, align: 8)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !"_ZTS8vec256_t", file: !164, line: 346, baseType: !"_ZTS11float32v8_t", size: 256, align: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !"_ZTS8vec256_t", file: !164, line: 347, baseType: !"_ZTS11float64v4_t", size: 256, align: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !"_ZTS8vec256_t", file: !164, line: 349, baseType: !"_ZTS9int8v32_t", size: 256, align: 8)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !"_ZTS8vec256_t", file: !164, line: 350, baseType: !"_ZTS10int16v16_t", size: 256, align: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !"_ZTS8vec256_t", file: !164, line: 351, baseType: !"_ZTS9int32v8_t", size: 256, align: 8)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !"_ZTS8vec256_t", file: !164, line: 352, baseType: !"_ZTS9int64v4_t", size: 256, align: 8)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !"_ZTS8vec256_t", file: !164, line: 353, baseType: !"_ZTS10int128v2_t", size: 256, align: 8)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v32_t", file: !164, line: 183, size: 256, align: 8, elements: !301, identifier: "_ZTS10uint8v32_t")
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint8v32_t", file: !164, line: 183, baseType: !303, size: 256, align: 8)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, align: 8, elements: !170)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v16_t", file: !164, line: 190, size: 256, align: 8, elements: !305, identifier: "_ZTS11uint16v16_t")
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11uint16v16_t", file: !164, line: 190, baseType: !307, size: 256, align: 16)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, align: 16, elements: !229)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v8_t", file: !164, line: 196, size: 256, align: 8, elements: !309, identifier: "_ZTS10uint32v8_t")
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint32v8_t", file: !164, line: 196, baseType: !311, size: 256, align: 32)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, align: 32, elements: !235)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v4_t", file: !164, line: 201, size: 256, align: 8, elements: !313, identifier: "_ZTS10uint64v4_t")
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint64v4_t", file: !164, line: 201, baseType: !315, size: 256, align: 64)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, align: 64, elements: !157)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v2_t", file: !164, line: 206, size: 256, align: 8, elements: !317, identifier: "_ZTS11uint128v2_t")
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11uint128v2_t", file: !164, line: 206, baseType: !319, size: 256, align: 128)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, align: 128, elements: !245)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "float32v8_t", file: !164, line: 243, size: 256, align: 8, elements: !321, identifier: "_ZTS11float32v8_t")
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11float32v8_t", file: !164, line: 243, baseType: !323, size: 256, align: 32)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, align: 32, elements: !235)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "float64v4_t", file: !164, line: 248, size: 256, align: 8, elements: !325, identifier: "_ZTS11float64v4_t")
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11float64v4_t", file: !164, line: 248, baseType: !327, size: 256, align: 64)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, align: 64, elements: !157)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "int8v32_t", file: !164, line: 214, size: 256, align: 8, elements: !329, identifier: "_ZTS9int8v32_t")
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int8v32_t", file: !164, line: 214, baseType: !331, size: 256, align: 8)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 256, align: 8, elements: !170)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "int16v16_t", file: !164, line: 221, size: 256, align: 8, elements: !333, identifier: "_ZTS10int16v16_t")
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10int16v16_t", file: !164, line: 221, baseType: !335, size: 256, align: 16)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 256, align: 16, elements: !229)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "int32v8_t", file: !164, line: 227, size: 256, align: 8, elements: !337, identifier: "_ZTS9int32v8_t")
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int32v8_t", file: !164, line: 227, baseType: !339, size: 256, align: 32)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 256, align: 32, elements: !235)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "int64v4_t", file: !164, line: 232, size: 256, align: 8, elements: !341, identifier: "_ZTS9int64v4_t")
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int64v4_t", file: !164, line: 232, baseType: !343, size: 256, align: 64)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 256, align: 64, elements: !157)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "int128v2_t", file: !164, line: 237, size: 256, align: 8, elements: !345, identifier: "_ZTS10int128v2_t")
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10int128v2_t", file: !164, line: 237, baseType: !347, size: 256, align: 128)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 256, align: 128, elements: !245)
!348 = !DICompositeType(tag: DW_TAG_union_type, name: "vec512_t", file: !164, line: 359, size: 512, align: 8, elements: !349, identifier: "_ZTS8vec512_t")
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !"_ZTS8vec512_t", file: !164, line: 360, baseType: !"_ZTS10uint8v64_t", size: 512, align: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !"_ZTS8vec512_t", file: !164, line: 361, baseType: !"_ZTS11uint16v32_t", size: 512, align: 8)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !"_ZTS8vec512_t", file: !164, line: 362, baseType: !"_ZTS11uint32v16_t", size: 512, align: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !"_ZTS8vec512_t", file: !164, line: 363, baseType: !"_ZTS10uint64v8_t", size: 512, align: 8)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !"_ZTS8vec512_t", file: !164, line: 364, baseType: !"_ZTS11uint128v4_t", size: 512, align: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !"_ZTS8vec512_t", file: !164, line: 365, baseType: !"_ZTS12float32v16_t", size: 512, align: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !"_ZTS8vec512_t", file: !164, line: 366, baseType: !"_ZTS11float64v8_t", size: 512, align: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !"_ZTS8vec512_t", file: !164, line: 368, baseType: !"_ZTS9int8v64_t", size: 512, align: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !"_ZTS8vec512_t", file: !164, line: 369, baseType: !"_ZTS10int16v32_t", size: 512, align: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !"_ZTS8vec512_t", file: !164, line: 370, baseType: !"_ZTS10int32v16_t", size: 512, align: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !"_ZTS8vec512_t", file: !164, line: 371, baseType: !"_ZTS9int64v8_t", size: 512, align: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !"_ZTS8vec512_t", file: !164, line: 372, baseType: !"_ZTS10int128v4_t", size: 512, align: 8)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v64_t", file: !164, line: 184, size: 512, align: 8, elements: !363, identifier: "_ZTS10uint8v64_t")
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint8v64_t", file: !164, line: 184, baseType: !365, size: 512, align: 8)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 512, align: 8, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v32_t", file: !164, line: 191, size: 512, align: 8, elements: !369, identifier: "_ZTS11uint16v32_t")
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11uint16v32_t", file: !164, line: 191, baseType: !371, size: 512, align: 16)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, align: 16, elements: !170)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v16_t", file: !164, line: 197, size: 512, align: 8, elements: !373, identifier: "_ZTS11uint32v16_t")
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11uint32v16_t", file: !164, line: 197, baseType: !375, size: 512, align: 32)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, align: 32, elements: !229)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v8_t", file: !164, line: 202, size: 512, align: 8, elements: !377, identifier: "_ZTS10uint64v8_t")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint64v8_t", file: !164, line: 202, baseType: !379, size: 512, align: 64)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 512, align: 64, elements: !235)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v4_t", file: !164, line: 207, size: 512, align: 8, elements: !381, identifier: "_ZTS11uint128v4_t")
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11uint128v4_t", file: !164, line: 207, baseType: !383, size: 512, align: 128)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 512, align: 128, elements: !157)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "float32v16_t", file: !164, line: 244, size: 512, align: 8, elements: !385, identifier: "_ZTS12float32v16_t")
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS12float32v16_t", file: !164, line: 244, baseType: !387, size: 512, align: 32)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 512, align: 32, elements: !229)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "float64v8_t", file: !164, line: 249, size: 512, align: 8, elements: !389, identifier: "_ZTS11float64v8_t")
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11float64v8_t", file: !164, line: 249, baseType: !391, size: 512, align: 64)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 512, align: 64, elements: !235)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "int8v64_t", file: !164, line: 215, size: 512, align: 8, elements: !393, identifier: "_ZTS9int8v64_t")
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int8v64_t", file: !164, line: 215, baseType: !395, size: 512, align: 8)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 512, align: 8, elements: !366)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "int16v32_t", file: !164, line: 222, size: 512, align: 8, elements: !397, identifier: "_ZTS10int16v32_t")
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10int16v32_t", file: !164, line: 222, baseType: !399, size: 512, align: 16)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 512, align: 16, elements: !170)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "int32v16_t", file: !164, line: 228, size: 512, align: 8, elements: !401, identifier: "_ZTS10int32v16_t")
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10int32v16_t", file: !164, line: 228, baseType: !403, size: 512, align: 32)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 512, align: 32, elements: !229)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "int64v8_t", file: !164, line: 233, size: 512, align: 8, elements: !405, identifier: "_ZTS9int64v8_t")
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int64v8_t", file: !164, line: 233, baseType: !407, size: 512, align: 64)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 512, align: 64, elements: !235)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "int128v4_t", file: !164, line: 238, size: 512, align: 8, elements: !409, identifier: "_ZTS10int128v4_t")
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10int128v4_t", file: !164, line: 238, baseType: !411, size: 512, align: 128)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 512, align: 128, elements: !157)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArithFlags", file: !25, line: 402, size: 128, align: 64, elements: !413, identifier: "_ZTS10ArithFlags")
!413 = !{!414, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !"_ZTS10ArithFlags", file: !25, line: 404, baseType: !415, size: 8, align: 8)
!415 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !"_ZTS10ArithFlags", file: !25, line: 405, baseType: !60, size: 8, align: 8, offset: 8)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !"_ZTS10ArithFlags", file: !25, line: 406, baseType: !415, size: 8, align: 8, offset: 16)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !"_ZTS10ArithFlags", file: !25, line: 407, baseType: !60, size: 8, align: 8, offset: 24)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !"_ZTS10ArithFlags", file: !25, line: 408, baseType: !415, size: 8, align: 8, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !"_ZTS10ArithFlags", file: !25, line: 409, baseType: !60, size: 8, align: 8, offset: 40)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !"_ZTS10ArithFlags", file: !25, line: 410, baseType: !415, size: 8, align: 8, offset: 48)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !"_ZTS10ArithFlags", file: !25, line: 411, baseType: !60, size: 8, align: 8, offset: 56)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !"_ZTS10ArithFlags", file: !25, line: 412, baseType: !415, size: 8, align: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !"_ZTS10ArithFlags", file: !25, line: 413, baseType: !60, size: 8, align: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !"_ZTS10ArithFlags", file: !25, line: 414, baseType: !415, size: 8, align: 8, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !"_ZTS10ArithFlags", file: !25, line: 415, baseType: !60, size: 8, align: 8, offset: 88)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !"_ZTS10ArithFlags", file: !25, line: 416, baseType: !415, size: 8, align: 8, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !"_ZTS10ArithFlags", file: !25, line: 417, baseType: !60, size: 8, align: 8, offset: 104)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !"_ZTS10ArithFlags", file: !25, line: 418, baseType: !415, size: 8, align: 8, offset: 112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !"_ZTS10ArithFlags", file: !25, line: 419, baseType: !415, size: 8, align: 8, offset: 120)
!431 = !DICompositeType(tag: DW_TAG_union_type, name: "Flags", file: !25, line: 366, size: 64, align: 64, elements: !432, identifier: "_ZTS5Flags")
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !"_ZTS5Flags", file: !25, line: 367, baseType: !194, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS5Flags", file: !25, line: 368, baseType: !"_ZTSN5FlagsUt_E", size: 64, align: 8)
!435 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS5Flags", file: !25, line: 368, size: 64, align: 8, elements: !436, identifier: "_ZTSN5FlagsUt_E")
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 369, baseType: !6, size: 1, align: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_1", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 370, baseType: !6, size: 1, align: 32, offset: 1)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 371, baseType: !6, size: 1, align: 32, offset: 2)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0a", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 372, baseType: !6, size: 1, align: 32, offset: 3)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 374, baseType: !6, size: 1, align: 32, offset: 4)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0b", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 375, baseType: !6, size: 1, align: 32, offset: 5)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 376, baseType: !6, size: 1, align: 32, offset: 6)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 377, baseType: !6, size: 1, align: 32, offset: 7)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tf", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 379, baseType: !6, size: 1, align: 32, offset: 8)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_if", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 380, baseType: !6, size: 1, align: 32, offset: 9)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 381, baseType: !6, size: 1, align: 32, offset: 10)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 382, baseType: !6, size: 1, align: 32, offset: 11)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "iopl", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 384, baseType: !6, size: 2, align: 32, offset: 12)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nt", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 385, baseType: !6, size: 1, align: 32, offset: 14)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0c", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 386, baseType: !6, size: 1, align: 32, offset: 15)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 388, baseType: !6, size: 1, align: 32, offset: 16)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 389, baseType: !6, size: 1, align: 32, offset: 17)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 390, baseType: !6, size: 1, align: 32, offset: 18)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 391, baseType: !6, size: 1, align: 32, offset: 19)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 393, baseType: !6, size: 1, align: 32, offset: 20)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 394, baseType: !6, size: 1, align: 32, offset: 21)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_eflags", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 395, baseType: !6, size: 10, align: 32, offset: 22)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_rflags", scope: !"_ZTSN5FlagsUt_E", file: !25, line: 396, baseType: !6, size: 32, align: 32, offset: 32)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "Segments", file: !25, line: 451, size: 192, align: 64, elements: !461, identifier: "_ZTS8Segments")
!461 = !{!462, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !"_ZTS8Segments", file: !25, line: 452, baseType: !463, size: 16, align: 16)
!463 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !"_ZTS8Segments", file: !25, line: 453, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 16)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !"_ZTS8Segments", file: !25, line: 454, baseType: !463, size: 16, align: 16, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !"_ZTS8Segments", file: !25, line: 455, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 48)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !"_ZTS8Segments", file: !25, line: 456, baseType: !463, size: 16, align: 16, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !"_ZTS8Segments", file: !25, line: 457, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !"_ZTS8Segments", file: !25, line: 458, baseType: !463, size: 16, align: 16, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !"_ZTS8Segments", file: !25, line: 459, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 112)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !"_ZTS8Segments", file: !25, line: 460, baseType: !463, size: 16, align: 16, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !"_ZTS8Segments", file: !25, line: 461, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 144)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !"_ZTS8Segments", file: !25, line: 462, baseType: !463, size: 16, align: 16, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !"_ZTS8Segments", file: !25, line: 463, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 176)
!475 = !DICompositeType(tag: DW_TAG_union_type, name: "SegmentSelector", file: !25, line: 76, size: 16, align: 8, elements: !476, identifier: "_ZTS15SegmentSelector")
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !"_ZTS15SegmentSelector", file: !25, line: 77, baseType: !26, size: 16, align: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS15SegmentSelector", file: !25, line: 78, baseType: !"_ZTSN15SegmentSelectorUt_E", size: 16, align: 8)
!479 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS15SegmentSelector", file: !25, line: 78, size: 16, align: 8, elements: !480, identifier: "_ZTSN15SegmentSelectorUt_E")
!480 = !{!481, !482, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rpi", scope: !"_ZTSN15SegmentSelectorUt_E", file: !25, line: 79, baseType: !"_ZTS21RequestPrivilegeLevel", size: 2, align: 16)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !"_ZTSN15SegmentSelectorUt_E", file: !25, line: 80, baseType: !"_ZTS14TableIndicator", size: 1, align: 16, offset: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !"_ZTSN15SegmentSelectorUt_E", file: !25, line: 81, baseType: !26, size: 13, align: 16, offset: 3)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "AddressSpace", file: !25, line: 654, size: 768, align: 64, elements: !485, identifier: "_ZTS12AddressSpace")
!485 = !{!486, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !"_ZTS12AddressSpace", file: !25, line: 655, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ss_base", scope: !"_ZTS12AddressSpace", file: !25, line: 656, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !"_ZTS12AddressSpace", file: !25, line: 657, baseType: !487, size: 64, align: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "es_base", scope: !"_ZTS12AddressSpace", file: !25, line: 658, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !"_ZTS12AddressSpace", file: !25, line: 659, baseType: !487, size: 64, align: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gs_base", scope: !"_ZTS12AddressSpace", file: !25, line: 660, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !"_ZTS12AddressSpace", file: !25, line: 661, baseType: !487, size: 64, align: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fs_base", scope: !"_ZTS12AddressSpace", file: !25, line: 662, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !"_ZTS12AddressSpace", file: !25, line: 663, baseType: !487, size: 64, align: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ds_base", scope: !"_ZTS12AddressSpace", file: !25, line: 664, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !"_ZTS12AddressSpace", file: !25, line: 665, baseType: !487, size: 64, align: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "cs_base", scope: !"_ZTS12AddressSpace", file: !25, line: 666, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 704)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "Reg", file: !25, line: 610, size: 64, align: 8, elements: !500, identifier: "_ZTS3Reg")
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS3Reg", file: !25, line: 611, baseType: !"_ZTSN3RegUt_E", size: 64, align: 64)
!502 = !DICompositeType(tag: DW_TAG_union_type, scope: !"_ZTS3Reg", file: !25, line: 611, size: 64, align: 64, elements: !503, identifier: "_ZTSN3RegUt_E")
!503 = !{!504, !505, !506, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !"_ZTSN3RegUt_E", file: !25, line: 615, baseType: !"_ZTSN3RegUt_Ut_E", size: 16, align: 8)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !"_ZTSN3RegUt_E", file: !25, line: 616, baseType: !26, size: 16, align: 16)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !"_ZTSN3RegUt_E", file: !25, line: 617, baseType: !6, size: 32, align: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !"_ZTSN3RegUt_E", file: !25, line: 618, baseType: !194, size: 64, align: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTSN3RegUt_E", file: !25, line: 612, size: 16, align: 8, elements: !509, identifier: "_ZTSN3RegUt_Ut_E")
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !"_ZTSN3RegUt_Ut_E", file: !25, line: 613, baseType: !60, size: 8, align: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !"_ZTSN3RegUt_Ut_E", file: !25, line: 614, baseType: !60, size: 8, align: 8, offset: 8)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "GPR", file: !25, line: 677, size: 2176, align: 64, elements: !513, identifier: "_ZTS3GPR")
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !"_ZTS3GPR", file: !25, line: 679, baseType: !487, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !"_ZTS3GPR", file: !25, line: 680, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !"_ZTS3GPR", file: !25, line: 681, baseType: !487, size: 64, align: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !"_ZTS3GPR", file: !25, line: 682, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !"_ZTS3GPR", file: !25, line: 683, baseType: !487, size: 64, align: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !"_ZTS3GPR", file: !25, line: 684, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !"_ZTS3GPR", file: !25, line: 685, baseType: !487, size: 64, align: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !"_ZTS3GPR", file: !25, line: 686, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !"_ZTS3GPR", file: !25, line: 687, baseType: !487, size: 64, align: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !"_ZTS3GPR", file: !25, line: 688, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !"_ZTS3GPR", file: !25, line: 689, baseType: !487, size: 64, align: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !"_ZTS3GPR", file: !25, line: 690, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !"_ZTS3GPR", file: !25, line: 691, baseType: !487, size: 64, align: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !"_ZTS3GPR", file: !25, line: 692, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !"_ZTS3GPR", file: !25, line: 693, baseType: !487, size: 64, align: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !"_ZTS3GPR", file: !25, line: 694, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !"_ZTS3GPR", file: !25, line: 695, baseType: !487, size: 64, align: 64, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !"_ZTS3GPR", file: !25, line: 696, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 1088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !"_ZTS3GPR", file: !25, line: 697, baseType: !487, size: 64, align: 64, offset: 1152)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !"_ZTS3GPR", file: !25, line: 698, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 1216)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_10", scope: !"_ZTS3GPR", file: !25, line: 699, baseType: !487, size: 64, align: 64, offset: 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !"_ZTS3GPR", file: !25, line: 700, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 1344)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_11", scope: !"_ZTS3GPR", file: !25, line: 701, baseType: !487, size: 64, align: 64, offset: 1408)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !"_ZTS3GPR", file: !25, line: 702, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 1472)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_12", scope: !"_ZTS3GPR", file: !25, line: 703, baseType: !487, size: 64, align: 64, offset: 1536)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !"_ZTS3GPR", file: !25, line: 704, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 1600)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_13", scope: !"_ZTS3GPR", file: !25, line: 705, baseType: !487, size: 64, align: 64, offset: 1664)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !"_ZTS3GPR", file: !25, line: 706, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 1728)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_14", scope: !"_ZTS3GPR", file: !25, line: 707, baseType: !487, size: 64, align: 64, offset: 1792)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !"_ZTS3GPR", file: !25, line: 708, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 1856)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_15", scope: !"_ZTS3GPR", file: !25, line: 709, baseType: !487, size: 64, align: 64, offset: 1920)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !"_ZTS3GPR", file: !25, line: 710, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 1984)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_16", scope: !"_ZTS3GPR", file: !25, line: 711, baseType: !487, size: 64, align: 64, offset: 2048)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !"_ZTS3GPR", file: !25, line: 714, baseType: !"_ZTS3Reg", size: 64, align: 8, offset: 2112)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "X87Stack", file: !25, line: 719, size: 1024, align: 64, elements: !549, identifier: "_ZTS8X87Stack")
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS8X87Stack", file: !25, line: 723, baseType: !551, size: 1024, align: 64)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !"_ZTSN8X87StackUt_E", size: 1024, align: 64, elements: !235)
!552 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS8X87Stack", file: !25, line: 720, size: 128, align: 64, elements: !553, identifier: "_ZTSN8X87StackUt_E")
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !"_ZTSN8X87StackUt_E", file: !25, line: 721, baseType: !194, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !"_ZTSN8X87StackUt_E", file: !25, line: 722, baseType: !556, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64_t", file: !164, line: 61, baseType: !256)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "MMX", file: !25, line: 729, size: 1024, align: 64, elements: !558, identifier: "_ZTS3MMX")
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS3MMX", file: !25, line: 733, baseType: !560, size: 1024, align: 64)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !"_ZTSN3MMXUt_E", size: 1024, align: 64, elements: !235)
!561 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS3MMX", file: !25, line: 730, size: 128, align: 64, elements: !562, identifier: "_ZTSN3MMXUt_E")
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !"_ZTSN3MMXUt_E", file: !25, line: 731, baseType: !194, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !"_ZTSN3MMXUt_E", file: !25, line: 732, baseType: !"_ZTS7vec64_t", size: 64, align: 8, offset: 64)
!565 = !DICompositeType(tag: DW_TAG_union_type, name: "vec64_t", file: !164, line: 294, size: 64, align: 8, elements: !566, identifier: "_ZTS7vec64_t")
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !"_ZTS7vec64_t", file: !164, line: 298, baseType: !"_ZTS10uint64v1_t", size: 64, align: 8)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !"_ZTS7vec64_t", file: !164, line: 300, baseType: !"_ZTS9uint8v8_t", size: 64, align: 8)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !"_ZTS7vec64_t", file: !164, line: 301, baseType: !"_ZTS10uint16v4_t", size: 64, align: 8)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !"_ZTS7vec64_t", file: !164, line: 302, baseType: !"_ZTS10uint32v2_t", size: 64, align: 8)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !"_ZTS7vec64_t", file: !164, line: 303, baseType: !"_ZTS11float32v2_t", size: 64, align: 8)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !"_ZTS7vec64_t", file: !164, line: 304, baseType: !"_ZTS11float64v1_t", size: 64, align: 8)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !"_ZTS7vec64_t", file: !164, line: 306, baseType: !"_ZTS8int8v8_t", size: 64, align: 8)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !"_ZTS7vec64_t", file: !164, line: 307, baseType: !"_ZTS9int16v4_t", size: 64, align: 8)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !"_ZTS7vec64_t", file: !164, line: 308, baseType: !"_ZTS9int32v2_t", size: 64, align: 8)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !"_ZTS7vec64_t", file: !164, line: 309, baseType: !"_ZTS9int64v1_t", size: 64, align: 8)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v1_t", file: !164, line: 199, size: 64, align: 8, elements: !578, identifier: "_ZTS10uint64v1_t")
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint64v1_t", file: !164, line: 199, baseType: !580, size: 64, align: 64)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, align: 64, elements: !223)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v8_t", file: !164, line: 181, size: 64, align: 8, elements: !582, identifier: "_ZTS9uint8v8_t")
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9uint8v8_t", file: !164, line: 181, baseType: !584, size: 64, align: 8)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, align: 8, elements: !235)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v4_t", file: !164, line: 188, size: 64, align: 8, elements: !586, identifier: "_ZTS10uint16v4_t")
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint16v4_t", file: !164, line: 188, baseType: !588, size: 64, align: 16)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, align: 16, elements: !157)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v2_t", file: !164, line: 194, size: 64, align: 8, elements: !590, identifier: "_ZTS10uint32v2_t")
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS10uint32v2_t", file: !164, line: 194, baseType: !592, size: 64, align: 32)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, align: 32, elements: !245)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "float32v2_t", file: !164, line: 241, size: 64, align: 8, elements: !594, identifier: "_ZTS11float32v2_t")
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11float32v2_t", file: !164, line: 241, baseType: !596, size: 64, align: 32)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 64, align: 32, elements: !245)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "float64v1_t", file: !164, line: 246, size: 64, align: 8, elements: !598, identifier: "_ZTS11float64v1_t")
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS11float64v1_t", file: !164, line: 246, baseType: !600, size: 64, align: 64)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 64, align: 64, elements: !223)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "int8v8_t", file: !164, line: 212, size: 64, align: 8, elements: !602, identifier: "_ZTS8int8v8_t")
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS8int8v8_t", file: !164, line: 212, baseType: !604, size: 64, align: 8)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 64, align: 8, elements: !235)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "int16v4_t", file: !164, line: 219, size: 64, align: 8, elements: !606, identifier: "_ZTS9int16v4_t")
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int16v4_t", file: !164, line: 219, baseType: !608, size: 64, align: 16)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 64, align: 16, elements: !157)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "int32v2_t", file: !164, line: 225, size: 64, align: 8, elements: !610, identifier: "_ZTS9int32v2_t")
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int32v2_t", file: !164, line: 225, baseType: !612, size: 64, align: 32)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 64, align: 32, elements: !245)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "int64v1_t", file: !164, line: 230, size: 64, align: 8, elements: !614, identifier: "_ZTS9int64v1_t")
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !"_ZTS9int64v1_t", file: !164, line: 230, baseType: !616, size: 64, align: 64)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 64, align: 64, elements: !223)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStatusFlags", file: !25, line: 332, size: 192, align: 8, elements: !618, identifier: "_ZTS14FPUStatusFlags")
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 333, baseType: !60, size: 8, align: 8)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 334, baseType: !60, size: 8, align: 8, offset: 8)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 335, baseType: !60, size: 8, align: 8, offset: 16)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 336, baseType: !60, size: 8, align: 8, offset: 24)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 337, baseType: !60, size: 8, align: 8, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 338, baseType: !60, size: 8, align: 8, offset: 40)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 339, baseType: !60, size: 8, align: 8, offset: 48)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 340, baseType: !60, size: 8, align: 8, offset: 56)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 342, baseType: !60, size: 8, align: 8, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 343, baseType: !60, size: 8, align: 8, offset: 72)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 345, baseType: !60, size: 8, align: 8, offset: 80)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 346, baseType: !60, size: 8, align: 8, offset: 88)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 348, baseType: !60, size: 8, align: 8, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 349, baseType: !60, size: 8, align: 8, offset: 104)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 351, baseType: !60, size: 8, align: 8, offset: 112)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 352, baseType: !60, size: 8, align: 8, offset: 120)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 354, baseType: !60, size: 8, align: 8, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 355, baseType: !60, size: 8, align: 8, offset: 136)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 357, baseType: !60, size: 8, align: 8, offset: 144)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 358, baseType: !60, size: 8, align: 8, offset: 152)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !"_ZTS14FPUStatusFlags", file: !25, line: 360, baseType: !640, size: 32, align: 8, offset: 160)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, align: 8, elements: !157)
!641 = !DICompositeType(tag: DW_TAG_union_type, name: "XCR0", file: !25, line: 424, size: 64, align: 8, elements: !642, identifier: "_ZTS4XCR0")
!642 = !{!643, !644, !645}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !"_ZTS4XCR0", file: !25, line: 425, baseType: !194, size: 64, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS4XCR0", file: !25, line: 427, baseType: !"_ZTSN4XCR0Ut_E", size: 64, align: 8)
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS4XCR0", file: !25, line: 433, baseType: !"_ZTSN4XCR0Ut0_E", size: 64, align: 8)
!646 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS4XCR0", file: !25, line: 427, size: 64, align: 8, elements: !647, identifier: "_ZTSN4XCR0Ut_E")
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !"_ZTSN4XCR0Ut_E", file: !25, line: 428, baseType: !6, size: 32, align: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !"_ZTSN4XCR0Ut_E", file: !25, line: 429, baseType: !6, size: 32, align: 32, offset: 32)
!650 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS4XCR0", file: !25, line: 433, size: 64, align: 8, elements: !651, identifier: "_ZTSN4XCR0Ut0_E")
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "x87_fpu_mmx", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 434, baseType: !194, size: 1, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 435, baseType: !194, size: 1, align: 64, offset: 1)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 436, baseType: !194, size: 1, align: 64, offset: 2)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bndreg", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 437, baseType: !194, size: 1, align: 64, offset: 3)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bndcsr", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 438, baseType: !194, size: 1, align: 64, offset: 4)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "opmask", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 439, baseType: !194, size: 1, align: 64, offset: 5)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "zmm_hi256", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 440, baseType: !194, size: 1, align: 64, offset: 6)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "hi16_zmm", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 441, baseType: !194, size: 1, align: 64, offset: 7)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 442, baseType: !194, size: 1, align: 64, offset: 8)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 443, baseType: !194, size: 53, align: 64, offset: 9)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "lwp", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 444, baseType: !194, size: 1, align: 64, offset: 62)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !"_ZTSN4XCR0Ut0_E", file: !25, line: 445, baseType: !194, size: 1, align: 64, offset: 63)
!664 = !DICompositeType(tag: DW_TAG_union_type, name: "FPU", file: !25, line: 314, size: 4096, align: 128, elements: !665, identifier: "_ZTS3FPU")
!665 = !{!666, !667, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !"_ZTS3FPU", file: !25, line: 317, baseType: !"_ZTSN3FPUUt_E", size: 4096, align: 8)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave32", scope: !"_ZTS3FPU", file: !25, line: 321, baseType: !"_ZTSN3FPUUt0_E", size: 4096, align: 8)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave64", scope: !"_ZTS3FPU", file: !25, line: 325, baseType: !"_ZTSN3FPUUt1_E", size: 4096, align: 8)
!669 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS3FPU", file: !25, line: 315, size: 4096, align: 8, elements: !670, identifier: "_ZTSN3FPUUt_E")
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !"_ZTSN3FPUUt_E", baseType: !"_ZTS8FpuFSAVE")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !"_ZTSN3FPUUt_E", file: !25, line: 316, baseType: !673, size: 2848, align: 8, offset: 1248)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2848, align: 8, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 356)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFSAVE", file: !25, line: 263, size: 1248, align: 8, elements: !677, identifier: "_ZTS8FpuFSAVE")
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !"_ZTS8FpuFSAVE", file: !25, line: 264, baseType: !"_ZTS14FPUControlWord", size: 16, align: 8)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !"_ZTS8FpuFSAVE", file: !25, line: 265, baseType: !26, size: 16, align: 16, offset: 16)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !"_ZTS8FpuFSAVE", file: !25, line: 266, baseType: !"_ZTS13FPUStatusWord", size: 16, align: 8, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !"_ZTS8FpuFSAVE", file: !25, line: 267, baseType: !26, size: 16, align: 16, offset: 48)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !"_ZTS8FpuFSAVE", file: !25, line: 268, baseType: !"_ZTS10FPUTagWord", size: 16, align: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !"_ZTS8FpuFSAVE", file: !25, line: 269, baseType: !26, size: 16, align: 16, offset: 80)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !"_ZTS8FpuFSAVE", file: !25, line: 270, baseType: !6, size: 32, align: 32, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !"_ZTS8FpuFSAVE", file: !25, line: 271, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !"_ZTS8FpuFSAVE", file: !25, line: 272, baseType: !26, size: 16, align: 16, offset: 144)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !"_ZTS8FpuFSAVE", file: !25, line: 273, baseType: !6, size: 32, align: 32, offset: 160)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !"_ZTS8FpuFSAVE", file: !25, line: 274, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd3", scope: !"_ZTS8FpuFSAVE", file: !25, line: 275, baseType: !26, size: 16, align: 16, offset: 208)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !"_ZTS8FpuFSAVE", file: !25, line: 276, baseType: !691, size: 1024, align: 8, offset: 224)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !"_ZTS12FPUStackElem", size: 1024, align: 8, elements: !235)
!692 = !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlWord", file: !25, line: 142, size: 16, align: 8, elements: !693, identifier: "_ZTS14FPUControlWord")
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !"_ZTS14FPUControlWord", file: !25, line: 143, baseType: !26, size: 16, align: 16)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS14FPUControlWord", file: !25, line: 144, baseType: !"_ZTSN14FPUControlWordUt_E", size: 16, align: 8)
!696 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS14FPUControlWord", file: !25, line: 144, size: 16, align: 8, elements: !697, identifier: "_ZTSN14FPUControlWordUt_E")
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 145, baseType: !26, size: 1, align: 16)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 146, baseType: !26, size: 1, align: 16, offset: 1)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 147, baseType: !26, size: 1, align: 16, offset: 2)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 148, baseType: !26, size: 1, align: 16, offset: 3)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 149, baseType: !26, size: 1, align: 16, offset: 4)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 150, baseType: !26, size: 1, align: 16, offset: 5)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 151, baseType: !26, size: 2, align: 16, offset: 6)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 152, baseType: !"_ZTS19FPUPrecisionControl", size: 2, align: 16, offset: 8)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 153, baseType: !"_ZTS18FPURoundingControl", size: 2, align: 16, offset: 10)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 154, baseType: !"_ZTS18FPUInfinityControl", size: 1, align: 16, offset: 12)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !"_ZTSN14FPUControlWordUt_E", file: !25, line: 155, baseType: !26, size: 3, align: 16, offset: 13)
!709 = !DICompositeType(tag: DW_TAG_union_type, name: "FPUStatusWord", file: !25, line: 100, size: 16, align: 8, elements: !710, identifier: "_ZTS13FPUStatusWord")
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !"_ZTS13FPUStatusWord", file: !25, line: 101, baseType: !26, size: 16, align: 16)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS13FPUStatusWord", file: !25, line: 102, baseType: !"_ZTSN13FPUStatusWordUt_E", size: 16, align: 8)
!713 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS13FPUStatusWord", file: !25, line: 102, size: 16, align: 8, elements: !714, identifier: "_ZTSN13FPUStatusWordUt_E")
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 103, baseType: !26, size: 1, align: 16)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 104, baseType: !26, size: 1, align: 16, offset: 1)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 105, baseType: !26, size: 1, align: 16, offset: 2)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 106, baseType: !26, size: 1, align: 16, offset: 3)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 107, baseType: !26, size: 1, align: 16, offset: 4)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 108, baseType: !26, size: 1, align: 16, offset: 5)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 109, baseType: !26, size: 1, align: 16, offset: 6)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 110, baseType: !26, size: 1, align: 16, offset: 7)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 111, baseType: !26, size: 1, align: 16, offset: 8)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 112, baseType: !26, size: 1, align: 16, offset: 9)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 113, baseType: !26, size: 1, align: 16, offset: 10)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 114, baseType: !26, size: 3, align: 16, offset: 11)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 115, baseType: !26, size: 1, align: 16, offset: 14)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !"_ZTSN13FPUStatusWordUt_E", file: !25, line: 116, baseType: !26, size: 1, align: 16, offset: 15)
!729 = !DICompositeType(tag: DW_TAG_union_type, name: "FPUTagWord", file: !25, line: 227, size: 16, align: 8, elements: !730, identifier: "_ZTS10FPUTagWord")
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !"_ZTS10FPUTagWord", file: !25, line: 228, baseType: !26, size: 16, align: 16)
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS10FPUTagWord", file: !25, line: 229, baseType: !"_ZTSN10FPUTagWordUt_E", size: 16, align: 8)
!733 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS10FPUTagWord", file: !25, line: 229, size: 16, align: 8, elements: !734, identifier: "_ZTSN10FPUTagWordUt_E")
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tag0", scope: !"_ZTSN10FPUTagWordUt_E", file: !25, line: 230, baseType: !"_ZTS6FPUTag", size: 2, align: 16)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "tag1", scope: !"_ZTSN10FPUTagWordUt_E", file: !25, line: 231, baseType: !"_ZTS6FPUTag", size: 2, align: 16, offset: 2)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tag2", scope: !"_ZTSN10FPUTagWordUt_E", file: !25, line: 232, baseType: !"_ZTS6FPUTag", size: 2, align: 16, offset: 4)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tag3", scope: !"_ZTSN10FPUTagWordUt_E", file: !25, line: 233, baseType: !"_ZTS6FPUTag", size: 2, align: 16, offset: 6)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tag4", scope: !"_ZTSN10FPUTagWordUt_E", file: !25, line: 234, baseType: !"_ZTS6FPUTag", size: 2, align: 16, offset: 8)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tag5", scope: !"_ZTSN10FPUTagWordUt_E", file: !25, line: 235, baseType: !"_ZTS6FPUTag", size: 2, align: 16, offset: 10)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tag6", scope: !"_ZTSN10FPUTagWordUt_E", file: !25, line: 236, baseType: !"_ZTS6FPUTag", size: 2, align: 16, offset: 12)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "tag7", scope: !"_ZTSN10FPUTagWordUt_E", file: !25, line: 237, baseType: !"_ZTS6FPUTag", size: 2, align: 16, offset: 14)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStackElem", file: !25, line: 162, size: 128, align: 8, elements: !744, identifier: "_ZTS12FPUStackElem")
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS12FPUStackElem", file: !25, line: 163, baseType: !"_ZTSN12FPUStackElemUt_E", size: 80, align: 8)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !"_ZTS12FPUStackElem", file: !25, line: 170, baseType: !747, size: 48, align: 8, offset: 80)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 48, align: 8, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 6)
!750 = !DICompositeType(tag: DW_TAG_union_type, scope: !"_ZTS12FPUStackElem", file: !25, line: 163, size: 80, align: 8, elements: !751, identifier: "_ZTSN12FPUStackElemUt_E")
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !"_ZTSN12FPUStackElemUt_E", file: !25, line: 164, baseType: !"_ZTS9float80_t", size: 80, align: 8)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTSN12FPUStackElemUt_E", file: !25, line: 165, baseType: !"_ZTSN12FPUStackElemUt_Ut_E", size: 80, align: 8)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "float80_t", file: !164, line: 65, size: 80, align: 8, elements: !755, identifier: "_ZTS9float80_t")
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !"_ZTS9float80_t", file: !164, line: 66, baseType: !757, size: 80, align: 8)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 80, align: 8, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 10)
!760 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTSN12FPUStackElemUt_E", file: !25, line: 165, size: 80, align: 8, elements: !761, identifier: "_ZTSN12FPUStackElemUt_Ut_E")
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !"_ZTSN12FPUStackElemUt_Ut_E", file: !25, line: 166, baseType: !194, size: 64, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "infinity", scope: !"_ZTSN12FPUStackElemUt_Ut_E", file: !25, line: 167, baseType: !26, size: 16, align: 16, offset: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS3FPU", file: !25, line: 319, size: 4096, align: 8, elements: !765, identifier: "_ZTSN3FPUUt0_E")
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !"_ZTSN3FPUUt0_E", baseType: !"_ZTS9FpuFXSAVE")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !"_ZTSN3FPUUt0_E", file: !25, line: 320, baseType: !768, size: 768, align: 8, offset: 3328)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 768, align: 8, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 96)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE", file: !25, line: 280, size: 3328, align: 8, elements: !772, identifier: "_ZTS9FpuFXSAVE")
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 281, baseType: !"_ZTS14FPUControlWord", size: 16, align: 8)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 282, baseType: !"_ZTS13FPUStatusWord", size: 16, align: 8, offset: 16)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 283, baseType: !"_ZTS18FPUAbridgedTagWord", size: 8, align: 8, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 284, baseType: !60, size: 8, align: 8, offset: 40)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 285, baseType: !26, size: 16, align: 16, offset: 48)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 286, baseType: !6, size: 32, align: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 287, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 288, baseType: !26, size: 16, align: 16, offset: 112)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 289, baseType: !6, size: 32, align: 32, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 290, baseType: !"_ZTS15SegmentSelector", size: 16, align: 8, offset: 160)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 291, baseType: !26, size: 16, align: 16, offset: 176)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 292, baseType: !"_ZTS16FPUControlStatus", size: 32, align: 8, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 293, baseType: !"_ZTS16FPUControlStatus", size: 32, align: 8, offset: 224)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 294, baseType: !691, size: 1024, align: 8, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !"_ZTS9FpuFXSAVE", file: !25, line: 295, baseType: !788, size: 2048, align: 8, offset: 1280)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !"_ZTS8vec128_t", size: 2048, align: 8, elements: !229)
!789 = !DICompositeType(tag: DW_TAG_union_type, name: "FPUAbridgedTagWord", file: !25, line: 245, size: 8, align: 8, elements: !790, identifier: "_ZTS18FPUAbridgedTagWord")
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !"_ZTS18FPUAbridgedTagWord", file: !25, line: 246, baseType: !60, size: 8, align: 8)
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS18FPUAbridgedTagWord", file: !25, line: 247, baseType: !"_ZTSN18FPUAbridgedTagWordUt_E", size: 8, align: 8)
!793 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS18FPUAbridgedTagWord", file: !25, line: 247, size: 8, align: 8, elements: !794, identifier: "_ZTSN18FPUAbridgedTagWordUt_E")
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !"_ZTSN18FPUAbridgedTagWordUt_E", file: !25, line: 248, baseType: !"_ZTS14FPUAbridgedTag", size: 1, align: 8)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !"_ZTSN18FPUAbridgedTagWordUt_E", file: !25, line: 249, baseType: !"_ZTS14FPUAbridgedTag", size: 1, align: 8, offset: 1)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !"_ZTSN18FPUAbridgedTagWordUt_E", file: !25, line: 250, baseType: !"_ZTS14FPUAbridgedTag", size: 1, align: 8, offset: 2)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !"_ZTSN18FPUAbridgedTagWordUt_E", file: !25, line: 251, baseType: !"_ZTS14FPUAbridgedTag", size: 1, align: 8, offset: 3)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !"_ZTSN18FPUAbridgedTagWordUt_E", file: !25, line: 252, baseType: !"_ZTS14FPUAbridgedTag", size: 1, align: 8, offset: 4)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !"_ZTSN18FPUAbridgedTagWordUt_E", file: !25, line: 253, baseType: !"_ZTS14FPUAbridgedTag", size: 1, align: 8, offset: 5)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !"_ZTSN18FPUAbridgedTagWordUt_E", file: !25, line: 254, baseType: !"_ZTS14FPUAbridgedTag", size: 1, align: 8, offset: 6)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "r7", scope: !"_ZTSN18FPUAbridgedTagWordUt_E", file: !25, line: 255, baseType: !"_ZTS14FPUAbridgedTag", size: 1, align: 8, offset: 7)
!803 = !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlStatus", file: !25, line: 188, size: 32, align: 8, elements: !804, identifier: "_ZTS16FPUControlStatus")
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !"_ZTS16FPUControlStatus", file: !25, line: 189, baseType: !6, size: 32, align: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !"_ZTS16FPUControlStatus", file: !25, line: 190, baseType: !"_ZTSN16FPUControlStatusUt_E", size: 32, align: 8)
!807 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS16FPUControlStatus", file: !25, line: 190, size: 32, align: 8, elements: !808, identifier: "_ZTSN16FPUControlStatusUt_E")
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 191, baseType: !6, size: 1, align: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 192, baseType: !6, size: 1, align: 32, offset: 1)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 193, baseType: !6, size: 1, align: 32, offset: 2)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 194, baseType: !6, size: 1, align: 32, offset: 3)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 195, baseType: !6, size: 1, align: 32, offset: 4)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 196, baseType: !6, size: 1, align: 32, offset: 5)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "daz", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 197, baseType: !6, size: 1, align: 32, offset: 6)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 198, baseType: !6, size: 1, align: 32, offset: 7)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 199, baseType: !6, size: 1, align: 32, offset: 8)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 200, baseType: !6, size: 1, align: 32, offset: 9)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 201, baseType: !6, size: 1, align: 32, offset: 10)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 202, baseType: !6, size: 1, align: 32, offset: 11)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 203, baseType: !6, size: 1, align: 32, offset: 12)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rn", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 204, baseType: !6, size: 1, align: 32, offset: 13)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 205, baseType: !6, size: 1, align: 32, offset: 14)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 206, baseType: !6, size: 1, align: 32, offset: 15)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !"_ZTSN16FPUControlStatusUt_E", file: !25, line: 207, baseType: !6, size: 16, align: 32, offset: 16)
!826 = !DICompositeType(tag: DW_TAG_structure_type, scope: !"_ZTS3FPU", file: !25, line: 323, size: 4096, align: 8, elements: !827, identifier: "_ZTSN3FPUUt1_E")
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !"_ZTSN3FPUUt1_E", baseType: !"_ZTS11FpuFXSAVE64")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !"_ZTSN3FPUUt1_E", file: !25, line: 324, baseType: !768, size: 768, align: 8, offset: 3328)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE64", file: !25, line: 299, size: 3328, align: 8, elements: !831, identifier: "_ZTS11FpuFXSAVE64")
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 300, baseType: !"_ZTS14FPUControlWord", size: 16, align: 8)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 301, baseType: !"_ZTS13FPUStatusWord", size: 16, align: 8, offset: 16)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 302, baseType: !"_ZTS18FPUAbridgedTagWord", size: 8, align: 8, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 303, baseType: !60, size: 8, align: 8, offset: 40)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 304, baseType: !26, size: 16, align: 16, offset: 48)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 305, baseType: !194, size: 64, align: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 306, baseType: !194, size: 64, align: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 307, baseType: !"_ZTS16FPUControlStatus", size: 32, align: 8, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 308, baseType: !"_ZTS16FPUControlStatus", size: 32, align: 8, offset: 224)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 309, baseType: !691, size: 1024, align: 8, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !"_ZTS11FpuFXSAVE64", file: !25, line: 310, baseType: !788, size: 2048, align: 8, offset: 1280)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentCaches", file: !25, line: 468, size: 768, align: 64, elements: !844, identifier: "_ZTS13SegmentCaches")
!844 = !{!845, !846, !847, !848, !849, !850}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !"_ZTS13SegmentCaches", file: !25, line: 469, baseType: !"_ZTS13SegmentShadow", size: 128, align: 8)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !"_ZTS13SegmentCaches", file: !25, line: 470, baseType: !"_ZTS13SegmentShadow", size: 128, align: 8, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !"_ZTS13SegmentCaches", file: !25, line: 471, baseType: !"_ZTS13SegmentShadow", size: 128, align: 8, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !"_ZTS13SegmentCaches", file: !25, line: 472, baseType: !"_ZTS13SegmentShadow", size: 128, align: 8, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !"_ZTS13SegmentCaches", file: !25, line: 473, baseType: !"_ZTS13SegmentShadow", size: 128, align: 8, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !"_ZTS13SegmentCaches", file: !25, line: 474, baseType: !"_ZTS13SegmentShadow", size: 128, align: 8, offset: 640)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentShadow", file: !25, line: 88, size: 128, align: 8, elements: !852, identifier: "_ZTS13SegmentShadow")
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !"_ZTS13SegmentShadow", file: !25, line: 92, baseType: !"_ZTSN13SegmentShadowUt_E", size: 64, align: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !"_ZTS13SegmentShadow", file: !25, line: 93, baseType: !6, size: 32, align: 32, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !"_ZTS13SegmentShadow", file: !25, line: 94, baseType: !6, size: 32, align: 32, offset: 96)
!856 = !DICompositeType(tag: DW_TAG_union_type, scope: !"_ZTS13SegmentShadow", file: !25, line: 89, size: 64, align: 64, elements: !857, identifier: "_ZTSN13SegmentShadowUt_E")
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !"_ZTSN13SegmentShadowUt_E", file: !25, line: 90, baseType: !6, size: 32, align: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !"_ZTSN13SegmentShadowUt_E", file: !25, line: 91, baseType: !194, size: 64, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!862 = !{!863, !870}
!863 = !DISubprogram(name: "__remill_basic_block", scope: !2, file: !2, line: 52, type: !864, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, variables: !190)
!864 = !DISubroutineType(types: !865)
!865 = !{!866, !867, !868, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS6Memory", size: 64, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !"_ZTS5State")
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !164, line: 42, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr64_t", file: !164, line: 41, baseType: !194)
!870 = !DISubprogram(name: "__remill_intrinsics", scope: !871, file: !871, line: 35, type: !872, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, variables: !190)
!871 = !DIFile(filename: "/home/weiwang99/mcsema-ve/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!872 = !DISubroutineType(types: !873)
!873 = !{null}
!874 = !{!875, !879, !881, !883, !885, !889, !894, !896, !902, !906, !910, !920, !924, !928, !932, !936, !941, !945, !949, !953, !957, !965, !969, !973, !975, !979, !983, !987, !993, !997, !1001, !1003, !1011, !1015, !1018, !1020, !1024, !1028, !1032, !1036, !1041, !1045, !1050, !1051, !1052, !1053, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1068, !1070, !1072, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1095, !1099, !1101, !1103, !1108, !1110, !1112, !1114, !1116, !1118, !1120, !1123, !1125, !1127, !1131, !1135, !1137, !1139, !1141, !1143, !1145, !1147, !1149, !1151, !1153, !1155, !1159, !1163, !1165, !1167, !1169, !1171, !1173, !1175, !1177, !1179, !1181, !1183, !1185, !1187, !1189, !1191, !1193, !1197, !1201, !1205, !1207, !1209, !1211, !1213, !1215, !1217, !1219, !1221, !1223, !1227, !1231, !1235, !1237, !1239, !1241, !1245, !1249, !1253, !1255, !1257, !1259, !1261, !1263, !1265, !1267, !1269, !1271, !1273, !1275, !1277, !1281, !1285, !1289, !1291, !1293, !1295, !1297, !1301, !1305, !1307, !1309, !1311, !1313, !1315, !1317, !1321, !1325, !1327, !1329, !1331, !1333, !1337, !1341, !1345, !1347, !1349, !1351, !1353, !1355, !1357, !1361, !1365, !1369, !1371, !1375, !1379, !1381, !1383, !1385, !1387, !1389, !1391, !1394, !1396, !1400, !1406, !1411, !1415, !1419, !1423, !1427, !1429, !1431, !1435, !1441, !1445, !1451, !1457, !1459, !1463, !1467, !1471, !1475, !1481, !1483, !1487, !1491, !1495, !1497, !1501, !1505, !1509, !1511, !1513, !1517, !1524, !1528, !1532, !1536, !1538, !1544, !1546, !1552, !1556, !1560, !1564, !1568, !1572, !1576, !1578, !1580, !1584, !1588, !1592, !1594, !1598, !1602, !1604, !1606, !1610, !1614, !1618, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1638, !1640, !1642, !1644, !1646, !1648, !1650, !1652, !1654, !1656, !1657, !1658, !1659, !1660, !1662, !1664, !1666, !1668, !1670, !1672, !1674, !1676, !1678, !1680, !1682, !1684, !1685, !1689, !1694, !1697, !1699, !1701, !1703, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !1721, !1723, !1725, !1728, !1733, !1737, !1739, !1741, !1743, !1745, !1752, !1756, !1760, !1764, !1768, !1772, !1777, !1781, !1783, !1787, !1793, !1797, !1802, !1804, !1806, !1810, !1814, !1818, !1820, !1822, !1824, !1826, !1830, !1832, !1834, !1838, !1842, !1846, !1850, !1854, !1856, !1858, !1862, !1866, !1870, !1874, !1876, !1878, !1882, !1886, !1887, !1888, !1889, !1890, !1891, !1893, !1895, !1898, !1903, !1905, !1911, !1913, !1915, !1917, !1922, !1924, !1930, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!875 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !876, entity: !878, line: 56)
!876 = !DINamespace(name: "__gnu_debug", scope: null, file: !877, line: 54)
!877 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/debug/debug.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!878 = !DINamespace(name: "__debug", scope: !81, file: !877, line: 48)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !880, line: 118)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !67, line: 101, baseType: !"_ZTS5div_t")
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !882, line: 119)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !67, line: 109, baseType: !"_ZTS6ldiv_t")
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !884, line: 121)
!884 = !DISubprogram(name: "abort", scope: !67, file: !67, line: 515, type: !872, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !886, line: 122)
!886 = !DISubprogram(name: "abs", scope: !67, file: !67, line: 774, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!887 = !DISubroutineType(types: !888)
!888 = !{!138, !138}
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !890, line: 123)
!890 = !DISubprogram(name: "atexit", scope: !67, file: !67, line: 519, type: !891, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!891 = !DISubroutineType(types: !892)
!892 = !{!138, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64, align: 64)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !895, line: 126)
!895 = !DISubprogram(name: "at_quick_exit", scope: !67, file: !67, line: 524, type: !891, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !897, line: 129)
!897 = !DISubprogram(name: "atof", scope: !67, file: !67, line: 144, type: !898, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DISubroutineType(types: !899)
!899 = !{!256, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64, align: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !903, line: 130)
!903 = !DISubprogram(name: "atoi", scope: !67, file: !67, line: 147, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!138, !900}
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !907, line: 131)
!907 = !DISubprogram(name: "atol", scope: !67, file: !67, line: 150, type: !908, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!908 = !DISubroutineType(types: !909)
!909 = !{!71, !900}
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !911, line: 132)
!911 = !DISubprogram(name: "bsearch", scope: !67, file: !67, line: 754, type: !912, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!912 = !DISubroutineType(types: !913)
!913 = !{!85, !860, !860, !914, !914, !916}
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !915, line: 62, baseType: !195)
!915 = !DIFile(filename: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/libraries/llvm/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !67, line: 741, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64, align: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!138, !860, !860}
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !921, line: 133)
!921 = !DISubprogram(name: "calloc", scope: !67, file: !67, line: 468, type: !922, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DISubroutineType(types: !923)
!923 = !{!85, !914, !914}
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !925, line: 134)
!925 = !DISubprogram(name: "div", scope: !67, file: !67, line: 788, type: !926, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DISubroutineType(types: !927)
!927 = !{!880, !138, !138}
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !929, line: 135)
!929 = !DISubprogram(name: "exit", scope: !67, file: !67, line: 543, type: !930, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !138}
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !933, line: 136)
!933 = !DISubprogram(name: "free", scope: !67, file: !67, line: 483, type: !934, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !85}
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !937, line: 137)
!937 = !DISubprogram(name: "getenv", scope: !67, file: !67, line: 564, type: !938, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!938 = !DISubroutineType(types: !939)
!939 = !{!940, !900}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !942, line: 138)
!942 = !DISubprogram(name: "labs", scope: !67, file: !67, line: 775, type: !943, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!943 = !DISubroutineType(types: !944)
!944 = !{!71, !71}
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !946, line: 139)
!946 = !DISubprogram(name: "ldiv", scope: !67, file: !67, line: 790, type: !947, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!947 = !DISubroutineType(types: !948)
!948 = !{!882, !71, !71}
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !950, line: 140)
!950 = !DISubprogram(name: "malloc", scope: !67, file: !67, line: 466, type: !951, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DISubroutineType(types: !952)
!952 = !{!85, !914}
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !954, line: 142)
!954 = !DISubprogram(name: "mblen", scope: !67, file: !67, line: 862, type: !955, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DISubroutineType(types: !956)
!956 = !{!138, !900, !914}
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !958, line: 143)
!958 = !DISubprogram(name: "mbstowcs", scope: !67, file: !67, line: 873, type: !959, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DISubroutineType(types: !960)
!960 = !{!914, !961, !964, !914}
!961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64, align: 64)
!963 = !DIBasicType(name: "wchar_t", size: 32, align: 32, encoding: DW_ATE_signed)
!964 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !900)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !966, line: 144)
!966 = !DISubprogram(name: "mbtowc", scope: !67, file: !67, line: 865, type: !967, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!967 = !DISubroutineType(types: !968)
!968 = !{!138, !961, !964, !914}
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !970, line: 146)
!970 = !DISubprogram(name: "qsort", scope: !67, file: !67, line: 764, type: !971, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !85, !914, !914, !916}
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !974, line: 149)
!974 = !DISubprogram(name: "quick_exit", scope: !67, file: !67, line: 549, type: !930, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !976, line: 152)
!976 = !DISubprogram(name: "rand", scope: !67, file: !67, line: 374, type: !977, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DISubroutineType(types: !978)
!978 = !{!138}
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !980, line: 153)
!980 = !DISubprogram(name: "realloc", scope: !67, file: !67, line: 480, type: !981, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DISubroutineType(types: !982)
!982 = !{!85, !85, !914}
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !984, line: 154)
!984 = !DISubprogram(name: "srand", scope: !67, file: !67, line: 376, type: !985, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !8}
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !988, line: 155)
!988 = !DISubprogram(name: "strtod", scope: !67, file: !67, line: 164, type: !989, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DISubroutineType(types: !990)
!990 = !{!256, !964, !991}
!991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64, align: 64)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !994, line: 156)
!994 = !DISubprogram(name: "strtol", scope: !67, file: !67, line: 183, type: !995, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DISubroutineType(types: !996)
!996 = !{!71, !964, !991, !138}
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !998, line: 157)
!998 = !DISubprogram(name: "strtoul", scope: !67, file: !67, line: 187, type: !999, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!195, !964, !991, !138}
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1002, line: 158)
!1002 = !DISubprogram(name: "system", scope: !67, file: !67, line: 716, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1004, line: 160)
!1004 = !DISubprogram(name: "wcstombs", scope: !67, file: !67, line: 876, type: !1005, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!914, !1007, !1008, !914}
!1007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !940)
!1008 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64, align: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1012, line: 161)
!1012 = !DISubprogram(name: "wctomb", scope: !67, file: !67, line: 869, type: !1013, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!138, !940, !963}
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1017, line: 214)
!1016 = !DINamespace(name: "__gnu_cxx", scope: null, file: !82, line: 220)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !67, line: 121, baseType: !"_ZTS7lldiv_t")
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1019, line: 220)
!1019 = !DISubprogram(name: "_Exit", scope: !67, file: !67, line: 557, type: !930, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1021, line: 224)
!1021 = !DISubprogram(name: "llabs", scope: !67, file: !67, line: 779, type: !1022, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!76, !76}
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1025, line: 230)
!1025 = !DISubprogram(name: "lldiv", scope: !67, file: !67, line: 796, type: !1026, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!1017, !76, !76}
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1029, line: 241)
!1029 = !DISubprogram(name: "atoll", scope: !67, file: !67, line: 157, type: !1030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!76, !900}
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1033, line: 242)
!1033 = !DISubprogram(name: "strtoll", scope: !67, file: !67, line: 209, type: !1034, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!76, !964, !991, !138}
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1037, line: 243)
!1037 = !DISubprogram(name: "strtoull", scope: !67, file: !67, line: 214, type: !1038, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!1040, !964, !991, !138}
!1040 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1042, line: 245)
!1042 = !DISubprogram(name: "strtof", scope: !67, file: !67, line: 172, type: !1043, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!251, !964, !991}
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1046, line: 246)
!1046 = !DISubprogram(name: "strtold", scope: !67, file: !67, line: 175, type: !1047, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1049, !964, !991}
!1049 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1017, line: 254)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1019, line: 256)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1021, line: 258)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1054, line: 259)
!1054 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !1016, file: !1055, line: 227, type: !1026, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdlib", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1025, line: 260)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1029, line: 262)
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1042, line: 263)
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1033, line: 264)
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1037, line: 265)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1046, line: 266)
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !"_ZTSNSt15__exception_ptr13exception_ptrE", line: 58)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1064, line: 102)
!1064 = !DISubprogram(name: "acos", scope: !1065, file: !1065, line: 54, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1065 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!256, !256}
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1069, line: 121)
!1069 = !DISubprogram(name: "asin", scope: !1065, file: !1065, line: 56, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1071, line: 140)
!1071 = !DISubprogram(name: "atan", scope: !1065, file: !1065, line: 58, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1073, line: 159)
!1073 = !DISubprogram(name: "atan2", scope: !1065, file: !1065, line: 60, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!256, !256, !256}
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1077, line: 180)
!1077 = !DISubprogram(name: "ceil", scope: !1065, file: !1065, line: 178, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1079, line: 199)
!1079 = !DISubprogram(name: "cos", scope: !1065, file: !1065, line: 63, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1081, line: 218)
!1081 = !DISubprogram(name: "cosh", scope: !1065, file: !1065, line: 72, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1083, line: 237)
!1083 = !DISubprogram(name: "exp", scope: !1065, file: !1065, line: 100, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1085, line: 256)
!1085 = !DISubprogram(name: "fabs", scope: !1065, file: !1065, line: 181, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1087, line: 275)
!1087 = !DISubprogram(name: "floor", scope: !1065, file: !1065, line: 184, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1089, line: 294)
!1089 = !DISubprogram(name: "fmod", scope: !1065, file: !1065, line: 187, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1091, line: 315)
!1091 = !DISubprogram(name: "frexp", scope: !1065, file: !1065, line: 103, type: !1092, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!256, !256, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1096, line: 334)
!1096 = !DISubprogram(name: "ldexp", scope: !1065, file: !1065, line: 106, type: !1097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!256, !256, !138}
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1100, line: 353)
!1100 = !DISubprogram(name: "log", scope: !1065, file: !1065, line: 109, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1102, line: 372)
!1102 = !DISubprogram(name: "log10", scope: !1065, file: !1065, line: 112, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1104, line: 391)
!1104 = !DISubprogram(name: "modf", scope: !1065, file: !1065, line: 115, type: !1105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!256, !256, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1109, line: 403)
!1109 = !DISubprogram(name: "pow", scope: !1065, file: !1065, line: 153, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1111, line: 440)
!1111 = !DISubprogram(name: "sin", scope: !1065, file: !1065, line: 65, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1113, line: 459)
!1113 = !DISubprogram(name: "sinh", scope: !1065, file: !1065, line: 74, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1115, line: 478)
!1115 = !DISubprogram(name: "sqrt", scope: !1065, file: !1065, line: 156, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1117, line: 497)
!1117 = !DISubprogram(name: "tan", scope: !1065, file: !1065, line: 67, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1119, line: 516)
!1119 = !DISubprogram(name: "tanh", scope: !1065, file: !1065, line: 76, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1121, line: 1067)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1122, line: 29, baseType: !256)
!1122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1124, line: 1068)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1122, line: 28, baseType: !251)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1126, line: 1071)
!1126 = !DISubprogram(name: "acosh", scope: !1065, file: !1065, line: 88, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1128, line: 1072)
!1128 = !DISubprogram(name: "acoshf", scope: !1065, file: !1065, line: 88, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!251, !251}
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1132, line: 1073)
!1132 = !DISubprogram(name: "acoshl", scope: !1065, file: !1065, line: 88, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!1049, !1049}
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1136, line: 1075)
!1136 = !DISubprogram(name: "asinh", scope: !1065, file: !1065, line: 90, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1138, line: 1076)
!1138 = !DISubprogram(name: "asinhf", scope: !1065, file: !1065, line: 90, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1140, line: 1077)
!1140 = !DISubprogram(name: "asinhl", scope: !1065, file: !1065, line: 90, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1142, line: 1079)
!1142 = !DISubprogram(name: "atanh", scope: !1065, file: !1065, line: 92, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1144, line: 1080)
!1144 = !DISubprogram(name: "atanhf", scope: !1065, file: !1065, line: 92, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1146, line: 1081)
!1146 = !DISubprogram(name: "atanhl", scope: !1065, file: !1065, line: 92, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1148, line: 1083)
!1148 = !DISubprogram(name: "cbrt", scope: !1065, file: !1065, line: 169, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1150, line: 1084)
!1150 = !DISubprogram(name: "cbrtf", scope: !1065, file: !1065, line: 169, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1152, line: 1085)
!1152 = !DISubprogram(name: "cbrtl", scope: !1065, file: !1065, line: 169, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1154, line: 1087)
!1154 = !DISubprogram(name: "copysign", scope: !1065, file: !1065, line: 221, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1156, line: 1088)
!1156 = !DISubprogram(name: "copysignf", scope: !1065, file: !1065, line: 221, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!251, !251, !251}
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1160, line: 1089)
!1160 = !DISubprogram(name: "copysignl", scope: !1065, file: !1065, line: 221, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1049, !1049, !1049}
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1164, line: 1091)
!1164 = !DISubprogram(name: "erf", scope: !1065, file: !1065, line: 259, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1166, line: 1092)
!1166 = !DISubprogram(name: "erff", scope: !1065, file: !1065, line: 259, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1168, line: 1093)
!1168 = !DISubprogram(name: "erfl", scope: !1065, file: !1065, line: 259, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1170, line: 1095)
!1170 = !DISubprogram(name: "erfc", scope: !1065, file: !1065, line: 260, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1172, line: 1096)
!1172 = !DISubprogram(name: "erfcf", scope: !1065, file: !1065, line: 260, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1174, line: 1097)
!1174 = !DISubprogram(name: "erfcl", scope: !1065, file: !1065, line: 260, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1176, line: 1099)
!1176 = !DISubprogram(name: "exp2", scope: !1065, file: !1065, line: 141, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1178, line: 1100)
!1178 = !DISubprogram(name: "exp2f", scope: !1065, file: !1065, line: 141, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1180, line: 1101)
!1180 = !DISubprogram(name: "exp2l", scope: !1065, file: !1065, line: 141, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1182, line: 1103)
!1182 = !DISubprogram(name: "expm1", scope: !1065, file: !1065, line: 128, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1184, line: 1104)
!1184 = !DISubprogram(name: "expm1f", scope: !1065, file: !1065, line: 128, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1186, line: 1105)
!1186 = !DISubprogram(name: "expm1l", scope: !1065, file: !1065, line: 128, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1188, line: 1107)
!1188 = !DISubprogram(name: "fdim", scope: !1065, file: !1065, line: 347, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1190, line: 1108)
!1190 = !DISubprogram(name: "fdimf", scope: !1065, file: !1065, line: 347, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1192, line: 1109)
!1192 = !DISubprogram(name: "fdiml", scope: !1065, file: !1065, line: 347, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1194, line: 1111)
!1194 = !DISubprogram(name: "fma", scope: !1065, file: !1065, line: 366, type: !1195, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!256, !256, !256, !256}
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1198, line: 1112)
!1198 = !DISubprogram(name: "fmaf", scope: !1065, file: !1065, line: 366, type: !1199, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!251, !251, !251, !251}
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1202, line: 1113)
!1202 = !DISubprogram(name: "fmal", scope: !1065, file: !1065, line: 366, type: !1203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1049, !1049, !1049, !1049}
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1206, line: 1115)
!1206 = !DISubprogram(name: "fmax", scope: !1065, file: !1065, line: 350, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1208, line: 1116)
!1208 = !DISubprogram(name: "fmaxf", scope: !1065, file: !1065, line: 350, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1210, line: 1117)
!1210 = !DISubprogram(name: "fmaxl", scope: !1065, file: !1065, line: 350, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1212, line: 1119)
!1212 = !DISubprogram(name: "fmin", scope: !1065, file: !1065, line: 353, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1214, line: 1120)
!1214 = !DISubprogram(name: "fminf", scope: !1065, file: !1065, line: 353, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1216, line: 1121)
!1216 = !DISubprogram(name: "fminl", scope: !1065, file: !1065, line: 353, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1218, line: 1123)
!1218 = !DISubprogram(name: "hypot", scope: !1065, file: !1065, line: 162, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1220, line: 1124)
!1220 = !DISubprogram(name: "hypotf", scope: !1065, file: !1065, line: 162, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1222, line: 1125)
!1222 = !DISubprogram(name: "hypotl", scope: !1065, file: !1065, line: 162, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1224, line: 1127)
!1224 = !DISubprogram(name: "ilogb", scope: !1065, file: !1065, line: 306, type: !1225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!138, !256}
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1228, line: 1128)
!1228 = !DISubprogram(name: "ilogbf", scope: !1065, file: !1065, line: 306, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!138, !251}
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1232, line: 1129)
!1232 = !DISubprogram(name: "ilogbl", scope: !1065, file: !1065, line: 306, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!138, !1049}
!1235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1236, line: 1131)
!1236 = !DISubprogram(name: "lgamma", scope: !1065, file: !1065, line: 261, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1238, line: 1132)
!1238 = !DISubprogram(name: "lgammaf", scope: !1065, file: !1065, line: 261, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1240, line: 1133)
!1240 = !DISubprogram(name: "lgammal", scope: !1065, file: !1065, line: 261, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1242, line: 1135)
!1242 = !DISubprogram(name: "llrint", scope: !1065, file: !1065, line: 337, type: !1243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!76, !256}
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1246, line: 1136)
!1246 = !DISubprogram(name: "llrintf", scope: !1065, file: !1065, line: 337, type: !1247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!76, !251}
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1250, line: 1137)
!1250 = !DISubprogram(name: "llrintl", scope: !1065, file: !1065, line: 337, type: !1251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!76, !1049}
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1254, line: 1139)
!1254 = !DISubprogram(name: "llround", scope: !1065, file: !1065, line: 343, type: !1243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1256, line: 1140)
!1256 = !DISubprogram(name: "llroundf", scope: !1065, file: !1065, line: 343, type: !1247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1258, line: 1141)
!1258 = !DISubprogram(name: "llroundl", scope: !1065, file: !1065, line: 343, type: !1251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1260, line: 1143)
!1260 = !DISubprogram(name: "log1p", scope: !1065, file: !1065, line: 131, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1262, line: 1144)
!1262 = !DISubprogram(name: "log1pf", scope: !1065, file: !1065, line: 131, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1264, line: 1145)
!1264 = !DISubprogram(name: "log1pl", scope: !1065, file: !1065, line: 131, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1266, line: 1147)
!1266 = !DISubprogram(name: "log2", scope: !1065, file: !1065, line: 144, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1268, line: 1148)
!1268 = !DISubprogram(name: "log2f", scope: !1065, file: !1065, line: 144, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1270, line: 1149)
!1270 = !DISubprogram(name: "log2l", scope: !1065, file: !1065, line: 144, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1272, line: 1151)
!1272 = !DISubprogram(name: "logb", scope: !1065, file: !1065, line: 134, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1274, line: 1152)
!1274 = !DISubprogram(name: "logbf", scope: !1065, file: !1065, line: 134, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1276, line: 1153)
!1276 = !DISubprogram(name: "logbl", scope: !1065, file: !1065, line: 134, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1278, line: 1155)
!1278 = !DISubprogram(name: "lrint", scope: !1065, file: !1065, line: 335, type: !1279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!71, !256}
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1282, line: 1156)
!1282 = !DISubprogram(name: "lrintf", scope: !1065, file: !1065, line: 335, type: !1283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!71, !251}
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1286, line: 1157)
!1286 = !DISubprogram(name: "lrintl", scope: !1065, file: !1065, line: 335, type: !1287, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!71, !1049}
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1290, line: 1159)
!1290 = !DISubprogram(name: "lround", scope: !1065, file: !1065, line: 341, type: !1279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1292, line: 1160)
!1292 = !DISubprogram(name: "lroundf", scope: !1065, file: !1065, line: 341, type: !1283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1294, line: 1161)
!1294 = !DISubprogram(name: "lroundl", scope: !1065, file: !1065, line: 341, type: !1287, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1296, line: 1163)
!1296 = !DISubprogram(name: "nan", scope: !1065, file: !1065, line: 228, type: !898, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1298, line: 1164)
!1298 = !DISubprogram(name: "nanf", scope: !1065, file: !1065, line: 228, type: !1299, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!251, !900}
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1302, line: 1165)
!1302 = !DISubprogram(name: "nanl", scope: !1065, file: !1065, line: 228, type: !1303, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1049, !900}
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1306, line: 1167)
!1306 = !DISubprogram(name: "nearbyint", scope: !1065, file: !1065, line: 315, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1308, line: 1168)
!1308 = !DISubprogram(name: "nearbyintf", scope: !1065, file: !1065, line: 315, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1310, line: 1169)
!1310 = !DISubprogram(name: "nearbyintl", scope: !1065, file: !1065, line: 315, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1312, line: 1171)
!1312 = !DISubprogram(name: "nextafter", scope: !1065, file: !1065, line: 292, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1314, line: 1172)
!1314 = !DISubprogram(name: "nextafterf", scope: !1065, file: !1065, line: 292, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1316, line: 1173)
!1316 = !DISubprogram(name: "nextafterl", scope: !1065, file: !1065, line: 292, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1318, line: 1175)
!1318 = !DISubprogram(name: "nexttoward", scope: !1065, file: !1065, line: 294, type: !1319, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!256, !256, !1049}
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1322, line: 1176)
!1322 = !DISubprogram(name: "nexttowardf", scope: !1065, file: !1065, line: 294, type: !1323, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!251, !251, !1049}
!1325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1326, line: 1177)
!1326 = !DISubprogram(name: "nexttowardl", scope: !1065, file: !1065, line: 294, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1328, line: 1179)
!1328 = !DISubprogram(name: "remainder", scope: !1065, file: !1065, line: 298, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1330, line: 1180)
!1330 = !DISubprogram(name: "remainderf", scope: !1065, file: !1065, line: 298, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1332, line: 1181)
!1332 = !DISubprogram(name: "remainderl", scope: !1065, file: !1065, line: 298, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1334, line: 1183)
!1334 = !DISubprogram(name: "remquo", scope: !1065, file: !1065, line: 328, type: !1335, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!256, !256, !256, !1094}
!1337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1338, line: 1184)
!1338 = !DISubprogram(name: "remquof", scope: !1065, file: !1065, line: 328, type: !1339, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!251, !251, !251, !1094}
!1341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1342, line: 1185)
!1342 = !DISubprogram(name: "remquol", scope: !1065, file: !1065, line: 328, type: !1343, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1049, !1049, !1049, !1094}
!1345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1346, line: 1187)
!1346 = !DISubprogram(name: "rint", scope: !1065, file: !1065, line: 289, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1348, line: 1188)
!1348 = !DISubprogram(name: "rintf", scope: !1065, file: !1065, line: 289, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1350, line: 1189)
!1350 = !DISubprogram(name: "rintl", scope: !1065, file: !1065, line: 289, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1352, line: 1191)
!1352 = !DISubprogram(name: "round", scope: !1065, file: !1065, line: 319, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1354, line: 1192)
!1354 = !DISubprogram(name: "roundf", scope: !1065, file: !1065, line: 319, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1356, line: 1193)
!1356 = !DISubprogram(name: "roundl", scope: !1065, file: !1065, line: 319, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1358, line: 1195)
!1358 = !DISubprogram(name: "scalbln", scope: !1065, file: !1065, line: 311, type: !1359, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!256, !256, !71}
!1361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1362, line: 1196)
!1362 = !DISubprogram(name: "scalblnf", scope: !1065, file: !1065, line: 311, type: !1363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!251, !251, !71}
!1365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1366, line: 1197)
!1366 = !DISubprogram(name: "scalblnl", scope: !1065, file: !1065, line: 311, type: !1367, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1049, !1049, !71}
!1369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1370, line: 1199)
!1370 = !DISubprogram(name: "scalbn", scope: !1065, file: !1065, line: 302, type: !1097, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1372, line: 1200)
!1372 = !DISubprogram(name: "scalbnf", scope: !1065, file: !1065, line: 302, type: !1373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!251, !251, !138}
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1376, line: 1201)
!1376 = !DISubprogram(name: "scalbnl", scope: !1065, file: !1065, line: 302, type: !1377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1049, !1049, !138}
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1380, line: 1203)
!1380 = !DISubprogram(name: "tgamma", scope: !1065, file: !1065, line: 268, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1382, line: 1204)
!1382 = !DISubprogram(name: "tgammaf", scope: !1065, file: !1065, line: 268, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1384, line: 1205)
!1384 = !DISubprogram(name: "tgammal", scope: !1065, file: !1065, line: 268, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1386, line: 1207)
!1386 = !DISubprogram(name: "trunc", scope: !1065, file: !1065, line: 323, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1388, line: 1208)
!1388 = !DISubprogram(name: "truncf", scope: !1065, file: !1065, line: 323, type: !1129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1390, line: 1209)
!1390 = !DISubprogram(name: "truncl", scope: !1065, file: !1065, line: 323, type: !1133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1392, line: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !135, line: 106, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !135, line: 94, baseType: !"_ZTS11__mbstate_t")
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1395, line: 139)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !915, line: 132, baseType: !8)
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1397, line: 141)
!1397 = !DISubprogram(name: "btowc", scope: !135, file: !135, line: 356, type: !1398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!1395, !138}
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1401, line: 142)
!1401 = !DISubprogram(name: "fgetwc", scope: !135, file: !135, line: 748, type: !1402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1395, !1404}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64, align: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !141, line: 64, baseType: !"_ZTS8_IO_FILE")
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1407, line: 143)
!1407 = !DISubprogram(name: "fgetws", scope: !135, file: !135, line: 777, type: !1408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!962, !961, !138, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1404)
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1412, line: 144)
!1412 = !DISubprogram(name: "fputwc", scope: !135, file: !135, line: 762, type: !1413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!1395, !963, !1404}
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1416, line: 145)
!1416 = !DISubprogram(name: "fputws", scope: !135, file: !135, line: 784, type: !1417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!138, !1008, !1410}
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1420, line: 146)
!1420 = !DISubprogram(name: "fwide", scope: !135, file: !135, line: 590, type: !1421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!138, !1404, !138}
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1424, line: 147)
!1424 = !DISubprogram(name: "fwprintf", scope: !135, file: !135, line: 597, type: !1425, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!138, !1410, !1008, null}
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1428, line: 148)
!1428 = !DISubprogram(name: "fwscanf", scope: !135, file: !135, line: 638, type: !1425, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1430, line: 149)
!1430 = !DISubprogram(name: "getwc", scope: !135, file: !135, line: 749, type: !1402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1432, line: 150)
!1432 = !DISubprogram(name: "getwchar", scope: !135, file: !135, line: 755, type: !1433, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!1395}
!1435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1436, line: 151)
!1436 = !DISubprogram(name: "mbrlen", scope: !135, file: !135, line: 379, type: !1437, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!914, !964, !914, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64, align: 64)
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1442, line: 152)
!1442 = !DISubprogram(name: "mbrtowc", scope: !135, file: !135, line: 368, type: !1443, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!914, !961, !964, !914, !1439}
!1445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1446, line: 153)
!1446 = !DISubprogram(name: "mbsinit", scope: !135, file: !135, line: 364, type: !1447, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!138, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1452, line: 154)
!1452 = !DISubprogram(name: "mbsrtowcs", scope: !135, file: !135, line: 411, type: !1453, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!914, !961, !1455, !914, !1439}
!1455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64, align: 64)
!1457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1458, line: 155)
!1458 = !DISubprogram(name: "putwc", scope: !135, file: !135, line: 763, type: !1413, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1460, line: 156)
!1460 = !DISubprogram(name: "putwchar", scope: !135, file: !135, line: 769, type: !1461, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!1395, !963}
!1463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1464, line: 158)
!1464 = !DISubprogram(name: "swprintf", scope: !135, file: !135, line: 607, type: !1465, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!138, !961, !914, !1008, null}
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1468, line: 160)
!1468 = !DISubprogram(name: "swscanf", scope: !135, file: !135, line: 648, type: !1469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!138, !1008, !1008, null}
!1471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1472, line: 161)
!1472 = !DISubprogram(name: "ungetwc", scope: !135, file: !135, line: 792, type: !1473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1395, !1395, !1404}
!1475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1476, line: 162)
!1476 = !DISubprogram(name: "vfwprintf", scope: !135, file: !135, line: 615, type: !1477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!138, !1410, !1008, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64, align: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !2, baseType: !"_ZTS13__va_list_tag")
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1482, line: 164)
!1482 = !DISubprogram(name: "vfwscanf", scope: !135, file: !135, line: 692, type: !1477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1484, line: 167)
!1484 = !DISubprogram(name: "vswprintf", scope: !135, file: !135, line: 628, type: !1485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!138, !961, !914, !1008, !1479}
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1488, line: 170)
!1488 = !DISubprogram(name: "vswscanf", scope: !135, file: !135, line: 704, type: !1489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!138, !1008, !1008, !1479}
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1492, line: 172)
!1492 = !DISubprogram(name: "vwprintf", scope: !135, file: !135, line: 623, type: !1493, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!138, !1008, !1479}
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1496, line: 174)
!1496 = !DISubprogram(name: "vwscanf", scope: !135, file: !135, line: 700, type: !1493, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1498, line: 176)
!1498 = !DISubprogram(name: "wcrtomb", scope: !135, file: !135, line: 373, type: !1499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!914, !1007, !963, !1439}
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1502, line: 177)
!1502 = !DISubprogram(name: "wcscat", scope: !135, file: !135, line: 157, type: !1503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!962, !961, !1008}
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1506, line: 178)
!1506 = !DISubprogram(name: "wcscmp", scope: !135, file: !135, line: 166, type: !1507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!138, !1009, !1009}
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1510, line: 179)
!1510 = !DISubprogram(name: "wcscoll", scope: !135, file: !135, line: 195, type: !1507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1512, line: 180)
!1512 = !DISubprogram(name: "wcscpy", scope: !135, file: !135, line: 147, type: !1503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1514, line: 181)
!1514 = !DISubprogram(name: "wcscspn", scope: !135, file: !135, line: 255, type: !1515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!914, !1009, !1009}
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1518, line: 182)
!1518 = !DISubprogram(name: "wcsftime", scope: !135, file: !135, line: 858, type: !1519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!914, !961, !914, !1008, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64, align: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !"_ZTS2tm")
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1525, line: 183)
!1525 = !DISubprogram(name: "wcslen", scope: !135, file: !135, line: 290, type: !1526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!914, !1009}
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1529, line: 184)
!1529 = !DISubprogram(name: "wcsncat", scope: !135, file: !135, line: 161, type: !1530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!962, !961, !1008, !914}
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1533, line: 185)
!1533 = !DISubprogram(name: "wcsncmp", scope: !135, file: !135, line: 169, type: !1534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!138, !1009, !1009, !914}
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1537, line: 186)
!1537 = !DISubprogram(name: "wcsncpy", scope: !135, file: !135, line: 152, type: !1530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1539, line: 187)
!1539 = !DISubprogram(name: "wcsrtombs", scope: !135, file: !135, line: 417, type: !1540, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!914, !1007, !1542, !914, !1439}
!1542 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64, align: 64)
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1545, line: 188)
!1545 = !DISubprogram(name: "wcsspn", scope: !135, file: !135, line: 259, type: !1515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1547, line: 189)
!1547 = !DISubprogram(name: "wcstod", scope: !135, file: !135, line: 453, type: !1548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!256, !1008, !1550}
!1550 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64, align: 64)
!1552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1553, line: 191)
!1553 = !DISubprogram(name: "wcstof", scope: !135, file: !135, line: 460, type: !1554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!251, !1008, !1550}
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1557, line: 193)
!1557 = !DISubprogram(name: "wcstok", scope: !135, file: !135, line: 285, type: !1558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!962, !961, !1008, !1550}
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1561, line: 194)
!1561 = !DISubprogram(name: "wcstol", scope: !135, file: !135, line: 471, type: !1562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!71, !1008, !1550, !138}
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1565, line: 195)
!1565 = !DISubprogram(name: "wcstoul", scope: !135, file: !135, line: 476, type: !1566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!195, !1008, !1550, !138}
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1569, line: 196)
!1569 = !DISubprogram(name: "wcsxfrm", scope: !135, file: !135, line: 199, type: !1570, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!914, !961, !1008, !914}
!1572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1573, line: 197)
!1573 = !DISubprogram(name: "wctob", scope: !135, file: !135, line: 360, type: !1574, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!138, !1395}
!1576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1577, line: 198)
!1577 = !DISubprogram(name: "wmemcmp", scope: !135, file: !135, line: 328, type: !1534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1579, line: 199)
!1579 = !DISubprogram(name: "wmemcpy", scope: !135, file: !135, line: 332, type: !1530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1581, line: 200)
!1581 = !DISubprogram(name: "wmemmove", scope: !135, file: !135, line: 337, type: !1582, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!962, !962, !1009, !914}
!1584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1585, line: 201)
!1585 = !DISubprogram(name: "wmemset", scope: !135, file: !135, line: 341, type: !1586, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!962, !962, !963, !914}
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1589, line: 202)
!1589 = !DISubprogram(name: "wprintf", scope: !135, file: !135, line: 604, type: !1590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!138, !1008, null}
!1592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1593, line: 203)
!1593 = !DISubprogram(name: "wscanf", scope: !135, file: !135, line: 645, type: !1590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1595, line: 204)
!1595 = !DISubprogram(name: "wcschr", scope: !135, file: !135, line: 230, type: !1596, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!962, !1009, !963}
!1598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1599, line: 205)
!1599 = !DISubprogram(name: "wcspbrk", scope: !135, file: !135, line: 269, type: !1600, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!962, !1009, !1009}
!1602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1603, line: 206)
!1603 = !DISubprogram(name: "wcsrchr", scope: !135, file: !135, line: 240, type: !1596, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1605, line: 207)
!1605 = !DISubprogram(name: "wcsstr", scope: !135, file: !135, line: 280, type: !1600, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1607, line: 208)
!1607 = !DISubprogram(name: "wmemchr", scope: !135, file: !135, line: 323, type: !1608, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!962, !1009, !963, !914}
!1610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1611, line: 248)
!1611 = !DISubprogram(name: "wcstold", scope: !135, file: !135, line: 462, type: !1612, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1049, !1008, !1550}
!1614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1615, line: 257)
!1615 = !DISubprogram(name: "wcstoll", scope: !135, file: !135, line: 486, type: !1616, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!76, !1008, !1550, !138}
!1618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1619, line: 258)
!1619 = !DISubprogram(name: "wcstoull", scope: !135, file: !135, line: 493, type: !1620, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!1040, !1008, !1550, !138}
!1622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1611, line: 264)
!1623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1615, line: 265)
!1624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1619, line: 266)
!1625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1553, line: 280)
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1482, line: 283)
!1627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1488, line: 286)
!1628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1496, line: 289)
!1629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1611, line: 293)
!1630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1615, line: 294)
!1631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1619, line: 295)
!1632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !261, line: 48)
!1633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !268, line: 49)
!1634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !274, line: 50)
!1635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !279, line: 51)
!1636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1637, line: 53)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !7, line: 245, baseType: !261)
!1638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1639, line: 54)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !7, line: 228, baseType: !268)
!1640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1641, line: 55)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !7, line: 197, baseType: !274)
!1642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1643, line: 56)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !7, line: 123, baseType: !279)
!1644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1645, line: 58)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !7, line: 243, baseType: !261)
!1646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1647, line: 59)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !7, line: 226, baseType: !268)
!1648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1649, line: 60)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !7, line: 195, baseType: !274)
!1650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1651, line: 61)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !7, line: 121, baseType: !279)
!1652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1653, line: 63)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !7, line: 276, baseType: !71)
!1654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1655, line: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !7, line: 263, baseType: !279)
!1656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !60, line: 66)
!1657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !26, line: 67)
!1658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !6, line: 68)
!1659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !194, line: 69)
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1661, line: 71)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !7, line: 246, baseType: !60)
!1662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1663, line: 72)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !7, line: 229, baseType: !26)
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1665, line: 73)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !7, line: 198, baseType: !6)
!1666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1667, line: 74)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !7, line: 124, baseType: !194)
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1669, line: 76)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !7, line: 244, baseType: !60)
!1670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1671, line: 77)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !7, line: 227, baseType: !26)
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1673, line: 78)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !7, line: 196, baseType: !6)
!1674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1675, line: 79)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !7, line: 122, baseType: !194)
!1676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1677, line: 81)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !7, line: 277, baseType: !195)
!1678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1679, line: 82)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !7, line: 270, baseType: !194)
!1680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1681, line: 44)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !81, file: !82, line: 196, baseType: !195)
!1682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1683, line: 45)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !81, file: !82, line: 197, baseType: !71)
!1684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !"_ZTS5lconv", line: 53)
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1686, line: 54)
!1686 = !DISubprogram(name: "setlocale", scope: !150, file: !150, line: 124, type: !1687, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!940, !138, !900}
!1689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1690, line: 55)
!1690 = !DISubprogram(name: "localeconv", scope: !150, file: !150, line: 127, type: !1691, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS5lconv", size: 64, align: 64)
!1694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1695, line: 64)
!1695 = !DISubprogram(name: "isalnum", scope: !1696, file: !1696, line: 110, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1696 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!1697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1698, line: 65)
!1698 = !DISubprogram(name: "isalpha", scope: !1696, file: !1696, line: 111, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1700, line: 66)
!1700 = !DISubprogram(name: "iscntrl", scope: !1696, file: !1696, line: 112, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1702, line: 67)
!1702 = !DISubprogram(name: "isdigit", scope: !1696, file: !1696, line: 113, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1704, line: 68)
!1704 = !DISubprogram(name: "isgraph", scope: !1696, file: !1696, line: 115, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1706, line: 69)
!1706 = !DISubprogram(name: "islower", scope: !1696, file: !1696, line: 114, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1708, line: 70)
!1708 = !DISubprogram(name: "isprint", scope: !1696, file: !1696, line: 116, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1710, line: 71)
!1710 = !DISubprogram(name: "ispunct", scope: !1696, file: !1696, line: 117, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1712, line: 72)
!1712 = !DISubprogram(name: "isspace", scope: !1696, file: !1696, line: 118, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1714, line: 73)
!1714 = !DISubprogram(name: "isupper", scope: !1696, file: !1696, line: 119, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1716, line: 74)
!1716 = !DISubprogram(name: "isxdigit", scope: !1696, file: !1696, line: 120, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1718, line: 75)
!1718 = !DISubprogram(name: "tolower", scope: !1696, file: !1696, line: 124, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1720, line: 76)
!1720 = !DISubprogram(name: "toupper", scope: !1696, file: !1696, line: 127, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1722, line: 87)
!1722 = !DISubprogram(name: "isblank", scope: !1696, file: !1696, line: 136, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1724, line: 98)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !141, line: 48, baseType: !"_ZTS8_IO_FILE")
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1726, line: 99)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !141, line: 110, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !160, line: 25, baseType: !"_ZTS9_G_fpos_t")
!1728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1729, line: 101)
!1729 = !DISubprogram(name: "clearerr", scope: !141, file: !141, line: 826, type: !1730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64, align: 64)
!1733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1734, line: 102)
!1734 = !DISubprogram(name: "fclose", scope: !141, file: !141, line: 237, type: !1735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!138, !1732}
!1737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1738, line: 103)
!1738 = !DISubprogram(name: "feof", scope: !141, file: !141, line: 828, type: !1735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1740, line: 104)
!1740 = !DISubprogram(name: "ferror", scope: !141, file: !141, line: 830, type: !1735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1742, line: 105)
!1742 = !DISubprogram(name: "fflush", scope: !141, file: !141, line: 242, type: !1735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1744, line: 106)
!1744 = !DISubprogram(name: "fgetc", scope: !141, file: !141, line: 531, type: !1735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1746, line: 107)
!1746 = !DISubprogram(name: "fgetpos", scope: !141, file: !141, line: 798, type: !1747, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!138, !1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1732)
!1750 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1751)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64, align: 64)
!1752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1753, line: 108)
!1753 = !DISubprogram(name: "fgets", scope: !141, file: !141, line: 622, type: !1754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!940, !1007, !138, !1749}
!1756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1757, line: 109)
!1757 = !DISubprogram(name: "fopen", scope: !141, file: !141, line: 272, type: !1758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1732, !964, !964}
!1760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1761, line: 110)
!1761 = !DISubprogram(name: "fprintf", scope: !141, file: !141, line: 356, type: !1762, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!138, !1749, !964, null}
!1764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1765, line: 111)
!1765 = !DISubprogram(name: "fputc", scope: !141, file: !141, line: 573, type: !1766, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!138, !138, !1732}
!1768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1769, line: 112)
!1769 = !DISubprogram(name: "fputs", scope: !141, file: !141, line: 689, type: !1770, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!138, !964, !1749}
!1772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1773, line: 113)
!1773 = !DISubprogram(name: "fread", scope: !141, file: !141, line: 709, type: !1774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!914, !1776, !914, !914, !1749}
!1776 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1778, line: 114)
!1778 = !DISubprogram(name: "freopen", scope: !141, file: !141, line: 278, type: !1779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1732, !964, !964, !1749}
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1782, line: 115)
!1782 = !DISubprogram(name: "fscanf", scope: !141, file: !141, line: 425, type: !1762, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1784, line: 116)
!1784 = !DISubprogram(name: "fseek", scope: !141, file: !141, line: 749, type: !1785, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!138, !1732, !71, !138}
!1787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1788, line: 117)
!1788 = !DISubprogram(name: "fsetpos", scope: !141, file: !141, line: 803, type: !1789, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!138, !1732, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64, align: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1726)
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1794, line: 118)
!1794 = !DISubprogram(name: "ftell", scope: !141, file: !141, line: 754, type: !1795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!71, !1732}
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1798, line: 119)
!1798 = !DISubprogram(name: "fwrite", scope: !141, file: !141, line: 715, type: !1799, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!914, !1801, !914, !914, !1749}
!1801 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !860)
!1802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1803, line: 120)
!1803 = !DISubprogram(name: "getc", scope: !141, file: !141, line: 532, type: !1735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1805, line: 121)
!1805 = !DISubprogram(name: "getchar", scope: !141, file: !141, line: 538, type: !977, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1807, line: 124)
!1807 = !DISubprogram(name: "gets", scope: !141, file: !141, line: 638, type: !1808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!940, !940}
!1810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1811, line: 126)
!1811 = !DISubprogram(name: "perror", scope: !141, file: !141, line: 846, type: !1812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !900}
!1814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1815, line: 127)
!1815 = !DISubprogram(name: "printf", scope: !141, file: !141, line: 362, type: !1816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!138, !964, null}
!1818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1819, line: 128)
!1819 = !DISubprogram(name: "putc", scope: !141, file: !141, line: 574, type: !1766, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1821, line: 129)
!1821 = !DISubprogram(name: "putchar", scope: !141, file: !141, line: 580, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1823, line: 130)
!1823 = !DISubprogram(name: "puts", scope: !141, file: !141, line: 695, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1825, line: 131)
!1825 = !DISubprogram(name: "remove", scope: !141, file: !141, line: 178, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1827, line: 132)
!1827 = !DISubprogram(name: "rename", scope: !141, file: !141, line: 180, type: !1828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!138, !900, !900}
!1830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1831, line: 133)
!1831 = !DISubprogram(name: "rewind", scope: !141, file: !141, line: 759, type: !1730, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1833, line: 134)
!1833 = !DISubprogram(name: "scanf", scope: !141, file: !141, line: 431, type: !1816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1835, line: 135)
!1835 = !DISubprogram(name: "setbuf", scope: !141, file: !141, line: 332, type: !1836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1749, !1007}
!1838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1839, line: 136)
!1839 = !DISubprogram(name: "setvbuf", scope: !141, file: !141, line: 336, type: !1840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!138, !1749, !1007, !138, !914}
!1842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1843, line: 137)
!1843 = !DISubprogram(name: "sprintf", scope: !141, file: !141, line: 364, type: !1844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!138, !1007, !964, null}
!1846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1847, line: 138)
!1847 = !DISubprogram(name: "sscanf", scope: !141, file: !141, line: 433, type: !1848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!138, !964, !964, null}
!1850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1851, line: 139)
!1851 = !DISubprogram(name: "tmpfile", scope: !141, file: !141, line: 195, type: !1852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1732}
!1854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1855, line: 141)
!1855 = !DISubprogram(name: "tmpnam", scope: !141, file: !141, line: 209, type: !1808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1857, line: 143)
!1857 = !DISubprogram(name: "ungetc", scope: !141, file: !141, line: 702, type: !1766, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1859, line: 144)
!1859 = !DISubprogram(name: "vfprintf", scope: !141, file: !141, line: 371, type: !1860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!138, !1749, !964, !1479}
!1862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1863, line: 145)
!1863 = !DISubprogram(name: "vprintf", scope: !141, file: !141, line: 377, type: !1864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!138, !964, !1479}
!1866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1867, line: 146)
!1867 = !DISubprogram(name: "vsprintf", scope: !141, file: !141, line: 379, type: !1868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!138, !1007, !964, !1479}
!1870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1871, line: 175)
!1871 = !DISubprogram(name: "snprintf", scope: !141, file: !141, line: 386, type: !1872, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!138, !1007, !914, !964, null}
!1874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1875, line: 176)
!1875 = !DISubprogram(name: "vfscanf", scope: !141, file: !141, line: 471, type: !1860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1877, line: 177)
!1877 = !DISubprogram(name: "vscanf", scope: !141, file: !141, line: 479, type: !1864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1879, line: 178)
!1879 = !DISubprogram(name: "vsnprintf", scope: !141, file: !141, line: 390, type: !1880, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!138, !1007, !914, !964, !1479}
!1882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1016, entity: !1883, line: 179)
!1883 = !DISubprogram(name: "vsscanf", scope: !141, file: !141, line: 483, type: !1884, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!138, !964, !964, !1479}
!1886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1871, line: 185)
!1887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1875, line: 186)
!1888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1877, line: 187)
!1889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1879, line: 188)
!1890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1883, line: 189)
!1891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1892, line: 58)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !162, line: 94, baseType: !"_ZTS6fenv_t")
!1893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1894, line: 59)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !162, line: 68, baseType: !27)
!1895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1896, line: 62)
!1896 = !DISubprogram(name: "feclearexcept", scope: !1897, file: !1897, line: 64, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1897 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/weiwang99/mcsema-ve/remill/scripts/remill-build/remill/Arch/X86/Runtime")
!1898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1899, line: 63)
!1899 = !DISubprogram(name: "fegetexceptflag", scope: !1897, file: !1897, line: 68, type: !1900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!138, !1902, !138}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64, align: 64)
!1903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1904, line: 64)
!1904 = !DISubprogram(name: "feraiseexcept", scope: !1897, file: !1897, line: 71, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1906, line: 65)
!1906 = !DISubprogram(name: "fesetexceptflag", scope: !1897, file: !1897, line: 75, type: !1907, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!138, !1909, !138}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64, align: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1912, line: 66)
!1912 = !DISubprogram(name: "fetestexcept", scope: !1897, file: !1897, line: 79, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1914, line: 68)
!1914 = !DISubprogram(name: "fegetround", scope: !1897, file: !1897, line: 85, type: !977, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1916, line: 69)
!1916 = !DISubprogram(name: "fesetround", scope: !1897, file: !1897, line: 88, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1918, line: 71)
!1918 = !DISubprogram(name: "fegetenv", scope: !1897, file: !1897, line: 95, type: !1919, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!138, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64, align: 64)
!1922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1923, line: 72)
!1923 = !DISubprogram(name: "feholdexcept", scope: !1897, file: !1897, line: 100, type: !1919, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1925, line: 73)
!1925 = !DISubprogram(name: "fesetenv", scope: !1897, file: !1897, line: 104, type: !1926, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!138, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64, align: 64)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1931, line: 74)
!1931 = !DISubprogram(name: "feupdateenv", scope: !1897, file: !1897, line: 109, type: !1926, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1892, line: 61)
!1933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1894, line: 62)
!1934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1896, line: 65)
!1935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1899, line: 66)
!1936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1904, line: 67)
!1937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1906, line: 68)
!1938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1912, line: 69)
!1939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1914, line: 71)
!1940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1916, line: 72)
!1941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1918, line: 74)
!1942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1923, line: 75)
!1943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1925, line: 76)
!1944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !81, entity: !1931, line: 77)
!1945 = !{i32 2, !"Dwarf Version", i32 4}
!1946 = !{i32 2, !"Debug Info Version", i32 3}
!1947 = !{!1948, !1948, i64 0}
!1948 = !{!"long", !1949, i64 0}
!1949 = !{!"omnipotent char", !1950, i64 0}
!1950 = !{!"Simple C/C++ TBAA"}
!1951 = !{!1952, !1952, i64 0}
!1952 = !{!"int", !1949, i64 0}
!1953 = !{!1954, !1949, i64 2065}
!1954 = !{!"_ZTS5State", !1949, i64 16, !1955, i64 2064, !1949, i64 2080, !1956, i64 2088, !1958, i64 2112, !1960, i64 2208, !1961, i64 2480, !1962, i64 2608, !1963, i64 2736, !1949, i64 2760, !1949, i64 2768, !1964, i64 3280}
!1955 = !{!"_ZTS10ArithFlags", !1949, i64 0, !1949, i64 1, !1949, i64 2, !1949, i64 3, !1949, i64 4, !1949, i64 5, !1949, i64 6, !1949, i64 7, !1949, i64 8, !1949, i64 9, !1949, i64 10, !1949, i64 11, !1949, i64 12, !1949, i64 13, !1949, i64 14, !1949, i64 15}
!1956 = !{!"_ZTS8Segments", !1957, i64 0, !1949, i64 2, !1957, i64 4, !1949, i64 6, !1957, i64 8, !1949, i64 10, !1957, i64 12, !1949, i64 14, !1957, i64 16, !1949, i64 18, !1957, i64 20, !1949, i64 22}
!1957 = !{!"short", !1949, i64 0}
!1958 = !{!"_ZTS12AddressSpace", !1948, i64 0, !1959, i64 8, !1948, i64 16, !1959, i64 24, !1948, i64 32, !1959, i64 40, !1948, i64 48, !1959, i64 56, !1948, i64 64, !1959, i64 72, !1948, i64 80, !1959, i64 88}
!1959 = !{!"_ZTS3Reg", !1949, i64 0}
!1960 = !{!"_ZTS3GPR", !1948, i64 0, !1959, i64 8, !1948, i64 16, !1959, i64 24, !1948, i64 32, !1959, i64 40, !1948, i64 48, !1959, i64 56, !1948, i64 64, !1959, i64 72, !1948, i64 80, !1959, i64 88, !1948, i64 96, !1959, i64 104, !1948, i64 112, !1959, i64 120, !1948, i64 128, !1959, i64 136, !1948, i64 144, !1959, i64 152, !1948, i64 160, !1959, i64 168, !1948, i64 176, !1959, i64 184, !1948, i64 192, !1959, i64 200, !1948, i64 208, !1959, i64 216, !1948, i64 224, !1959, i64 232, !1948, i64 240, !1959, i64 248, !1948, i64 256, !1959, i64 264}
!1961 = !{!"_ZTS8X87Stack", !1949, i64 0}
!1962 = !{!"_ZTS3MMX", !1949, i64 0}
!1963 = !{!"_ZTS14FPUStatusFlags", !1949, i64 0, !1949, i64 1, !1949, i64 2, !1949, i64 3, !1949, i64 4, !1949, i64 5, !1949, i64 6, !1949, i64 7, !1949, i64 8, !1949, i64 9, !1949, i64 10, !1949, i64 11, !1949, i64 12, !1949, i64 13, !1949, i64 14, !1949, i64 15, !1949, i64 16, !1949, i64 17, !1949, i64 18, !1949, i64 19, !1949, i64 20}
!1964 = !{!"_ZTS13SegmentCaches", !1965, i64 0, !1965, i64 16, !1965, i64 32, !1965, i64 48, !1965, i64 64, !1965, i64 80}
!1965 = !{!"_ZTS13SegmentShadow", !1949, i64 0, !1952, i64 8, !1952, i64 12}
!1966 = !{!1954, !1949, i64 2067}
!1967 = !{!1954, !1949, i64 2069}
!1968 = !{!1954, !1949, i64 2071}
!1969 = !{!1954, !1949, i64 2073}
!1970 = !{!1954, !1949, i64 2077}
!1971 = !{!1972, !1972, i64 0}
!1972 = !{!"double", !1949, i64 0}
!1973 = !{!1974}
!1974 = distinct !{!1974, !1975, !"ext_6040a8___libc_start_main: argument 0"}
!1975 = distinct !{!1975, !"ext_6040a8___libc_start_main"}
!1976 = !{!1977}
!1977 = distinct !{!1977, !1975, !"ext_6040a8___libc_start_main: argument 1"}
!1978 = !{!1979}
!1979 = distinct !{!1979, !1980, !"ext_4005d0_getenv: argument 0"}
!1980 = distinct !{!1980, !"ext_4005d0_getenv"}
!1981 = !{!1982}
!1982 = distinct !{!1982, !1980, !"ext_4005d0_getenv: argument 1"}
!1983 = !{!1984}
!1984 = distinct !{!1984, !1985, !"ext_400630_malloc: argument 0"}
!1985 = distinct !{!1985, !"ext_400630_malloc"}
!1986 = !{!1987}
!1987 = distinct !{!1987, !1985, !"ext_400630_malloc: argument 1"}
!1988 = !{!1989}
!1989 = distinct !{!1989, !1990, !"ext_400600_printf: argument 0"}
!1990 = distinct !{!1990, !"ext_400600_printf"}
!1991 = !{!1992}
!1992 = distinct !{!1992, !1990, !"ext_400600_printf: argument 1"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"ext_400600_printf: argument 0"}
!1995 = distinct !{!1995, !"ext_400600_printf"}
!1996 = !{!1997}
!1997 = distinct !{!1997, !1995, !"ext_400600_printf: argument 1"}
!1998 = !{!1999}
!1999 = distinct !{!1999, !2000, !"ext_400600_printf: argument 0"}
!2000 = distinct !{!2000, !"ext_400600_printf"}
!2001 = !{!2002}
!2002 = distinct !{!2002, !2000, !"ext_400600_printf: argument 1"}
!2003 = !{!2004}
!2004 = distinct !{!2004, !2005, !"ext_400600_printf: argument 0"}
!2005 = distinct !{!2005, !"ext_400600_printf"}
!2006 = !{!2007}
!2007 = distinct !{!2007, !2005, !"ext_400600_printf: argument 1"}
!2008 = !{!2009}
!2009 = distinct !{!2009, !2010, !"ext_6040b8_atoi: argument 0"}
!2010 = distinct !{!2010, !"ext_6040b8_atoi"}
!2011 = !{!2012}
!2012 = distinct !{!2012, !2010, !"ext_6040b8_atoi: argument 1"}
!2013 = !{!2014}
!2014 = distinct !{!2014, !2015, !"ext_6040a0_gettimeofday: argument 0"}
!2015 = distinct !{!2015, !"ext_6040a0_gettimeofday"}
!2016 = !{!2017}
!2017 = distinct !{!2017, !2015, !"ext_6040a0_gettimeofday: argument 1"}
!2018 = !{!2019}
!2019 = distinct !{!2019, !2020, !"ext_604088_free: argument 0"}
!2020 = distinct !{!2020, !"ext_604088_free"}
!2021 = !{!2022}
!2022 = distinct !{!2022, !2020, !"ext_604088_free: argument 1"}
!2023 = !{!2024}
!2024 = distinct !{!2024, !2025, !"ext_400600_printf: argument 0"}
!2025 = distinct !{!2025, !"ext_400600_printf"}
!2026 = !{!2027}
!2027 = distinct !{!2027, !2025, !"ext_400600_printf: argument 1"}
!2028 = !{!2029}
!2029 = distinct !{!2029, !2030, !"ext_400600_printf: argument 0"}
!2030 = distinct !{!2030, !"ext_400600_printf"}
!2031 = !{!2032}
!2032 = distinct !{!2032, !2030, !"ext_400600_printf: argument 1"}
!2033 = !{!2034}
!2034 = distinct !{!2034, !2035, !"ext_400600_printf: argument 0"}
!2035 = distinct !{!2035, !"ext_400600_printf"}
!2036 = !{!2037}
!2037 = distinct !{!2037, !2035, !"ext_400600_printf: argument 1"}
!2038 = !{!2039}
!2039 = distinct !{!2039, !2040, !"ext_400600_printf: argument 0"}
!2040 = distinct !{!2040, !"ext_400600_printf"}
!2041 = !{!2042}
!2042 = distinct !{!2042, !2040, !"ext_400600_printf: argument 1"}
!2043 = !{!2044}
!2044 = distinct !{!2044, !2045, !"ext_400600_printf: argument 0"}
!2045 = distinct !{!2045, !"ext_400600_printf"}
!2046 = !{!2047}
!2047 = distinct !{!2047, !2045, !"ext_400600_printf: argument 1"}
!2048 = !{!2049}
!2049 = distinct !{!2049, !2050, !"ext_400600_printf: argument 0"}
!2050 = distinct !{!2050, !"ext_400600_printf"}
!2051 = !{!2052}
!2052 = distinct !{!2052, !2050, !"ext_400600_printf: argument 1"}
!2053 = !{!2054}
!2054 = distinct !{!2054, !2055, !"ext_400600_printf: argument 0"}
!2055 = distinct !{!2055, !"ext_400600_printf"}
!2056 = !{!2057}
!2057 = distinct !{!2057, !2055, !"ext_400600_printf: argument 1"}
!2058 = !{!2059}
!2059 = distinct !{!2059, !2060, !"ext_6040a0_gettimeofday: argument 0"}
!2060 = distinct !{!2060, !"ext_6040a0_gettimeofday"}
!2061 = !{!2062}
!2062 = distinct !{!2062, !2060, !"ext_6040a0_gettimeofday: argument 1"}
!2063 = !{!2064, !2064, i64 0}
!2064 = !{!"float", !1949, i64 0}
!2065 = !{!1949, !1949, i64 0}
!2066 = !{!2067}
!2067 = distinct !{!2067, !2068, !"ext_400600_printf: argument 0"}
!2068 = distinct !{!2068, !"ext_400600_printf"}
!2069 = !{!2070}
!2070 = distinct !{!2070, !2068, !"ext_400600_printf: argument 1"}
!2071 = !{!2072}
!2072 = distinct !{!2072, !2073, !"ext_6040c8___gmon_start__: argument 0"}
!2073 = distinct !{!2073, !"ext_6040c8___gmon_start__"}
!2074 = !{!2075}
!2075 = distinct !{!2075, !2073, !"ext_6040c8___gmon_start__: argument 1"}
!2076 = !{!2077}
!2077 = distinct !{!2077, !2078, !"ext_4005f0_clock: argument 0"}
!2078 = distinct !{!2078, !"ext_4005f0_clock"}
!2079 = !{!2080}
!2080 = distinct !{!2080, !2078, !"ext_4005f0_clock: argument 1"}
