; ModuleID = 'pca.bc'

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

target triple = "x86_64-pc-linux-gnu-elf"



%union.anon = type { i64 }

%seg_400dd0__rodata_type = type <{ [4 x i8], [7 x i8], [54 x i8], [71 x i8], [21 x i8], [21 x i8], [33 x i8], [6 x i8] }>

%seg_601e00__init_array_type = type <{ i64, i64 }>

%seg_601e10__jcr_type = type <{ [8 x i8] }>

%seg_601ff8__got_type = type <{ i64 }>

%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64 }>

%seg_602060__bss_type = type <{ [8 x i8], [4 x i8] }>

%num_cols_type = type <{ [4 x i8] }>

%num_rows_type = type <{ [4 x i8] }>

%grid_size_type = type <{ [4 x i8] }>

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

@optarg = external global i64, align 32

@seg_400dd0__rodata = internal constant %seg_400dd0__rodata_type <{ [4 x i8] c"\01\00\02\00", [7 x i8] c"r:c:s:\00", [54 x i8] c"Usage: %s -r <num_rows> -c <num_cols> -s <max value>\0A\00", [71 x i8] c"Illegal argument value. All values must be numeric and greater than 0\0A\00", [21 x i8] c"Number of rows = %d\0A\00", [21 x i8] c"Number of cols = %d\0A\00", [33 x i8] c"Max value for each element = %d\0A\00", [6 x i8] c"Done\0A\00" }>

@seg_601e00__init_array = internal global %seg_601e00__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400750_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400730___do_global_dtors_aux to i64) }>

@seg_601e10__jcr = internal global %seg_601e10__jcr_type zeroinitializer

@seg_601ff8__got = internal global %seg_601ff8__got_type <{ i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>

@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] c"\18\1E`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSSprintf to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @SSSSS__libc_start_main to i64), i64 ptrtoint (i64 (i64)* @SSSSSmalloc to i64), i64 ptrtoint (i64 (i64, i64, i64)* @SSSSSgetopt to i64), i64 ptrtoint (i64 (i64)* @SSSSSatoi to i64), i64 ptrtoint (i64 (i64)* @SSSSSexit to i64), i64 ptrtoint (i64 ()* @SSSSSrand to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer

@num_cols = global %num_cols_type zeroinitializer

@num_rows = global %num_rows_type zeroinitializer

@grid_size = global %grid_size_type zeroinitializer

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

declare extern_weak x86_64_sysvcc i64 @SSSSSexit(i64) #2
declare i64 @exit(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSmalloc(i64) #2
declare i64 @malloc(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSgetopt(i64, i64, i64) #2
declare i64 @getopt(i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #2



; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSrand() #2
declare i64 @rand() #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2
declare i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSSatoi(i64) #2
declare i64 @atoi(i64) #2


; Function Attrs: noinline

declare extern_weak x86_64_sysvcc i64 @SSSSS__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2
declare i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2


; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400dc0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_400dc0:

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



; Function Attrs: noinline

define %struct.Memory* @sub_400680__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {

block_400680:

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

  store i8 0, i8* %13, align 1, !tbaa !1951

  %25 = trunc i64 %21 to i32

  %26 = and i32 %25, 240

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #6

  %28 = and i32 %27, 1

  %29 = xor i32 %28, 1

  %30 = trunc i32 %29 to i8

  store i8 %30, i8* %14, align 1, !tbaa !1965

  %31 = icmp eq i64 %24, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %15, align 1, !tbaa !1966

  %33 = lshr i64 %21, 63

  %34 = trunc i64 %33 to i8

  store i8 %34, i8* %16, align 1, !tbaa !1967

  store i8 0, i8* %17, align 1, !tbaa !1968

  store i8 0, i8* %18, align 1, !tbaa !1969

  %35 = load i64, i64* %4, align 8

  %36 = add i64 %24, -8

  %37 = inttoptr i64 %36 to i64*

  store i64 %35, i64* %37

  %38 = add i64 %24, -16

  %39 = inttoptr i64 %38 to i64*

  store i64 %36, i64* %39

  store i64 ptrtoint (i64 ()* @callback_sub_400dc0___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1947

  store i64 ptrtoint (i64 ()* @callback_sub_400d50___libc_csu_init to i64), i64* %5, align 8, !tbaa !1947

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

  store i64 %38, i64* %9, align 8, !alias.scope !1970, !noalias !1973

  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_400d50___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_400dc0___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1970

  store i64 %50, i64* %4, align 8, !alias.scope !1970, !noalias !1973

  %51 = add i64 %49, 1

  store i64 %51, i64* %3, align 8

  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)

  ret %struct.Memory* %52

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400ac0_calc_cov(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_400ac0:

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

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %14 = load i64, i64* %12, align 8

  %15 = load i64, i64* %11, align 1, !tbaa !1947

  %16 = add i64 %15, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %14, i64* %17

  store i64 %16, i64* %11, align 8, !tbaa !1947

  store i64 %16, i64* %12, align 8, !tbaa !1947

  %18 = add i64 %15, -16

  %19 = load i64, i64* %10, align 8

  %20 = inttoptr i64 %18 to i64*

  store i64 %19, i64* %20

  %21 = add i64 %15, -24

  %22 = load i64, i64* %9, align 8

  %23 = inttoptr i64 %21 to i64*

  store i64 %22, i64* %23

  %24 = add i64 %15, -32

  %25 = load i64, i64* %8, align 8

  %26 = inttoptr i64 %24 to i64*

  store i64 %25, i64* %26

  %27 = add i64 %15, -36

  %28 = add i64 %1, 23

  %29 = inttoptr i64 %27 to i32*

  store i32 0, i32* %29

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  br label %block_400ad7



block_400afd:                                     ; preds = %block_400aed

  %37 = add i64 %190, -40

  %38 = inttoptr i64 %37 to i32*

  store i32 0, i32* %38

  %39 = add i64 %190, -36

  %40 = add i64 %208, 14

  %41 = inttoptr i64 %39 to i32*

  store i32 0, i32* %41

  %42 = add i64 %190, -28

  %43 = add i64 %190, -8

  %44 = add i64 %190, -16

  br label %block_400b0b



block_400b73:                                     ; preds = %block_400b0b

  %45 = phi i32 [ %188, %block_400b0b ]

  %46 = phi i64 [ %186, %block_400b0b ]

  %47 = phi i32 [ %178, %block_400b0b ]

  %48 = phi i32 [ %174, %block_400b0b ]

  %49 = phi %struct.Memory* [ %171, %block_400b0b ]

  %50 = zext i32 %45 to i64

  store i64 %50, i64* %6, align 8, !tbaa !1947

  %51 = add i32 %48, -1

  %52 = zext i32 %51 to i64

  store i64 %52, i64* %7, align 8, !tbaa !1947

  %53 = icmp eq i32 %48, 0

  %54 = zext i1 %53 to i8

  store i8 %54, i8* %30, align 1, !tbaa !1951

  %55 = and i32 %51, 255

  %56 = tail call i32 @llvm.ctpop.i32(i32 %55) #6

  %57 = and i32 %56, 1

  %58 = xor i32 %57, 1

  %59 = trunc i32 %58 to i8

  store i8 %59, i8* %31, align 1, !tbaa !1965

  %60 = xor i32 %51, %48

  %61 = lshr i32 %60, 4

  %62 = trunc i32 %61 to i8

  %63 = and i8 %62, 1

  store i8 %63, i8* %32, align 1, !tbaa !1969

  %64 = icmp eq i32 %48, 1

  %65 = zext i1 %64 to i8

  store i8 %65, i8* %33, align 1, !tbaa !1966

  %66 = lshr i32 %51, 31

  %67 = trunc i32 %66 to i8

  store i8 %67, i8* %34, align 1, !tbaa !1967

  %68 = xor i32 %66, %47

  %69 = add nuw nsw i32 %68, %47

  %70 = icmp eq i32 %69, 2

  %71 = zext i1 %70 to i8

  store i8 %71, i8* %35, align 1, !tbaa !1968

  %72 = sext i32 %45 to i64

  %73 = lshr i64 %72, 32

  store i64 %73, i64* %8, align 8, !tbaa !1947

  %74 = add i64 %46, 16

  store i64 %74, i64* %3, align 8

  %75 = zext i32 %45 to i64

  %76 = sext i32 %51 to i64

  %77 = shl nuw i64 %73, 32

  %78 = or i64 %77, %75

  %79 = sdiv i64 %78, %76

  %80 = shl i64 %79, 32

  %81 = ashr exact i64 %80, 32

  %82 = icmp eq i64 %79, %81

  br i1 %82, label %88, label %83



; <label>:83                                      ; preds = %block_400b73

  %84 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %74, %struct.Memory* %49) #11

  %85 = load i64, i64* %12, align 8

  %86 = load i64, i64* %3, align 8

  %87 = load i32, i32* %5, align 4

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:88                                      ; preds = %block_400b73

  %89 = srem i64 %78, %76

  %90 = and i64 %89, 4294967295

  store i64 %90, i64* %36, align 8, !tbaa !1947

  %91 = trunc i64 %79 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %88, %83

  %92 = phi i32 [ %87, %83 ], [ %91, %88 ]

  %93 = phi i64 [ %86, %83 ], [ %74, %88 ]

  %94 = phi i64 [ %85, %83 ], [ %190, %88 ]

  %95 = phi %struct.Memory* [ %84, %83 ], [ %49, %88 ]

  %96 = add i64 %94, -28

  %97 = inttoptr i64 %96 to i32*

  %98 = load i32, i32* %97

  %99 = sext i32 %98 to i64

  %100 = add i64 %94, -32

  %101 = inttoptr i64 %100 to i32*

  %102 = load i32, i32* %101

  %103 = sext i32 %102 to i64

  %104 = add i64 %94, -24

  %105 = inttoptr i64 %104 to i64*

  %106 = load i64, i64* %105

  %107 = shl nsw i64 %103, 3

  %108 = add i64 %107, %106

  %109 = inttoptr i64 %108 to i64*

  %110 = load i64, i64* %109

  %111 = shl nsw i64 %99, 2

  %112 = add i64 %111, %110

  %113 = inttoptr i64 %112 to i32*

  store i32 %92, i32* %113

  %114 = inttoptr i64 %100 to i32*

  %115 = load i32, i32* %114

  %116 = sext i32 %115 to i64

  store i64 %116, i64* %9, align 8, !tbaa !1947

  %117 = inttoptr i64 %96 to i32*

  %118 = load i32, i32* %117

  %119 = sext i32 %118 to i64

  %120 = inttoptr i64 %104 to i64*

  %121 = load i64, i64* %120

  store i64 %121, i64* %13, align 8, !tbaa !1947

  %122 = shl nsw i64 %119, 3

  %123 = add i64 %122, %121

  %124 = inttoptr i64 %123 to i64*

  %125 = load i64, i64* %124

  store i64 %125, i64* %10, align 8, !tbaa !1947

  %126 = shl nsw i64 %116, 2

  %127 = add i64 %126, %125

  %128 = inttoptr i64 %127 to i32*

  store i32 %92, i32* %128

  %129 = inttoptr i64 %100 to i32*

  %130 = load i32, i32* %129

  %131 = add i32 %130, 1

  %132 = inttoptr i64 %100 to i32*

  store i32 %131, i32* %132

  %133 = add i64 %93, -150

  br label %block_400aed



block_400ad7:                                     ; preds = %block_400bb7, %block_400ac0

  %134 = phi i64 [ %28, %block_400ac0 ], [ %274, %block_400bb7 ]

  %135 = phi i64 [ %16, %block_400ac0 ], [ %268, %block_400bb7 ]

  %136 = phi %struct.Memory* [ %2, %block_400ac0 ], [ %267, %block_400bb7 ]

  %137 = add i64 %135, -28

  %138 = inttoptr i64 %137 to i32*

  %139 = load i32, i32* %138

  %140 = zext i32 %139 to i64

  store i64 %140, i64* %6, align 8, !tbaa !1947

  %141 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %142 = sub i32 %139, %141

  %143 = icmp ult i32 %139, %141

  %144 = zext i1 %143 to i8

  store i8 %144, i8* %30, align 1, !tbaa !1951

  %145 = and i32 %142, 255

  %146 = tail call i32 @llvm.ctpop.i32(i32 %145) #6

  %147 = and i32 %146, 1

  %148 = xor i32 %147, 1

  %149 = trunc i32 %148 to i8

  store i8 %149, i8* %31, align 1, !tbaa !1965

  %150 = xor i32 %141, %139

  %151 = xor i32 %150, %142

  %152 = lshr i32 %151, 4

  %153 = trunc i32 %152 to i8

  %154 = and i8 %153, 1

  store i8 %154, i8* %32, align 1, !tbaa !1969

  %155 = icmp eq i32 %139, %141

  %156 = zext i1 %155 to i8

  store i8 %156, i8* %33, align 1, !tbaa !1966

  %157 = lshr i32 %142, 31

  %158 = trunc i32 %157 to i8

  store i8 %158, i8* %34, align 1, !tbaa !1967

  %159 = lshr i32 %139, 31

  %160 = lshr i32 %141, 31

  %161 = xor i32 %160, %159

  %162 = xor i32 %157, %159

  %163 = add nuw nsw i32 %162, %161

  %164 = icmp eq i32 %163, 2

  %165 = zext i1 %164 to i8

  store i8 %165, i8* %35, align 1, !tbaa !1968

  %166 = icmp ne i8 %158, 0

  %167 = xor i1 %166, %164

  %168 = select i1 %167, i64 16, i64 243

  %169 = add i64 %134, %168

  br i1 %167, label %block_400ae7, label %block_400bca



block_400b0b:                                     ; preds = %block_400b1b, %block_400afd

  %170 = phi i64 [ %40, %block_400afd ], [ %265, %block_400b1b ]

  %171 = phi %struct.Memory* [ %191, %block_400afd ], [ %171, %block_400b1b ]

  %172 = inttoptr i64 %39 to i32*

  %173 = load i32, i32* %172

  %174 = load i32, i32* bitcast (%num_cols_type* @num_cols to i32*)

  %175 = sub i32 %173, %174

  %176 = lshr i32 %175, 31

  %177 = lshr i32 %173, 31

  %178 = lshr i32 %174, 31

  %179 = xor i32 %178, %177

  %180 = xor i32 %176, %177

  %181 = add nuw nsw i32 %180, %179

  %182 = icmp eq i32 %181, 2

  %183 = icmp ne i32 %176, 0

  %184 = xor i1 %183, %182

  %185 = select i1 %184, i64 16, i64 104

  %186 = add i64 %170, %185

  %187 = inttoptr i64 %37 to i32*

  %188 = load i32, i32* %187

  br i1 %184, label %block_400b1b, label %block_400b73



block_400aed:                                     ; preds = %block_400ae7, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

  %189 = phi i64 [ %276, %block_400ae7 ], [ %133, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]

  %190 = phi i64 [ %135, %block_400ae7 ], [ %94, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]

  %191 = phi %struct.Memory* [ %136, %block_400ae7 ], [ %95, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]

  %192 = add i64 %190, -32

  %193 = inttoptr i64 %192 to i32*

  %194 = load i32, i32* %193

  %195 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %196 = sub i32 %194, %195

  %197 = lshr i32 %196, 31

  %198 = trunc i32 %197 to i8

  %199 = lshr i32 %194, 31

  %200 = lshr i32 %195, 31

  %201 = xor i32 %200, %199

  %202 = xor i32 %197, %199

  %203 = add nuw nsw i32 %202, %201

  %204 = icmp eq i32 %203, 2

  %205 = icmp ne i8 %198, 0

  %206 = xor i1 %205, %204

  %207 = select i1 %206, i64 16, i64 202

  %208 = add i64 %189, %207

  br i1 %206, label %block_400afd, label %block_400bb7



block_400bca:                                     ; preds = %block_400ad7

  %209 = phi %struct.Memory* [ %136, %block_400ad7 ]

  %210 = load i64, i64* %11, align 1, !tbaa !1947

  %211 = add i64 %210, 8

  %212 = inttoptr i64 %210 to i64*

  %213 = load i64, i64* %212

  store i64 %213, i64* %12, align 8, !tbaa !1947

  %214 = inttoptr i64 %211 to i64*

  %215 = load i64, i64* %214

  store i64 %215, i64* %3, align 8, !tbaa !1947

  %216 = add i64 %210, 16

  store i64 %216, i64* %11, align 8, !tbaa !1947

  ret %struct.Memory* %209



block_400b1b:                                     ; preds = %block_400b0b

  %217 = sext i32 %173 to i64

  %218 = inttoptr i64 %42 to i32*

  %219 = load i32, i32* %218

  %220 = sext i32 %219 to i64

  %221 = inttoptr i64 %43 to i64*

  %222 = load i64, i64* %221

  %223 = shl nsw i64 %220, 3

  %224 = add i64 %223, %222

  %225 = inttoptr i64 %224 to i64*

  %226 = load i64, i64* %225

  %227 = shl nsw i64 %217, 2

  %228 = add i64 %227, %226

  %229 = inttoptr i64 %228 to i32*

  %230 = load i32, i32* %229

  %231 = inttoptr i64 %44 to i64*

  %232 = load i64, i64* %231

  %233 = shl nsw i64 %220, 2

  %234 = add i64 %233, %232

  %235 = inttoptr i64 %234 to i32*

  %236 = load i32, i32* %235

  %237 = sub i32 %230, %236

  %238 = inttoptr i64 %192 to i32*

  %239 = load i32, i32* %238

  %240 = sext i32 %239 to i64

  store i64 %222, i64* %9, align 8, !tbaa !1947

  %241 = shl nsw i64 %240, 3

  %242 = add i64 %241, %222

  %243 = inttoptr i64 %242 to i64*

  %244 = load i64, i64* %243

  %245 = add i64 %227, %244

  %246 = inttoptr i64 %245 to i32*

  %247 = load i32, i32* %246

  %248 = shl nsw i64 %240, 2

  %249 = add i64 %248, %232

  %250 = inttoptr i64 %249 to i32*

  %251 = load i32, i32* %250

  %252 = sub i32 %247, %251

  %253 = zext i32 %252 to i64

  store i64 %253, i64* %13, align 8, !tbaa !1947

  %254 = sext i32 %237 to i64

  %255 = sext i32 %252 to i64

  %256 = mul nsw i64 %255, %254

  %257 = and i64 %256, 4294967295

  store i64 %257, i64* %10, align 8, !tbaa !1947

  %258 = trunc i64 %256 to i32

  %259 = add i32 %258, %188

  %260 = inttoptr i64 %37 to i32*

  store i32 %259, i32* %260

  %261 = inttoptr i64 %39 to i32*

  %262 = load i32, i32* %261

  %263 = add i32 %262, 1

  %264 = inttoptr i64 %39 to i32*

  store i32 %263, i32* %264

  %265 = add i64 %186, -16

  br label %block_400b0b



block_400bb7:                                     ; preds = %block_400aed

  %266 = phi i64 [ %208, %block_400aed ]

  %267 = phi %struct.Memory* [ %191, %block_400aed ]

  %268 = phi i64 [ %190, %block_400aed ]

  %269 = add i64 %268, -28

  %270 = inttoptr i64 %269 to i32*

  %271 = load i32, i32* %270

  %272 = add i32 %271, 1

  %273 = inttoptr i64 %269 to i32*

  store i32 %272, i32* %273

  %274 = add i64 %266, -224

  br label %block_400ad7



block_400ae7:                                     ; preds = %block_400ad7

  %275 = add i64 %135, -32

  %276 = add i64 %169, 6

  %277 = inttoptr i64 %275 to i32*

  store i32 %139, i32* %277

  br label %block_400aed

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400a20_calc_mean(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_400a20:

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

  %13 = load i64, i64* %12, align 8

  %14 = load i64, i64* %11, align 1, !tbaa !1947

  %15 = add i64 %14, -8

  %16 = inttoptr i64 %15 to i64*

  store i64 %13, i64* %16

  store i64 %15, i64* %11, align 8, !tbaa !1947

  store i64 %15, i64* %12, align 8, !tbaa !1947

  %17 = add i64 %14, -16

  %18 = load i64, i64* %10, align 8

  %19 = inttoptr i64 %17 to i64*

  store i64 %18, i64* %19

  %20 = add i64 %14, -24

  %21 = load i64, i64* %9, align 8

  %22 = inttoptr i64 %20 to i64*

  store i64 %21, i64* %22

  %23 = add i64 %14, -36

  %24 = inttoptr i64 %23 to i32*

  store i32 0, i32* %24

  %25 = add i64 %14, -28

  %26 = add i64 %1, 26

  %27 = inttoptr i64 %25 to i32*

  store i32 0, i32* %27

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  br label %block_400a3a



block_400a3a:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400a20

  %35 = phi i64 [ %26, %block_400a20 ], [ %160, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %36 = phi i64 [ %15, %block_400a20 ], [ %144, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %37 = phi %struct.Memory* [ %2, %block_400a20 ], [ %145, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %38 = add i64 %36, -20

  %39 = inttoptr i64 %38 to i32*

  %40 = load i32, i32* %39

  %41 = zext i32 %40 to i64

  store i64 %41, i64* %6, align 8, !tbaa !1947

  %42 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %43 = sub i32 %40, %42

  %44 = icmp ult i32 %40, %42

  %45 = zext i1 %44 to i8

  store i8 %45, i8* %28, align 1, !tbaa !1951

  %46 = and i32 %43, 255

  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #6

  %48 = and i32 %47, 1

  %49 = xor i32 %48, 1

  %50 = trunc i32 %49 to i8

  store i8 %50, i8* %29, align 1, !tbaa !1965

  %51 = xor i32 %42, %40

  %52 = xor i32 %51, %43

  %53 = lshr i32 %52, 4

  %54 = trunc i32 %53 to i8

  %55 = and i8 %54, 1

  store i8 %55, i8* %30, align 1, !tbaa !1969

  %56 = icmp eq i32 %40, %42

  %57 = zext i1 %56 to i8

  store i8 %57, i8* %31, align 1, !tbaa !1966

  %58 = lshr i32 %43, 31

  %59 = trunc i32 %58 to i8

  store i8 %59, i8* %32, align 1, !tbaa !1967

  %60 = lshr i32 %40, 31

  %61 = lshr i32 %42, 31

  %62 = xor i32 %61, %60

  %63 = xor i32 %58, %60

  %64 = add nuw nsw i32 %63, %62

  %65 = icmp eq i32 %64, 2

  %66 = zext i1 %65 to i8

  store i8 %66, i8* %33, align 1, !tbaa !1968

  %67 = icmp ne i8 %59, 0

  %68 = xor i1 %67, %65

  %69 = select i1 %68, i64 16, i64 121

  %70 = add i64 %35, %69

  br i1 %68, label %block_400a4a, label %block_400ab3



block_400ab3:                                     ; preds = %block_400a3a

  %71 = phi %struct.Memory* [ %37, %block_400a3a ]

  %72 = load i64, i64* %11, align 1, !tbaa !1947

  %73 = add i64 %72, 8

  %74 = inttoptr i64 %72 to i64*

  %75 = load i64, i64* %74

  store i64 %75, i64* %12, align 8, !tbaa !1947

  %76 = inttoptr i64 %73 to i64*

  %77 = load i64, i64* %76

  store i64 %77, i64* %3, align 8, !tbaa !1947

  %78 = add i64 %72, 16

  store i64 %78, i64* %11, align 8, !tbaa !1947

  ret %struct.Memory* %71



block_400a58:                                     ; preds = %block_400a68, %block_400a4a

  %79 = phi i64 [ %164, %block_400a4a ], [ %190, %block_400a68 ]

  %80 = phi %struct.Memory* [ %37, %block_400a4a ], [ %80, %block_400a68 ]

  %81 = inttoptr i64 %163 to i32*

  %82 = load i32, i32* %81

  %83 = load i32, i32* bitcast (%num_cols_type* @num_cols to i32*)

  %84 = sub i32 %82, %83

  %85 = lshr i32 %84, 31

  %86 = trunc i32 %85 to i8

  %87 = lshr i32 %82, 31

  %88 = lshr i32 %83, 31

  %89 = xor i32 %88, %87

  %90 = xor i32 %85, %87

  %91 = add nuw nsw i32 %90, %89

  %92 = icmp eq i32 %91, 2

  %93 = icmp ne i8 %86, 0

  %94 = xor i1 %93, %92

  %95 = select i1 %94, i64 16, i64 55

  %96 = add i64 %79, %95

  br i1 %94, label %block_400a68, label %block_400a8f



block_400a8f:                                     ; preds = %block_400a58

  %97 = phi i64 [ %96, %block_400a58 ]

  %98 = phi i1 [ %92, %block_400a58 ]

  %99 = phi i8 [ %86, %block_400a58 ]

  %100 = phi i32 [ %84, %block_400a58 ]

  %101 = phi i32 [ %83, %block_400a58 ]

  %102 = phi i32 [ %82, %block_400a58 ]

  %103 = phi %struct.Memory* [ %80, %block_400a58 ]

  %104 = icmp ult i32 %102, %101

  %105 = zext i1 %104 to i8

  %106 = and i32 %100, 255

  %107 = tail call i32 @llvm.ctpop.i32(i32 %106) #6

  %108 = and i32 %107, 1

  %109 = xor i32 %108, 1

  %110 = trunc i32 %109 to i8

  %111 = xor i32 %101, %102

  %112 = xor i32 %111, %100

  %113 = lshr i32 %112, 4

  %114 = trunc i32 %113 to i8

  %115 = and i8 %114, 1

  %116 = icmp eq i32 %102, %101

  %117 = zext i1 %116 to i8

  %118 = zext i1 %98 to i8

  store i8 %105, i8* %28, align 1, !tbaa !1951

  store i8 %110, i8* %29, align 1, !tbaa !1965

  store i8 %115, i8* %30, align 1, !tbaa !1969

  store i8 %117, i8* %31, align 1, !tbaa !1966

  store i8 %99, i8* %32, align 1, !tbaa !1967

  store i8 %118, i8* %33, align 1, !tbaa !1968

  %119 = inttoptr i64 %161 to i32*

  %120 = load i32, i32* %119

  %121 = zext i32 %120 to i64

  store i64 %121, i64* %6, align 8, !tbaa !1947

  %122 = sext i32 %120 to i64

  %123 = lshr i64 %122, 32

  store i64 %123, i64* %8, align 8, !tbaa !1947

  %124 = add i64 %97, 11

  store i64 %124, i64* %3, align 8

  %125 = zext i32 %120 to i64

  %126 = sext i32 %101 to i64

  %127 = shl nuw i64 %123, 32

  %128 = or i64 %127, %125

  %129 = sdiv i64 %128, %126

  %130 = shl i64 %129, 32

  %131 = ashr exact i64 %130, 32

  %132 = icmp eq i64 %129, %131

  br i1 %132, label %138, label %133



; <label>:133                                     ; preds = %block_400a8f

  %134 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %124, %struct.Memory* %103) #11

  %135 = load i64, i64* %12, align 8

  %136 = load i64, i64* %3, align 8

  %137 = load i32, i32* %5, align 4

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:138                                     ; preds = %block_400a8f

  %139 = srem i64 %128, %126

  %140 = and i64 %139, 4294967295

  store i64 %140, i64* %34, align 8, !tbaa !1947

  %141 = trunc i64 %129 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %138, %133

  %142 = phi i32 [ %137, %133 ], [ %141, %138 ]

  %143 = phi i64 [ %136, %133 ], [ %124, %138 ]

  %144 = phi i64 [ %135, %133 ], [ %36, %138 ]

  %145 = phi %struct.Memory* [ %134, %133 ], [ %103, %138 ]

  %146 = add i64 %144, -20

  %147 = inttoptr i64 %146 to i32*

  %148 = load i32, i32* %147

  %149 = sext i32 %148 to i64

  store i64 %149, i64* %7, align 8, !tbaa !1947

  %150 = add i64 %144, -16

  %151 = inttoptr i64 %150 to i64*

  %152 = load i64, i64* %151

  store i64 %152, i64* %9, align 8, !tbaa !1947

  %153 = shl nsw i64 %149, 2

  %154 = add i64 %153, %152

  %155 = inttoptr i64 %154 to i32*

  store i32 %142, i32* %155

  %156 = inttoptr i64 %146 to i32*

  %157 = load i32, i32* %156

  %158 = add i32 %157, 1

  %159 = inttoptr i64 %146 to i32*

  store i32 %158, i32* %159

  %160 = add i64 %143, -96

  br label %block_400a3a



block_400a4a:                                     ; preds = %block_400a3a

  %161 = add i64 %36, -28

  %162 = inttoptr i64 %161 to i32*

  store i32 0, i32* %162

  %163 = add i64 %36, -24

  %164 = add i64 %70, 14

  %165 = inttoptr i64 %163 to i32*

  store i32 0, i32* %165

  %166 = add i64 %36, -8

  br label %block_400a58



block_400a68:                                     ; preds = %block_400a58

  %167 = sext i32 %82 to i64

  %168 = inttoptr i64 %38 to i32*

  %169 = load i32, i32* %168

  %170 = sext i32 %169 to i64

  %171 = inttoptr i64 %166 to i64*

  %172 = load i64, i64* %171

  %173 = shl nsw i64 %170, 3

  %174 = add i64 %173, %172

  %175 = inttoptr i64 %174 to i64*

  %176 = load i64, i64* %175

  store i64 %176, i64* %7, align 8, !tbaa !1947

  %177 = shl nsw i64 %167, 2

  %178 = add i64 %177, %176

  %179 = inttoptr i64 %178 to i32*

  %180 = load i32, i32* %179

  %181 = inttoptr i64 %161 to i32*

  %182 = load i32, i32* %181

  %183 = add i32 %182, %180

  %184 = zext i32 %183 to i64

  store i64 %184, i64* %9, align 8, !tbaa !1947

  %185 = inttoptr i64 %161 to i32*

  store i32 %183, i32* %185

  %186 = inttoptr i64 %163 to i32*

  %187 = load i32, i32* %186

  %188 = add i32 %187, 1

  %189 = inttoptr i64 %163 to i32*

  store i32 %188, i32* %189

  %190 = add i64 %96, -16

  br label %block_400a58

}



; Function Attrs: noinline

define %struct.Memory* @sub_400d50___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {

block_400d50:

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

  store i64 ptrtoint (%seg_601e00__init_array_type* @seg_601e00__init_array to i64), i64* %14, align 8, !tbaa !1947

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

  store i64 ashr (i64 sub (i64 add (i64 ptrtoint (%seg_601e00__init_array_type* @seg_601e00__init_array to i64), i64 8), i64 ptrtoint (%seg_601e00__init_array_type* @seg_601e00__init_array to i64)), i64 3), i64* %13, align 8, !tbaa !1947

  %47 = add i64 %1, -1928

  %48 = add i64 %1, 49

  %49 = add i64 %19, -64

  %50 = inttoptr i64 %49 to i64*

  store i64 %48, i64* %50

  store i64 %49, i64* %12, align 8, !tbaa !1947

  %51 = tail call %struct.Memory* @sub_4005c8__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)

  %52 = load i64, i64* %13, align 8

  %53 = load i64, i64* %3, align 8

  %54 = icmp eq i64 %52, 0

  %55 = select i1 %54, i64 37, i64 5

  %56 = add i64 %53, %55

  br i1 %54, label %block_400da6, label %block_400d86



block_400d86:                                     ; preds = %block_400d50

  store i64 0, i64* %8, align 8, !tbaa !1947

  store i8 0, i8* %41, align 1, !tbaa !1951

  store i8 1, i8* %42, align 1, !tbaa !1965

  store i8 1, i8* %44, align 1, !tbaa !1966

  store i8 0, i8* %45, align 1, !tbaa !1967

  store i8 0, i8* %46, align 1, !tbaa !1968

  store i8 0, i8* %43, align 1, !tbaa !1969

  %57 = add i64 %56, 10

  br label %block_400d90



block_400d90:                                     ; preds = %block_400d90, %block_400d86

  %58 = phi i64 [ 0, %block_400d86 ], [ %77, %block_400d90 ]

  %59 = phi i64 [ %57, %block_400d86 ], [ %105, %block_400d90 ]

  %60 = phi %struct.Memory* [ %51, %block_400d86 ], [ %74, %block_400d90 ]

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

  store i8 %82, i8* %41, align 1, !tbaa !1951

  %83 = trunc i64 %80 to i32

  %84 = and i32 %83, 255

  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #6

  %86 = and i32 %85, 1

  %87 = xor i32 %86, 1

  %88 = trunc i32 %87 to i8

  store i8 %88, i8* %42, align 1, !tbaa !1965

  %89 = xor i64 %79, %77

  %90 = xor i64 %89, %80

  %91 = lshr i64 %90, 4

  %92 = trunc i64 %91 to i8

  %93 = and i8 %92, 1

  store i8 %93, i8* %43, align 1, !tbaa !1969

  %94 = icmp eq i64 %77, %79

  %95 = zext i1 %94 to i8

  store i8 %95, i8* %44, align 1, !tbaa !1966

  %96 = lshr i64 %80, 63

  %97 = trunc i64 %96 to i8

  store i8 %97, i8* %45, align 1, !tbaa !1967

  %98 = lshr i64 %79, 63

  %99 = xor i64 %98, %78

  %100 = xor i64 %96, %78

  %101 = add nuw nsw i64 %100, %99

  %102 = icmp eq i64 %101, 2

  %103 = zext i1 %102 to i8

  store i8 %103, i8* %46, align 1, !tbaa !1968

  %104 = select i1 %94, i64 9, i64 -13

  %105 = add i64 %76, %104

  br i1 %94, label %block_400da6.loopexit, label %block_400d90



block_400da6.loopexit:                            ; preds = %block_400d90

  %106 = phi %struct.Memory* [ %74, %block_400d90 ]

  br label %block_400da6



block_400da6:                                     ; preds = %block_400da6.loopexit, %block_400d50

  %107 = phi %struct.Memory* [ %51, %block_400d50 ], [ %106, %block_400da6.loopexit ]

  %108 = load i64, i64* %12, align 8

  %109 = add i64 %108, 8

  %110 = icmp ugt i64 %108, -9

  %111 = zext i1 %110 to i8

  store i8 %111, i8* %41, align 1, !tbaa !1951

  %112 = trunc i64 %109 to i32

  %113 = and i32 %112, 255

  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #6

  %115 = and i32 %114, 1

  %116 = xor i32 %115, 1

  %117 = trunc i32 %116 to i8

  store i8 %117, i8* %42, align 1, !tbaa !1965

  %118 = xor i64 %109, %108

  %119 = lshr i64 %118, 4

  %120 = trunc i64 %119 to i8

  %121 = and i8 %120, 1

  store i8 %121, i8* %43, align 1, !tbaa !1969

  %122 = icmp eq i64 %109, 0

  %123 = zext i1 %122 to i8

  store i8 %123, i8* %44, align 1, !tbaa !1966

  %124 = lshr i64 %109, 63

  %125 = trunc i64 %124 to i8

  store i8 %125, i8* %45, align 1, !tbaa !1967

  %126 = lshr i64 %108, 63

  %127 = xor i64 %124, %126

  %128 = add nuw nsw i64 %127, %124

  %129 = icmp eq i64 %128, 2

  %130 = zext i1 %129 to i8

  store i8 %130, i8* %46, align 1, !tbaa !1968

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

define %struct.Memory* @sub_400dc4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_400dc4:

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

  store i8 %24, i8* %7, align 1, !tbaa !1951

  %25 = trunc i64 %5 to i32

  %26 = and i32 %25, 255

  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #6

  %28 = and i32 %27, 1

  %29 = xor i32 %28, 1

  %30 = trunc i32 %29 to i8

  store i8 %30, i8* %8, align 1, !tbaa !1965

  store i8 %12, i8* %13, align 1, !tbaa !1969

  %31 = icmp eq i64 %5, 0

  %32 = zext i1 %31 to i8

  store i8 %32, i8* %14, align 1, !tbaa !1966

  %33 = trunc i64 %17 to i8

  store i8 %33, i8* %16, align 1, !tbaa !1967

  store i8 %21, i8* %22, align 1, !tbaa !1968

  %34 = inttoptr i64 %5 to i64*

  %35 = load i64, i64* %34

  store i64 %35, i64* %3, align 8, !tbaa !1947

  %36 = add i64 %5, 8

  store i64 %36, i64* %4, align 8, !tbaa !1947

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400780_parse_args(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {

block_400780:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %12 = load i64, i64* %11, align 8

  %13 = load i64, i64* %10, align 1, !tbaa !1947

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  store i64 %14, i64* %11, align 8, !tbaa !1947

  %16 = add i64 %13, -72

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %23 = add i64 %13, -12

  %24 = load i32, i32* %5, align 4

  %25 = inttoptr i64 %23 to i32*

  store i32 %24, i32* %25

  %26 = add i64 %13, -24

  %27 = load i64, i64* %8, align 8

  %28 = inttoptr i64 %26 to i64*

  store i64 %27, i64* %28

  store i32 1000, i32* bitcast (%num_rows_type* @num_rows to i32*)

  store i32 1000, i32* bitcast (%num_cols_type* @num_cols to i32*)

  %29 = add i64 %1, 48

  store i32 1000, i32* bitcast (%grid_size_type* @grid_size to i32*)

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  br label %block_4007b0



block_4007fa:                                     ; preds = %block_4007e6

  %31 = inttoptr i64 %173 to i32*

  %32 = load i32, i32* %31

  %33 = add i32 %32, -114

  %34 = icmp eq i32 %32, 114

  %35 = add i64 %125, -36

  %36 = inttoptr i64 %35 to i32*

  store i32 %33, i32* %36

  %37 = select i1 %34, i64 45, i64 20

  %38 = add i64 %222, %37

  br i1 %34, label %block_400827, label %block_40080e



block_400897:                                     ; preds = %block_400840, %block_400822, %block_400859, %block_400827

  %39 = phi i64 [ %486, %block_400840 ], [ %203, %block_400827 ], [ %214, %block_400859 ], [ %459, %block_400822 ]

  %40 = phi %struct.Memory* [ %111, %block_400840 ], [ %111, %block_400827 ], [ %111, %block_400859 ], [ %111, %block_400822 ]

  %41 = add i64 %39, -231

  %42 = load i64, i64* %11, align 8

  %43 = load i64, i64* %10, align 1, !tbaa !1947

  br label %block_4007b0



block_400872:                                     ; preds = %block_4007d2

  %44 = phi i64 [ %178, %block_4007d2 ]

  %45 = phi %struct.Memory* [ %111, %block_4007d2 ]

  %46 = phi i64 [ %151, %block_4007d2 ]

  %47 = phi i64 [ %125, %block_4007d2 ]

  %48 = add i64 %47, -16

  %49 = inttoptr i64 %48 to i64*

  %50 = load i64, i64* %49

  %51 = inttoptr i64 %50 to i64*

  %52 = load i64, i64* %51

  store i64 %52, i64* %8, align 8, !tbaa !1947

  %53 = add i64 %44, 24

  %54 = load i64, i64* %10, align 1, !tbaa !1947

  %55 = add i64 %54, -8

  %56 = inttoptr i64 %55 to i64*

  store i64 %53, i64* %56

  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %59 = load i64, i64* %7, align 8, !alias.scope !1975, !noalias !1978

  %60 = load i64, i64* %57, align 8, !alias.scope !1975, !noalias !1978

  %61 = load i64, i64* %58, align 8, !alias.scope !1975, !noalias !1978

  %62 = inttoptr i64 %54 to i64*

  %63 = load i64, i64* %62

  %64 = add i64 %54, 8

  %65 = inttoptr i64 %64 to i64*

  %66 = load i64, i64* %65

  %67 = add i64 %54, 16

  %68 = inttoptr i64 %67 to i64*

  %69 = load i64, i64* %68

  %70 = add i64 %54, 24

  %71 = inttoptr i64 %70 to i64*

  %72 = load i64, i64* %71

  %73 = add i64 %54, 32

  %74 = inttoptr i64 %73 to i64*

  %75 = load i64, i64* %74

  %76 = add i64 %54, 40

  %77 = inttoptr i64 %76 to i64*

  %78 = load i64, i64* %77

  %79 = add i64 %54, 48

  %80 = inttoptr i64 %79 to i64*

  %81 = load i64, i64* %80

  %82 = add i64 %54, 56

  %83 = inttoptr i64 %82 to i64*

  %84 = load i64, i64* %83

  %85 = add i64 %54, 64

  %86 = inttoptr i64 %85 to i64*

  %87 = load i64, i64* %86

  %88 = add i64 %54, 72

  %89 = inttoptr i64 %88 to i64*

  %90 = load i64, i64* %89

  %91 = inttoptr i64 %55 to i64*

  %92 = load i64, i64* %91

  store i64 %92, i64* %3, align 8, !alias.scope !1975, !noalias !1978

  %93 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 11), i64 %52, i64 %59, i64 %46, i64 %60, i64 %61, i64 %63, i64 %66, i64 %69, i64 %72, i64 %75, i64 %78, i64 %81, i64 %84, i64 %87, i64 %90), !noalias !1975

  %94 = load i64, i64* %3, align 8

  store i64 1, i64* %9, align 8, !tbaa !1947

  %95 = load i64, i64* %11, align 8

  %96 = add i64 %95, -44

  %97 = trunc i64 %93 to i32

  %98 = inttoptr i64 %96 to i32*

  store i32 %97, i32* %98

  %99 = add i64 %94, 13

  %100 = load i64, i64* %10, align 1, !tbaa !1947

  %101 = add i64 %100, -8

  %102 = inttoptr i64 %101 to i64*

  store i64 %99, i64* %102

  %103 = inttoptr i64 %101 to i64*

  %104 = load i64, i64* %103

  store i64 %104, i64* %3, align 8, !alias.scope !1980, !noalias !1983

  %105 = tail call i64 @exit(i64 1), !noalias !1980

  store i64 %105, i64* %30, align 8, !alias.scope !1980, !noalias !1983

  %106 = load i64, i64* %3, align 8

  %107 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %106, %struct.Memory* %45)

  ret %struct.Memory* %107



block_4007b0:                                     ; preds = %block_400897, %block_400780

  %108 = phi i64 [ %16, %block_400780 ], [ %43, %block_400897 ]

  %109 = phi i64 [ %14, %block_400780 ], [ %42, %block_400897 ]

  %110 = phi i64 [ %29, %block_400780 ], [ %41, %block_400897 ]

  %111 = phi %struct.Memory* [ %2, %block_400780 ], [ %40, %block_400897 ]

  store i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 4), i64* %7, align 8, !tbaa !1947

  %112 = add i64 %109, -4

  %113 = inttoptr i64 %112 to i32*

  %114 = load i32, i32* %113

  %115 = zext i32 %114 to i64

  %116 = add i64 %109, -16

  %117 = inttoptr i64 %116 to i64*

  %118 = load i64, i64* %117

  store i64 %118, i64* %8, align 8, !tbaa !1947

  %119 = add i64 %110, 22

  %120 = add i64 %108, -8

  %121 = inttoptr i64 %120 to i64*

  store i64 %119, i64* %121

  %122 = inttoptr i64 %120 to i64*

  %123 = load i64, i64* %122

  store i64 %123, i64* %3, align 8, !alias.scope !1985, !noalias !1988

  store i64 %108, i64* %10, align 8, !alias.scope !1985, !noalias !1988

  %124 = tail call i64 @getopt(i64 %115, i64 %118, i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 4)), !noalias !1985

  %125 = load i64, i64* %11, align 8

  %126 = add i64 %125, -20

  %127 = trunc i64 %124 to i32

  %128 = load i64, i64* %3, align 8

  %129 = inttoptr i64 %126 to i32*

  store i32 %127, i32* %129

  %130 = icmp eq i32 %127, -1

  %131 = select i1 %130, i64 214, i64 12

  %132 = add i64 %128, %131

  br i1 %130, label %block_40089c, label %block_4007d2



block_4008b8:                                     ; preds = %block_4008aa

  %133 = load i32, i32* bitcast (%grid_size_type* @grid_size to i32*)

  store i8 0, i8* %17, align 1, !tbaa !1951

  %134 = and i32 %133, 255

  %135 = tail call i32 @llvm.ctpop.i32(i32 %134) #6

  %136 = and i32 %135, 1

  %137 = xor i32 %136, 1

  %138 = trunc i32 %137 to i8

  store i8 %138, i8* %18, align 1, !tbaa !1965

  store i8 0, i8* %19, align 1, !tbaa !1969

  %139 = icmp eq i32 %133, 0

  %140 = zext i1 %139 to i8

  store i8 %140, i8* %20, align 1, !tbaa !1966

  %141 = lshr i32 %133, 31

  %142 = trunc i32 %141 to i8

  store i8 %142, i8* %21, align 1, !tbaa !1967

  store i8 0, i8* %22, align 1, !tbaa !1968

  %143 = xor i1 %139, true

  %144 = icmp eq i8 %142, 0

  %145 = and i1 %144, %143

  %146 = select i1 %145, i64 44, i64 14

  %147 = add i64 %192, %146

  br i1 %145, label %block_4008e4, label %block_4008c6



block_4007d2:                                     ; preds = %block_4007b0

  %148 = inttoptr i64 %126 to i32*

  %149 = load i32, i32* %148

  %150 = add i32 %149, -63

  %151 = zext i32 %150 to i64

  store i64 %151, i64* %6, align 8, !tbaa !1947

  %152 = icmp ult i32 %149, 63

  %153 = zext i1 %152 to i8

  store i8 %153, i8* %17, align 1, !tbaa !1951

  %154 = and i32 %150, 255

  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #6

  %156 = and i32 %155, 1

  %157 = xor i32 %156, 1

  %158 = trunc i32 %157 to i8

  store i8 %158, i8* %18, align 1, !tbaa !1965

  %159 = xor i32 %149, 16

  %160 = xor i32 %159, %150

  %161 = lshr i32 %160, 4

  %162 = trunc i32 %161 to i8

  %163 = and i8 %162, 1

  store i8 %163, i8* %19, align 1, !tbaa !1969

  %164 = icmp eq i32 %149, 63

  %165 = zext i1 %164 to i8

  store i8 %165, i8* %20, align 1, !tbaa !1966

  %166 = lshr i32 %150, 31

  %167 = trunc i32 %166 to i8

  store i8 %167, i8* %21, align 1, !tbaa !1967

  %168 = lshr i32 %149, 31

  %169 = xor i32 %166, %168

  %170 = add nuw nsw i32 %169, %168

  %171 = icmp eq i32 %170, 2

  %172 = zext i1 %171 to i8

  store i8 %172, i8* %22, align 1, !tbaa !1968

  %173 = add i64 %125, -24

  %174 = inttoptr i64 %173 to i32*

  store i32 %149, i32* %174

  %175 = add i64 %125, -28

  %176 = inttoptr i64 %175 to i32*

  store i32 %150, i32* %176

  %177 = select i1 %164, i64 160, i64 20

  %178 = add i64 %132, %177

  br i1 %164, label %block_400872, label %block_4007e6



block_4008aa:                                     ; preds = %block_40089c

  %179 = load i32, i32* bitcast (%num_cols_type* @num_cols to i32*)

  store i8 0, i8* %17, align 1, !tbaa !1951

  %180 = and i32 %179, 255

  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #6

  %182 = and i32 %181, 1

  %183 = xor i32 %182, 1

  %184 = trunc i32 %183 to i8

  store i8 %184, i8* %18, align 1, !tbaa !1965

  store i8 0, i8* %19, align 1, !tbaa !1969

  %185 = icmp eq i32 %179, 0

  %186 = zext i1 %185 to i8

  store i8 %186, i8* %20, align 1, !tbaa !1966

  %187 = lshr i32 %179, 31

  %188 = trunc i32 %187 to i8

  store i8 %188, i8* %21, align 1, !tbaa !1967

  store i8 0, i8* %22, align 1, !tbaa !1968

  %189 = icmp ne i8 %188, 0

  %190 = or i1 %185, %189

  %191 = select i1 %190, i64 28, i64 14

  %192 = add i64 %475, %191

  br i1 %190, label %block_4008c6, label %block_4008b8



block_400827:                                     ; preds = %block_4007fa

  %193 = load i64, i64* @optarg

  %194 = add i64 %38, 13

  %195 = load i64, i64* %10, align 1, !tbaa !1947

  %196 = add i64 %195, -8

  %197 = inttoptr i64 %196 to i64*

  store i64 %194, i64* %197

  %198 = inttoptr i64 %196 to i64*

  %199 = load i64, i64* %198

  store i64 %199, i64* %3, align 8, !alias.scope !1990, !noalias !1993

  %200 = tail call i64 @atoi(i64 %193), !noalias !1990

  %201 = trunc i64 %200 to i32

  %202 = load i64, i64* %3, align 8

  store i32 %201, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %203 = add i64 %202, 99

  br label %block_400897



block_400859:                                     ; preds = %block_40080e

  %204 = load i64, i64* @optarg

  %205 = add i64 %230, 13

  %206 = load i64, i64* %10, align 1, !tbaa !1947

  %207 = add i64 %206, -8

  %208 = inttoptr i64 %207 to i64*

  store i64 %205, i64* %208

  %209 = inttoptr i64 %207 to i64*

  %210 = load i64, i64* %209

  store i64 %210, i64* %3, align 8, !alias.scope !1995, !noalias !1998

  %211 = tail call i64 @atoi(i64 %204), !noalias !1995

  %212 = trunc i64 %211 to i32

  %213 = load i64, i64* %3, align 8

  store i32 %212, i32* bitcast (%grid_size_type* @grid_size to i32*)

  %214 = add i64 %213, 49

  br label %block_400897



block_4007e6:                                     ; preds = %block_4007d2

  %215 = inttoptr i64 %173 to i32*

  %216 = load i32, i32* %215

  %217 = add i32 %216, -99

  %218 = icmp eq i32 %216, 99

  %219 = add i64 %125, -32

  %220 = inttoptr i64 %219 to i32*

  store i32 %217, i32* %220

  %221 = select i1 %218, i64 90, i64 20

  %222 = add i64 %178, %221

  br i1 %218, label %block_400840, label %block_4007fa



block_40080e:                                     ; preds = %block_4007fa

  %223 = inttoptr i64 %173 to i32*

  %224 = load i32, i32* %223

  %225 = add i32 %224, -115

  %226 = icmp eq i32 %224, 115

  %227 = add i64 %125, -40

  %228 = inttoptr i64 %227 to i32*

  store i32 %225, i32* %228

  %229 = select i1 %226, i64 75, i64 20

  %230 = add i64 %38, %229

  br i1 %226, label %block_400859, label %block_400822



block_4008c6:                                     ; preds = %block_40089c, %block_4008aa, %block_4008b8

  %231 = phi i64 [ %475, %block_40089c ], [ %192, %block_4008aa ], [ %147, %block_4008b8 ]

  %232 = add i64 %231, 17

  %233 = load i64, i64* %10, align 1, !tbaa !1947

  %234 = add i64 %233, -8

  %235 = inttoptr i64 %234 to i64*

  store i64 %232, i64* %235

  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %239 = load i64, i64* %8, align 8, !alias.scope !2000, !noalias !2003

  %240 = load i64, i64* %7, align 8, !alias.scope !2000, !noalias !2003

  %241 = load i64, i64* %236, align 8, !alias.scope !2000, !noalias !2003

  %242 = load i64, i64* %237, align 8, !alias.scope !2000, !noalias !2003

  %243 = load i64, i64* %238, align 8, !alias.scope !2000, !noalias !2003

  %244 = inttoptr i64 %233 to i64*

  %245 = load i64, i64* %244

  %246 = add i64 %233, 8

  %247 = inttoptr i64 %246 to i64*

  %248 = load i64, i64* %247

  %249 = add i64 %233, 16

  %250 = inttoptr i64 %249 to i64*

  %251 = load i64, i64* %250

  %252 = add i64 %233, 24

  %253 = inttoptr i64 %252 to i64*

  %254 = load i64, i64* %253

  %255 = add i64 %233, 32

  %256 = inttoptr i64 %255 to i64*

  %257 = load i64, i64* %256

  %258 = add i64 %233, 40

  %259 = inttoptr i64 %258 to i64*

  %260 = load i64, i64* %259

  %261 = add i64 %233, 48

  %262 = inttoptr i64 %261 to i64*

  %263 = load i64, i64* %262

  %264 = add i64 %233, 56

  %265 = inttoptr i64 %264 to i64*

  %266 = load i64, i64* %265

  %267 = add i64 %233, 64

  %268 = inttoptr i64 %267 to i64*

  %269 = load i64, i64* %268

  %270 = add i64 %233, 72

  %271 = inttoptr i64 %270 to i64*

  %272 = load i64, i64* %271

  %273 = inttoptr i64 %234 to i64*

  %274 = load i64, i64* %273

  store i64 %274, i64* %3, align 8, !alias.scope !2000, !noalias !2003

  %275 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 65), i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %245, i64 %248, i64 %251, i64 %254, i64 %257, i64 %260, i64 %263, i64 %266, i64 %269, i64 %272), !noalias !2000

  %276 = load i64, i64* %3, align 8

  store i64 1, i64* %9, align 8, !tbaa !1947

  %277 = load i64, i64* %11, align 8

  %278 = add i64 %277, -48

  %279 = trunc i64 %275 to i32

  %280 = inttoptr i64 %278 to i32*

  store i32 %279, i32* %280

  %281 = add i64 %276, 13

  %282 = load i64, i64* %10, align 1, !tbaa !1947

  %283 = add i64 %282, -8

  %284 = inttoptr i64 %283 to i64*

  store i64 %281, i64* %284

  %285 = inttoptr i64 %283 to i64*

  %286 = load i64, i64* %285

  store i64 %286, i64* %3, align 8, !alias.scope !2005, !noalias !2008

  %287 = tail call i64 @exit(i64 1), !noalias !2005

  store i64 %287, i64* %30, align 8, !alias.scope !2005, !noalias !2008

  %288 = load i64, i64* %3, align 8

  %289 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %288, %struct.Memory* %461)

  ret %struct.Memory* %289



block_4008e4:                                     ; preds = %block_4008b8

  %290 = zext i32 %462 to i64

  %291 = add i64 %147, 24

  %292 = load i64, i64* %10, align 1, !tbaa !1947

  %293 = add i64 %292, -8

  %294 = inttoptr i64 %293 to i64*

  store i64 %291, i64* %294

  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %298 = load i64, i64* %7, align 8, !alias.scope !2010, !noalias !2013

  %299 = load i64, i64* %295, align 8, !alias.scope !2010, !noalias !2013

  %300 = load i64, i64* %296, align 8, !alias.scope !2010, !noalias !2013

  %301 = load i64, i64* %297, align 8, !alias.scope !2010, !noalias !2013

  %302 = inttoptr i64 %292 to i64*

  %303 = load i64, i64* %302

  %304 = add i64 %292, 8

  %305 = inttoptr i64 %304 to i64*

  %306 = load i64, i64* %305

  %307 = add i64 %292, 16

  %308 = inttoptr i64 %307 to i64*

  %309 = load i64, i64* %308

  %310 = add i64 %292, 24

  %311 = inttoptr i64 %310 to i64*

  %312 = load i64, i64* %311

  %313 = add i64 %292, 32

  %314 = inttoptr i64 %313 to i64*

  %315 = load i64, i64* %314

  %316 = add i64 %292, 40

  %317 = inttoptr i64 %316 to i64*

  %318 = load i64, i64* %317

  %319 = add i64 %292, 48

  %320 = inttoptr i64 %319 to i64*

  %321 = load i64, i64* %320

  %322 = add i64 %292, 56

  %323 = inttoptr i64 %322 to i64*

  %324 = load i64, i64* %323

  %325 = add i64 %292, 64

  %326 = inttoptr i64 %325 to i64*

  %327 = load i64, i64* %326

  %328 = add i64 %292, 72

  %329 = inttoptr i64 %328 to i64*

  %330 = load i64, i64* %329

  %331 = inttoptr i64 %293 to i64*

  %332 = load i64, i64* %331

  store i64 %332, i64* %3, align 8, !alias.scope !2010, !noalias !2013

  %333 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 136), i64 %290, i64 %298, i64 %299, i64 %300, i64 %301, i64 %303, i64 %306, i64 %309, i64 %312, i64 %315, i64 %318, i64 %321, i64 %324, i64 %327, i64 %330), !noalias !2010

  %334 = load i64, i64* %3, align 8

  %335 = load i32, i32* bitcast (%num_cols_type* @num_cols to i32*)

  %336 = zext i32 %335 to i64

  %337 = load i64, i64* %11, align 8

  %338 = add i64 %337, -52

  %339 = trunc i64 %333 to i32

  %340 = inttoptr i64 %338 to i32*

  store i32 %339, i32* %340

  %341 = add i64 %334, 27

  %342 = load i64, i64* %10, align 1, !tbaa !1947

  %343 = add i64 %342, -8

  %344 = inttoptr i64 %343 to i64*

  store i64 %341, i64* %344

  %345 = load i64, i64* %7, align 8, !alias.scope !2015, !noalias !2018

  %346 = load i64, i64* %295, align 8, !alias.scope !2015, !noalias !2018

  %347 = load i64, i64* %296, align 8, !alias.scope !2015, !noalias !2018

  %348 = load i64, i64* %297, align 8, !alias.scope !2015, !noalias !2018

  %349 = inttoptr i64 %342 to i64*

  %350 = load i64, i64* %349

  %351 = add i64 %342, 8

  %352 = inttoptr i64 %351 to i64*

  %353 = load i64, i64* %352

  %354 = add i64 %342, 16

  %355 = inttoptr i64 %354 to i64*

  %356 = load i64, i64* %355

  %357 = add i64 %342, 24

  %358 = inttoptr i64 %357 to i64*

  %359 = load i64, i64* %358

  %360 = add i64 %342, 32

  %361 = inttoptr i64 %360 to i64*

  %362 = load i64, i64* %361

  %363 = add i64 %342, 40

  %364 = inttoptr i64 %363 to i64*

  %365 = load i64, i64* %364

  %366 = add i64 %342, 48

  %367 = inttoptr i64 %366 to i64*

  %368 = load i64, i64* %367

  %369 = add i64 %342, 56

  %370 = inttoptr i64 %369 to i64*

  %371 = load i64, i64* %370

  %372 = add i64 %342, 64

  %373 = inttoptr i64 %372 to i64*

  %374 = load i64, i64* %373

  %375 = add i64 %342, 72

  %376 = inttoptr i64 %375 to i64*

  %377 = load i64, i64* %376

  %378 = inttoptr i64 %343 to i64*

  %379 = load i64, i64* %378

  store i64 %379, i64* %3, align 8, !alias.scope !2015, !noalias !2018

  %380 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 157), i64 %336, i64 %345, i64 %346, i64 %347, i64 %348, i64 %350, i64 %353, i64 %356, i64 %359, i64 %362, i64 %365, i64 %368, i64 %371, i64 %374, i64 %377), !noalias !2015

  %381 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 178), i64* %9, align 8, !tbaa !1947

  %382 = load i32, i32* bitcast (%grid_size_type* @grid_size to i32*)

  %383 = zext i32 %382 to i64

  store i64 %383, i64* %8, align 8, !tbaa !1947

  %384 = load i64, i64* %11, align 8

  %385 = add i64 %384, -56

  %386 = trunc i64 %380 to i32

  %387 = inttoptr i64 %385 to i32*

  store i32 %386, i32* %387

  %388 = add i64 %381, 27

  %389 = load i64, i64* %10, align 1, !tbaa !1947

  %390 = add i64 %389, -8

  %391 = inttoptr i64 %390 to i64*

  store i64 %388, i64* %391

  %392 = load i64, i64* %7, align 8, !alias.scope !2020, !noalias !2023

  %393 = load i64, i64* %295, align 8, !alias.scope !2020, !noalias !2023

  %394 = load i64, i64* %296, align 8, !alias.scope !2020, !noalias !2023

  %395 = load i64, i64* %297, align 8, !alias.scope !2020, !noalias !2023

  %396 = inttoptr i64 %389 to i64*

  %397 = load i64, i64* %396

  %398 = add i64 %389, 8

  %399 = inttoptr i64 %398 to i64*

  %400 = load i64, i64* %399

  %401 = add i64 %389, 16

  %402 = inttoptr i64 %401 to i64*

  %403 = load i64, i64* %402

  %404 = add i64 %389, 24

  %405 = inttoptr i64 %404 to i64*

  %406 = load i64, i64* %405

  %407 = add i64 %389, 32

  %408 = inttoptr i64 %407 to i64*

  %409 = load i64, i64* %408

  %410 = add i64 %389, 40

  %411 = inttoptr i64 %410 to i64*

  %412 = load i64, i64* %411

  %413 = add i64 %389, 48

  %414 = inttoptr i64 %413 to i64*

  %415 = load i64, i64* %414

  %416 = add i64 %389, 56

  %417 = inttoptr i64 %416 to i64*

  %418 = load i64, i64* %417

  %419 = add i64 %389, 64

  %420 = inttoptr i64 %419 to i64*

  %421 = load i64, i64* %420

  %422 = add i64 %389, 72

  %423 = inttoptr i64 %422 to i64*

  %424 = load i64, i64* %423

  %425 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 178), i64 %383, i64 %392, i64 %393, i64 %394, i64 %395, i64 %397, i64 %400, i64 %403, i64 %406, i64 %409, i64 %412, i64 %415, i64 %418, i64 %421, i64 %424), !noalias !2020

  store i64 %425, i64* %30, align 8, !alias.scope !2020, !noalias !2023

  %426 = load i64, i64* %11, align 8

  %427 = add i64 %426, -60

  %428 = trunc i64 %425 to i32

  %429 = inttoptr i64 %427 to i32*

  store i32 %428, i32* %429

  %430 = load i64, i64* %10, align 8

  %431 = add i64 %430, 64

  %432 = icmp ugt i64 %430, -65

  %433 = zext i1 %432 to i8

  store i8 %433, i8* %17, align 1, !tbaa !1951

  %434 = trunc i64 %431 to i32

  %435 = and i32 %434, 255

  %436 = tail call i32 @llvm.ctpop.i32(i32 %435) #6

  %437 = and i32 %436, 1

  %438 = xor i32 %437, 1

  %439 = trunc i32 %438 to i8

  store i8 %439, i8* %18, align 1, !tbaa !1965

  %440 = xor i64 %431, %430

  %441 = lshr i64 %440, 4

  %442 = trunc i64 %441 to i8

  %443 = and i8 %442, 1

  store i8 %443, i8* %19, align 1, !tbaa !1969

  %444 = icmp eq i64 %431, 0

  %445 = zext i1 %444 to i8

  store i8 %445, i8* %20, align 1, !tbaa !1966

  %446 = lshr i64 %431, 63

  %447 = trunc i64 %446 to i8

  store i8 %447, i8* %21, align 1, !tbaa !1967

  %448 = lshr i64 %430, 63

  %449 = xor i64 %446, %448

  %450 = add nuw nsw i64 %449, %446

  %451 = icmp eq i64 %450, 2

  %452 = zext i1 %451 to i8

  store i8 %452, i8* %22, align 1, !tbaa !1968

  %453 = add i64 %430, 72

  %454 = inttoptr i64 %431 to i64*

  %455 = load i64, i64* %454

  store i64 %455, i64* %11, align 8, !tbaa !1947

  %456 = inttoptr i64 %453 to i64*

  %457 = load i64, i64* %456

  store i64 %457, i64* %3, align 8, !tbaa !1947

  %458 = add i64 %430, 80

  store i64 %458, i64* %10, align 8, !tbaa !1947

  ret %struct.Memory* %461



block_400822:                                     ; preds = %block_40080e

  %459 = add i64 %230, 117

  br label %block_400897



block_40089c:                                     ; preds = %block_4007b0

  %460 = phi i64 [ %132, %block_4007b0 ]

  %461 = phi %struct.Memory* [ %111, %block_4007b0 ]

  %462 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  store i8 0, i8* %17, align 1, !tbaa !1951

  %463 = and i32 %462, 255

  %464 = tail call i32 @llvm.ctpop.i32(i32 %463) #6

  %465 = and i32 %464, 1

  %466 = xor i32 %465, 1

  %467 = trunc i32 %466 to i8

  store i8 %467, i8* %18, align 1, !tbaa !1965

  store i8 0, i8* %19, align 1, !tbaa !1969

  %468 = icmp eq i32 %462, 0

  %469 = zext i1 %468 to i8

  store i8 %469, i8* %20, align 1, !tbaa !1966

  %470 = lshr i32 %462, 31

  %471 = trunc i32 %470 to i8

  store i8 %471, i8* %21, align 1, !tbaa !1967

  store i8 0, i8* %22, align 1, !tbaa !1968

  %472 = icmp ne i8 %471, 0

  %473 = or i1 %468, %472

  %474 = select i1 %473, i64 42, i64 14

  %475 = add i64 %460, %474

  br i1 %473, label %block_4008c6, label %block_4008aa



block_400840:                                     ; preds = %block_4007e6

  %476 = load i64, i64* @optarg

  %477 = add i64 %222, 13

  %478 = load i64, i64* %10, align 1, !tbaa !1947

  %479 = add i64 %478, -8

  %480 = inttoptr i64 %479 to i64*

  store i64 %477, i64* %480

  %481 = inttoptr i64 %479 to i64*

  %482 = load i64, i64* %481

  store i64 %482, i64* %3, align 8, !alias.scope !2025, !noalias !2028

  %483 = tail call i64 @atoi(i64 %476), !noalias !2025

  %484 = trunc i64 %483 to i32

  %485 = load i64, i64* %3, align 8

  store i32 %484, i32* bitcast (%num_cols_type* @num_cols to i32*)

  %486 = add i64 %485, 74

  br label %block_400897

}



; Function Attrs: noinline

define %struct.Memory* @sub_400670(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #4 {

block_400670:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = load i64, i64* %5, align 8, !alias.scope !2030, !noalias !2033

  %7 = inttoptr i64 %6 to i64*

  %8 = load i64, i64* %7

  store i64 %8, i64* %3, align 8, !alias.scope !2030, !noalias !2033

  %9 = add i64 %6, 8

  store i64 %9, i64* %5, align 8, !alias.scope !2030, !noalias !2033

  %10 = tail call i64 @__gmon_start__(), !noalias !2030

  store i64 %10, i64* %4, align 8, !alias.scope !2030, !noalias !2033

  ret %struct.Memory* %2

}



; Function Attrs: noinline

define %struct.Memory* @sub_400bd0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {

block_400bd0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %9 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %12 = load i64, i64* %11, align 8

  %13 = load i64, i64* %10, align 1, !tbaa !1947

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  store i64 %14, i64* %11, align 8, !tbaa !1947

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %22 = add i64 %13, -12

  %23 = inttoptr i64 %22 to i32*

  store i32 0, i32* %23

  %24 = add i64 %13, -16

  %25 = load i32, i32* %5, align 4

  %26 = inttoptr i64 %24 to i32*

  store i32 %25, i32* %26

  %27 = add i64 %13, -24

  %28 = load i64, i64* %8, align 8

  %29 = inttoptr i64 %27 to i64*

  store i64 %28, i64* %29

  %30 = inttoptr i64 %24 to i32*

  %31 = load i32, i32* %30

  %32 = zext i32 %31 to i64

  store i64 %32, i64* %9, align 8, !tbaa !1947

  %33 = inttoptr i64 %27 to i64*

  %34 = load i64, i64* %33

  store i64 %34, i64* %8, align 8, !tbaa !1947

  %35 = add i64 %1, -1104

  %36 = add i64 %1, 34

  %37 = add i64 %13, -80

  %38 = inttoptr i64 %37 to i64*

  store i64 %36, i64* %38

  store i64 %37, i64* %10, align 8, !tbaa !1947

  %39 = tail call %struct.Memory* @sub_400780_parse_args(%struct.State* nonnull %0, i64 %35, %struct.Memory* %2)

  %40 = load i64, i64* %3, align 8

  %41 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %42 = sext i32 %41 to i64

  %43 = shl nsw i64 %42, 3

  %44 = add i64 %40, 20

  %45 = load i64, i64* %10, align 1, !tbaa !1947

  %46 = add i64 %45, -8

  %47 = inttoptr i64 %46 to i64*

  store i64 %44, i64* %47

  %48 = inttoptr i64 %46 to i64*

  %49 = load i64, i64* %48

  store i64 %49, i64* %3, align 8, !alias.scope !2035, !noalias !2038

  %50 = tail call i64 @malloc(i64 %43), !noalias !2035

  %51 = load i64, i64* %11, align 8

  %52 = add i64 %51, -32

  %53 = load i64, i64* %3, align 8

  %54 = inttoptr i64 %52 to i64*

  store i64 %50, i64* %54

  %55 = add i64 %51, -20

  %56 = add i64 %53, 11

  %57 = inttoptr i64 %55 to i32*

  store i32 0, i32* %57

  br label %block_400c11



block_400cef:                                     ; preds = %block_400cb1

  %58 = phi i64 [ %262, %block_400cb1 ]

  %59 = phi %struct.Memory* [ %245, %block_400cb1 ]

  %60 = phi i64 [ %244, %block_400cb1 ]

  %61 = add i64 %60, -32

  %62 = inttoptr i64 %61 to i64*

  %63 = load i64, i64* %62

  store i64 %63, i64* %9, align 8, !tbaa !1947

  %64 = add i64 %60, -48

  %65 = inttoptr i64 %64 to i64*

  %66 = load i64, i64* %65

  store i64 %66, i64* %8, align 8, !tbaa !1947

  %67 = add i64 %58, -719

  %68 = add i64 %58, 13

  %69 = load i64, i64* %10, align 1, !tbaa !1947

  %70 = add i64 %69, -8

  %71 = inttoptr i64 %70 to i64*

  store i64 %68, i64* %71

  store i64 %70, i64* %10, align 8, !tbaa !1947

  %72 = tail call %struct.Memory* @sub_400a20_calc_mean(%struct.State* nonnull %0, i64 %67, %struct.Memory* %59)

  %73 = load i64, i64* %11, align 8

  %74 = add i64 %73, -32

  %75 = load i64, i64* %3, align 8

  %76 = inttoptr i64 %74 to i64*

  %77 = load i64, i64* %76

  store i64 %77, i64* %9, align 8, !tbaa !1947

  %78 = add i64 %73, -48

  %79 = inttoptr i64 %78 to i64*

  %80 = load i64, i64* %79

  store i64 %80, i64* %8, align 8, !tbaa !1947

  %81 = add i64 %73, -40

  %82 = inttoptr i64 %81 to i64*

  %83 = load i64, i64* %82

  store i64 %83, i64* %183, align 8, !tbaa !1947

  %84 = add i64 %75, -572

  %85 = add i64 %75, 17

  %86 = load i64, i64* %10, align 1, !tbaa !1947

  %87 = add i64 %86, -8

  %88 = inttoptr i64 %87 to i64*

  store i64 %85, i64* %88

  store i64 %87, i64* %10, align 8, !tbaa !1947

  %89 = tail call %struct.Memory* @sub_400ac0_calc_cov(%struct.State* nonnull %0, i64 %84, %struct.Memory* %72)

  %90 = load i64, i64* %11, align 8

  %91 = add i64 %90, -40

  %92 = load i64, i64* %3, align 8

  %93 = inttoptr i64 %91 to i64*

  %94 = load i64, i64* %93

  store i64 %94, i64* %9, align 8, !tbaa !1947

  %95 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %96 = zext i32 %95 to i64

  store i64 %96, i64* %8, align 8, !tbaa !1947

  store i64 %96, i64* %183, align 8, !tbaa !1947

  %97 = add i64 %92, -973

  %98 = add i64 %92, 23

  %99 = load i64, i64* %10, align 1, !tbaa !1947

  %100 = add i64 %99, -8

  %101 = inttoptr i64 %100 to i64*

  store i64 %98, i64* %101

  store i64 %100, i64* %10, align 8, !tbaa !1947

  %102 = tail call %struct.Memory* @sub_400940_dump_points(%struct.State* nonnull %0, i64 %97, %struct.Memory* %89)

  %103 = load i64, i64* %3, align 8

  store i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 211), i64* %9, align 8, !tbaa !1947

  %104 = add i64 %103, 17

  %105 = load i64, i64* %10, align 1, !tbaa !1947

  %106 = add i64 %105, -8

  %107 = inttoptr i64 %106 to i64*

  store i64 %104, i64* %107

  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %111 = load i64, i64* %8, align 8, !alias.scope !2040, !noalias !2043

  %112 = load i64, i64* %108, align 8, !alias.scope !2040, !noalias !2043

  %113 = load i64, i64* %7, align 8, !alias.scope !2040, !noalias !2043

  %114 = load i64, i64* %109, align 8, !alias.scope !2040, !noalias !2043

  %115 = load i64, i64* %110, align 8, !alias.scope !2040, !noalias !2043

  %116 = inttoptr i64 %105 to i64*

  %117 = load i64, i64* %116

  %118 = add i64 %105, 8

  %119 = inttoptr i64 %118 to i64*

  %120 = load i64, i64* %119

  %121 = add i64 %105, 16

  %122 = inttoptr i64 %121 to i64*

  %123 = load i64, i64* %122

  %124 = add i64 %105, 24

  %125 = inttoptr i64 %124 to i64*

  %126 = load i64, i64* %125

  %127 = add i64 %105, 32

  %128 = inttoptr i64 %127 to i64*

  %129 = load i64, i64* %128

  %130 = add i64 %105, 40

  %131 = inttoptr i64 %130 to i64*

  %132 = load i64, i64* %131

  %133 = add i64 %105, 48

  %134 = inttoptr i64 %133 to i64*

  %135 = load i64, i64* %134

  %136 = add i64 %105, 56

  %137 = inttoptr i64 %136 to i64*

  %138 = load i64, i64* %137

  %139 = add i64 %105, 64

  %140 = inttoptr i64 %139 to i64*

  %141 = load i64, i64* %140

  %142 = add i64 %105, 72

  %143 = inttoptr i64 %142 to i64*

  %144 = load i64, i64* %143

  %145 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_400dd0__rodata_type* @seg_400dd0__rodata to i64), i64 211), i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %117, i64 %120, i64 %123, i64 %126, i64 %129, i64 %132, i64 %135, i64 %138, i64 %141, i64 %144), !noalias !2040

  store i64 0, i64* %183, align 8, !tbaa !1947

  %146 = load i64, i64* %11, align 8

  %147 = add i64 %146, -52

  %148 = trunc i64 %145 to i32

  %149 = inttoptr i64 %147 to i32*

  store i32 %148, i32* %149

  store i64 0, i64* %6, align 8, !tbaa !1947

  %150 = load i64, i64* %10, align 8

  %151 = add i64 %150, 64

  %152 = icmp ugt i64 %150, -65

  %153 = zext i1 %152 to i8

  store i8 %153, i8* %16, align 1, !tbaa !1951

  %154 = trunc i64 %151 to i32

  %155 = and i32 %154, 255

  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #6

  %157 = and i32 %156, 1

  %158 = xor i32 %157, 1

  %159 = trunc i32 %158 to i8

  store i8 %159, i8* %17, align 1, !tbaa !1965

  %160 = xor i64 %151, %150

  %161 = lshr i64 %160, 4

  %162 = trunc i64 %161 to i8

  %163 = and i8 %162, 1

  store i8 %163, i8* %18, align 1, !tbaa !1969

  %164 = icmp eq i64 %151, 0

  %165 = zext i1 %164 to i8

  store i8 %165, i8* %19, align 1, !tbaa !1966

  %166 = lshr i64 %151, 63

  %167 = trunc i64 %166 to i8

  store i8 %167, i8* %20, align 1, !tbaa !1967

  %168 = lshr i64 %150, 63

  %169 = xor i64 %166, %168

  %170 = add nuw nsw i64 %169, %166

  %171 = icmp eq i64 %170, 2

  %172 = zext i1 %171 to i8

  store i8 %172, i8* %21, align 1, !tbaa !1968

  %173 = add i64 %150, 72

  %174 = inttoptr i64 %151 to i64*

  %175 = load i64, i64* %174

  store i64 %175, i64* %11, align 8, !tbaa !1947

  %176 = inttoptr i64 %173 to i64*

  %177 = load i64, i64* %176

  store i64 %177, i64* %3, align 8, !tbaa !1947

  %178 = add i64 %150, 80

  store i64 %178, i64* %10, align 8, !tbaa !1947

  ret %struct.Memory* %102



block_400c4f:                                     ; preds = %block_400c11

  %179 = phi i64 [ %309, %block_400c11 ]

  %180 = phi i32 [ %296, %block_400c11 ]

  %181 = phi %struct.Memory* [ %292, %block_400c11 ]

  %182 = phi i64 [ %291, %block_400c11 ]

  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %184 = add i64 %182, -32

  %185 = inttoptr i64 %184 to i64*

  %186 = load i64, i64* %185

  store i64 %186, i64* %9, align 8, !tbaa !1947

  %187 = zext i32 %180 to i64

  store i64 %187, i64* %8, align 8, !tbaa !1947

  %188 = load i32, i32* bitcast (%num_cols_type* @num_cols to i32*)

  %189 = zext i32 %188 to i64

  store i64 %189, i64* %183, align 8, !tbaa !1947

  %190 = add i64 %179, -687

  %191 = add i64 %179, 23

  %192 = load i64, i64* %10, align 1, !tbaa !1947

  %193 = add i64 %192, -8

  %194 = inttoptr i64 %193 to i64*

  store i64 %191, i64* %194

  store i64 %193, i64* %10, align 8, !tbaa !1947

  %195 = tail call %struct.Memory* @sub_4009a0_generate_points(%struct.State* nonnull %0, i64 %190, %struct.Memory* %181)

  %196 = load i64, i64* %11, align 8

  %197 = add i64 %196, -32

  %198 = load i64, i64* %3, align 8

  %199 = inttoptr i64 %197 to i64*

  %200 = load i64, i64* %199

  store i64 %200, i64* %9, align 8, !tbaa !1947

  %201 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %202 = zext i32 %201 to i64

  store i64 %202, i64* %8, align 8, !tbaa !1947

  %203 = load i32, i32* bitcast (%num_cols_type* @num_cols to i32*)

  %204 = zext i32 %203 to i64

  store i64 %204, i64* %183, align 8, !tbaa !1947

  %205 = add i64 %198, -806

  %206 = add i64 %198, 23

  %207 = load i64, i64* %10, align 1, !tbaa !1947

  %208 = add i64 %207, -8

  %209 = inttoptr i64 %208 to i64*

  store i64 %206, i64* %209

  store i64 %208, i64* %10, align 8, !tbaa !1947

  %210 = tail call %struct.Memory* @sub_400940_dump_points(%struct.State* nonnull %0, i64 %205, %struct.Memory* %195)

  %211 = load i64, i64* %3, align 8

  %212 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %213 = sext i32 %212 to i64

  %214 = shl nsw i64 %213, 2

  %215 = add i64 %211, 17

  %216 = load i64, i64* %10, align 1, !tbaa !1947

  %217 = add i64 %216, -8

  %218 = inttoptr i64 %217 to i64*

  store i64 %215, i64* %218

  %219 = inttoptr i64 %217 to i64*

  %220 = load i64, i64* %219

  store i64 %220, i64* %3, align 8, !alias.scope !2045, !noalias !2048

  %221 = tail call i64 @malloc(i64 %214), !noalias !2045

  %222 = load i64, i64* %11, align 8

  %223 = add i64 %222, -48

  %224 = load i64, i64* %3, align 8

  %225 = inttoptr i64 %223 to i64*

  store i64 %221, i64* %225

  %226 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %227 = sext i32 %226 to i64

  %228 = shl nsw i64 %227, 3

  %229 = add i64 %224, 24

  %230 = load i64, i64* %10, align 1, !tbaa !1947

  %231 = add i64 %230, -8

  %232 = inttoptr i64 %231 to i64*

  store i64 %229, i64* %232

  %233 = inttoptr i64 %231 to i64*

  %234 = load i64, i64* %233

  store i64 %234, i64* %3, align 8, !alias.scope !2050, !noalias !2053

  %235 = tail call i64 @malloc(i64 %228), !noalias !2050

  %236 = load i64, i64* %11, align 8

  %237 = add i64 %236, -40

  %238 = load i64, i64* %3, align 8

  %239 = inttoptr i64 %237 to i64*

  store i64 %235, i64* %239

  %240 = add i64 %236, -20

  %241 = add i64 %238, 11

  %242 = inttoptr i64 %240 to i32*

  store i32 0, i32* %242

  br label %block_400cb1



block_400cb1:                                     ; preds = %block_400cc1, %block_400c4f

  %243 = phi i64 [ %241, %block_400c4f ], [ %335, %block_400cc1 ]

  %244 = phi i64 [ %236, %block_400c4f ], [ %319, %block_400cc1 ]

  %245 = phi %struct.Memory* [ %210, %block_400c4f ], [ %245, %block_400cc1 ]

  %246 = add i64 %244, -20

  %247 = inttoptr i64 %246 to i32*

  %248 = load i32, i32* %247

  %249 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %250 = sub i32 %248, %249

  %251 = lshr i32 %250, 31

  %252 = trunc i32 %251 to i8

  %253 = lshr i32 %248, 31

  %254 = lshr i32 %249, 31

  %255 = xor i32 %254, %253

  %256 = xor i32 %251, %253

  %257 = add nuw nsw i32 %256, %255

  %258 = icmp eq i32 %257, 2

  %259 = icmp ne i8 %252, 0

  %260 = xor i1 %259, %258

  %261 = select i1 %260, i64 16, i64 62

  %262 = add i64 %243, %261

  br i1 %260, label %block_400cc1, label %block_400cef



block_400c21:                                     ; preds = %block_400c11

  %263 = load i32, i32* bitcast (%num_cols_type* @num_cols to i32*)

  %264 = sext i32 %263 to i64

  %265 = shl nsw i64 %264, 2

  %266 = add i64 %309, 20

  %267 = load i64, i64* %10, align 1, !tbaa !1947

  %268 = add i64 %267, -8

  %269 = inttoptr i64 %268 to i64*

  store i64 %266, i64* %269

  %270 = inttoptr i64 %268 to i64*

  %271 = load i64, i64* %270

  store i64 %271, i64* %3, align 8, !alias.scope !2055, !noalias !2058

  %272 = tail call i64 @malloc(i64 %265), !noalias !2055

  %273 = load i64, i64* %11, align 8

  %274 = add i64 %273, -20

  %275 = load i64, i64* %3, align 8

  %276 = inttoptr i64 %274 to i32*

  %277 = load i32, i32* %276

  %278 = sext i32 %277 to i64

  %279 = add i64 %273, -32

  %280 = inttoptr i64 %279 to i64*

  %281 = load i64, i64* %280

  store i64 %281, i64* %7, align 8, !tbaa !1947

  %282 = shl nsw i64 %278, 3

  %283 = add i64 %282, %281

  %284 = inttoptr i64 %283 to i64*

  store i64 %272, i64* %284

  %285 = inttoptr i64 %274 to i32*

  %286 = load i32, i32* %285

  %287 = add i32 %286, 1

  %288 = inttoptr i64 %274 to i32*

  store i32 %287, i32* %288

  %289 = add i64 %275, -36

  br label %block_400c11



block_400c11:                                     ; preds = %block_400c21, %block_400bd0

  %290 = phi i64 [ %56, %block_400bd0 ], [ %289, %block_400c21 ]

  %291 = phi i64 [ %51, %block_400bd0 ], [ %273, %block_400c21 ]

  %292 = phi %struct.Memory* [ %39, %block_400bd0 ], [ %292, %block_400c21 ]

  %293 = add i64 %291, -20

  %294 = inttoptr i64 %293 to i32*

  %295 = load i32, i32* %294

  %296 = load i32, i32* bitcast (%num_rows_type* @num_rows to i32*)

  %297 = sub i32 %295, %296

  %298 = lshr i32 %297, 31

  %299 = trunc i32 %298 to i8

  %300 = lshr i32 %295, 31

  %301 = lshr i32 %296, 31

  %302 = xor i32 %301, %300

  %303 = xor i32 %298, %300

  %304 = add nuw nsw i32 %303, %302

  %305 = icmp eq i32 %304, 2

  %306 = icmp ne i8 %299, 0

  %307 = xor i1 %306, %305

  %308 = select i1 %307, i64 16, i64 62

  %309 = add i64 %290, %308

  br i1 %307, label %block_400c21, label %block_400c4f



block_400cc1:                                     ; preds = %block_400cb1

  %310 = sext i32 %249 to i64

  %311 = shl nsw i64 %310, 2

  %312 = add i64 %262, 20

  %313 = load i64, i64* %10, align 1, !tbaa !1947

  %314 = add i64 %313, -8

  %315 = inttoptr i64 %314 to i64*

  store i64 %312, i64* %315

  %316 = inttoptr i64 %314 to i64*

  %317 = load i64, i64* %316

  store i64 %317, i64* %3, align 8, !alias.scope !2060, !noalias !2063

  %318 = tail call i64 @malloc(i64 %311), !noalias !2060

  %319 = load i64, i64* %11, align 8

  %320 = add i64 %319, -20

  %321 = load i64, i64* %3, align 8

  %322 = inttoptr i64 %320 to i32*

  %323 = load i32, i32* %322

  %324 = sext i32 %323 to i64

  %325 = add i64 %319, -40

  %326 = inttoptr i64 %325 to i64*

  %327 = load i64, i64* %326

  store i64 %327, i64* %7, align 8, !tbaa !1947

  %328 = shl nsw i64 %324, 3

  %329 = add i64 %328, %327

  %330 = inttoptr i64 %329 to i64*

  store i64 %318, i64* %330

  %331 = inttoptr i64 %320 to i32*

  %332 = load i32, i32* %331

  %333 = add i32 %332, 1

  %334 = inttoptr i64 %320 to i32*

  store i32 %333, i32* %334

  %335 = add i64 %321, -36

  br label %block_400cb1

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400730___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_400730:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*)

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  store i8 0, i8* %6, align 1, !tbaa !1951

  %7 = zext i8 %5 to i32

  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #6

  %9 = and i32 %8, 1

  %10 = xor i32 %9, 1

  %11 = trunc i32 %10 to i8

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  store i8 %11, i8* %12, align 1, !tbaa !1965

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  store i8 0, i8* %13, align 1, !tbaa !1969

  %14 = icmp eq i8 %5, 0

  %15 = zext i1 %14 to i8

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  store i8 %15, i8* %16, align 1, !tbaa !1966

  %17 = lshr i8 %5, 7

  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  store i8 %17, i8* %18, align 1, !tbaa !1967

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 0, i8* %19, align 1, !tbaa !1968

  %20 = select i1 %14, i64 9, i64 26

  %21 = add i64 %20, %1

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  br i1 %14, label %block_400739, label %block_400730.block_40074a_crit_edge



block_400730.block_40074a_crit_edge:              ; preds = %block_400730

  %23 = load i64, i64* %22, align 1, !tbaa !1947

  br label %block_40074a



block_40074a:                                     ; preds = %block_400739, %block_400730.block_40074a_crit_edge

  %24 = phi i64 [ %23, %block_400730.block_40074a_crit_edge ], [ %39, %block_400739 ]

  %25 = phi %struct.Memory* [ %2, %block_400730.block_40074a_crit_edge ], [ %37, %block_400739 ]

  %26 = inttoptr i64 %24 to i64*

  %27 = load i64, i64* %26

  store i64 %27, i64* %3, align 8, !tbaa !1947

  %28 = add i64 %24, 8

  store i64 %28, i64* %22, align 8, !tbaa !1947

  ret %struct.Memory* %25



block_400739:                                     ; preds = %block_400730

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

  %37 = tail call %struct.Memory* @sub_4006b0_deregister_tm_clones(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)

  %38 = load i64, i64* %22, align 1, !tbaa !1947

  %39 = add i64 %38, 8

  %40 = inttoptr i64 %38 to i64*

  %41 = load i64, i64* %40

  store i64 %41, i64* %4, align 8, !tbaa !1947

  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*)

  br label %block_40074a

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006f0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_4006f0:

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

  store i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64* %4, align 8, !tbaa !1947

  store i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1), i64* %5, align 8, !tbaa !1947

  store i8 and (i8 trunc (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)) to i8), i8 1), i8* %12, align 1, !tbaa !2065

  %18 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1) to i32), i32 255)) #6

  %19 = and i32 %18, 1

  %20 = xor i32 %19, 1

  %21 = trunc i32 %20 to i8

  store i8 %21, i8* %13, align 1, !tbaa !2065

  store i8 0, i8* %14, align 1, !tbaa !2065

  store i8 zext (i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1), i64 0) to i8), i8* %15, align 1, !tbaa !2065

  store i8 trunc (i64 lshr (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1), i64 63) to i8), i8* %16, align 1, !tbaa !2065

  store i8 0, i8* %17, align 1, !tbaa !2065

  br i1 icmp eq (i64 ashr (i64 add (i64 lshr (i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3), i64 63), i64 ashr (i64 sub (i64 and (i64 ptrtoint (i64* @optarg to i64), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 3)), i64 1), i64 0), label %block_400728, label %block_400713



block_400713:                                     ; preds = %block_4006f0

  store i64 0, i64* %4, align 8, !tbaa !1947

  store i8 0, i8* %12, align 1, !tbaa !1951

  store i8 1, i8* %13, align 1, !tbaa !1965

  store i8 1, i8* %15, align 1, !tbaa !1966

  store i8 0, i8* %16, align 1, !tbaa !1967

  store i8 0, i8* %17, align 1, !tbaa !1968

  store i8 0, i8* %14, align 1, !tbaa !1969

  br label %block_400728



block_400728:                                     ; preds = %block_400713, %block_4006f0

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

define %struct.Memory* @sub_400940_dump_points(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_400940:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %12 = load i64, i64* %11, align 8

  %13 = load i64, i64* %10, align 1, !tbaa !1947

  %14 = add i64 %13, -8

  %15 = inttoptr i64 %14 to i64*

  store i64 %12, i64* %15

  %16 = add i64 %13, -16

  %17 = load i64, i64* %9, align 8

  %18 = inttoptr i64 %16 to i64*

  store i64 %17, i64* %18

  %19 = add i64 %13, -20

  %20 = load i32, i32* %7, align 4

  %21 = inttoptr i64 %19 to i32*

  store i32 %20, i32* %21

  %22 = add i64 %13, -24

  %23 = load i32, i32* %5, align 4

  %24 = inttoptr i64 %22 to i32*

  store i32 %23, i32* %24

  %25 = add i64 %13, -28

  %26 = inttoptr i64 %25 to i32*

  store i32 0, i32* %26

  %27 = add i64 %13, -20

  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %31 = add i64 %13, -32

  br label %block_400955



block_40099a:                                     ; preds = %block_400955

  %32 = phi i1 [ %77, %block_400955 ]

  %33 = phi i8 [ %71, %block_400955 ]

  %34 = phi i32 [ %69, %block_400955 ]

  %35 = phi i32 [ %68, %block_400955 ]

  %36 = phi i32 [ %66, %block_400955 ]

  %37 = phi %struct.Memory* [ %64, %block_400955 ]

  %38 = zext i32 %36 to i64

  store i64 %38, i64* %8, align 8, !tbaa !1947

  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %42 = icmp ult i32 %36, %35

  %43 = zext i1 %42 to i8

  %44 = and i32 %34, 255

  %45 = tail call i32 @llvm.ctpop.i32(i32 %44) #6

  %46 = and i32 %45, 1

  %47 = xor i32 %46, 1

  %48 = trunc i32 %47 to i8

  %49 = xor i32 %35, %36

  %50 = xor i32 %49, %34

  %51 = lshr i32 %50, 4

  %52 = trunc i32 %51 to i8

  %53 = and i8 %52, 1

  %54 = icmp eq i32 %36, %35

  %55 = zext i1 %54 to i8

  %56 = zext i1 %32 to i8

  store i8 %43, i8* %28, align 1, !tbaa !1951

  store i8 %48, i8* %39, align 1, !tbaa !1965

  store i8 %53, i8* %29, align 1, !tbaa !1969

  store i8 %55, i8* %40, align 1, !tbaa !1966

  store i8 %33, i8* %30, align 1, !tbaa !1967

  store i8 %56, i8* %41, align 1, !tbaa !1968

  %57 = inttoptr i64 %14 to i64*

  %58 = load i64, i64* %57

  store i64 %58, i64* %11, align 8, !tbaa !1947

  %59 = inttoptr i64 %13 to i64*

  %60 = load i64, i64* %59

  store i64 %60, i64* %3, align 8, !tbaa !1947

  %61 = add i64 %13, 8

  store i64 %61, i64* %10, align 8, !tbaa !1947

  ret %struct.Memory* %37



block_400974:                                     ; preds = %block_400968

  %62 = add i32 %82, 1

  %63 = inttoptr i64 %31 to i32*

  store i32 %62, i32* %63

  br label %block_400968



block_400955:                                     ; preds = %block_400987, %block_400940

  %64 = phi %struct.Memory* [ %2, %block_400940 ], [ %95, %block_400987 ]

  %65 = inttoptr i64 %25 to i32*

  %66 = load i32, i32* %65

  %67 = inttoptr i64 %27 to i32*

  %68 = load i32, i32* %67

  %69 = sub i32 %66, %68

  %70 = lshr i32 %69, 31

  %71 = trunc i32 %70 to i8

  %72 = lshr i32 %66, 31

  %73 = lshr i32 %68, 31

  %74 = xor i32 %73, %72

  %75 = xor i32 %70, %72

  %76 = add nuw nsw i32 %75, %74

  %77 = icmp eq i32 %76, 2

  %78 = icmp ne i8 %71, 0

  %79 = xor i1 %78, %77

  br i1 %79, label %block_400961, label %block_40099a



block_400968:                                     ; preds = %block_400961, %block_400974

  %80 = phi %struct.Memory* [ %64, %block_400961 ], [ %80, %block_400974 ]

  %81 = inttoptr i64 %31 to i32*

  %82 = load i32, i32* %81

  %83 = inttoptr i64 %22 to i32*

  %84 = load i32, i32* %83

  %85 = sub i32 %82, %84

  %86 = lshr i32 %85, 31

  %87 = lshr i32 %82, 31

  %88 = lshr i32 %84, 31

  %89 = xor i32 %88, %87

  %90 = xor i32 %86, %87

  %91 = add nuw nsw i32 %90, %89

  %92 = icmp eq i32 %91, 2

  %93 = icmp ne i32 %86, 0

  %94 = xor i1 %93, %92

  br i1 %94, label %block_400974, label %block_400987



block_400987:                                     ; preds = %block_400968

  %95 = phi %struct.Memory* [ %80, %block_400968 ]

  %96 = inttoptr i64 %25 to i32*

  %97 = load i32, i32* %96

  %98 = add i32 %97, 1

  %99 = inttoptr i64 %25 to i32*

  store i32 %98, i32* %99

  br label %block_400955



block_400961:                                     ; preds = %block_400955

  %100 = inttoptr i64 %31 to i32*

  store i32 0, i32* %100

  br label %block_400968

}



; Function Attrs: noinline

define %struct.Memory* @sub_4005c8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {

block_4005c8:

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

  %14 = load i64, i64* getelementptr inbounds (%seg_601ff8__got_type, %seg_601ff8__got_type* @seg_601ff8__got, i32 0, i32 0)

  store i64 %14, i64* %4, align 8, !tbaa !1947

  store i8 0, i8* %8, align 1, !tbaa !1951

  %15 = trunc i64 %14 to i32

  %16 = and i32 %15, 255

  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #6

  %18 = and i32 %17, 1

  %19 = xor i32 %18, 1

  %20 = trunc i32 %19 to i8

  store i8 %20, i8* %9, align 1, !tbaa !1965

  %21 = icmp eq i64 %14, 0

  %22 = zext i1 %21 to i8

  store i8 %22, i8* %11, align 1, !tbaa !1966

  %23 = lshr i64 %14, 63

  %24 = trunc i64 %23 to i8

  store i8 %24, i8* %12, align 1, !tbaa !1967

  store i8 0, i8* %13, align 1, !tbaa !1968

  store i8 0, i8* %10, align 1, !tbaa !1969

  %25 = select i1 %21, i64 21, i64 16

  %26 = add i64 %25, %1

  br i1 %21, label %block_4005dd, label %block_4005d8



block_4005dd:                                     ; preds = %block_4005d8, %block_4005c8

  %27 = phi i64 [ %7, %block_4005c8 ], [ %59, %block_4005d8 ]

  %28 = phi %struct.Memory* [ %2, %block_4005c8 ], [ %58, %block_4005d8 ]

  %29 = add i64 %27, 8

  %30 = icmp ugt i64 %27, -9

  %31 = zext i1 %30 to i8

  store i8 %31, i8* %8, align 1, !tbaa !1951

  %32 = trunc i64 %29 to i32

  %33 = and i32 %32, 255

  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #6

  %35 = and i32 %34, 1

  %36 = xor i32 %35, 1

  %37 = trunc i32 %36 to i8

  store i8 %37, i8* %9, align 1, !tbaa !1965

  %38 = xor i64 %29, %27

  %39 = lshr i64 %38, 4

  %40 = trunc i64 %39 to i8

  %41 = and i8 %40, 1

  store i8 %41, i8* %10, align 1, !tbaa !1969

  %42 = icmp eq i64 %29, 0

  %43 = zext i1 %42 to i8

  store i8 %43, i8* %11, align 1, !tbaa !1966

  %44 = lshr i64 %29, 63

  %45 = trunc i64 %44 to i8

  store i8 %45, i8* %12, align 1, !tbaa !1967

  %46 = lshr i64 %27, 63

  %47 = xor i64 %44, %46

  %48 = add nuw nsw i64 %47, %44

  %49 = icmp eq i64 %48, 2

  %50 = zext i1 %49 to i8

  store i8 %50, i8* %13, align 1, !tbaa !1968

  %51 = inttoptr i64 %29 to i64*

  %52 = load i64, i64* %51

  store i64 %52, i64* %3, align 8, !tbaa !1947

  %53 = add i64 %27, 16

  store i64 %53, i64* %5, align 8, !tbaa !1947

  ret %struct.Memory* %28



block_4005d8:                                     ; preds = %block_4005c8

  %54 = add i64 %26, 152

  %55 = add i64 %26, 5

  %56 = add i64 %6, -16

  %57 = inttoptr i64 %56 to i64*

  store i64 %55, i64* %57

  store i64 %56, i64* %5, align 8, !tbaa !1947

  %58 = tail call %struct.Memory* @sub_400670(%struct.State* nonnull %0, i64 %54, %struct.Memory* %2)

  %59 = load i64, i64* %5, align 8

  br label %block_4005dd

}



; Function Attrs: noinline

define %struct.Memory* @sub_4009a0_generate_points(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #4 {

block_4009a0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0

  %5 = bitcast %union.anon* %4 to i32*

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0

  %7 = bitcast %union.anon* %6 to i32*

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %10 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %14 = load i64, i64* %13, align 8

  %15 = load i64, i64* %12, align 1, !tbaa !1947

  %16 = add i64 %15, -8

  %17 = inttoptr i64 %16 to i64*

  store i64 %14, i64* %17

  store i64 %16, i64* %13, align 8, !tbaa !1947

  %18 = add i64 %15, -40

  store i64 %18, i64* %12, align 8, !tbaa !1947

  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  %25 = add i64 %15, -16

  %26 = load i64, i64* %11, align 8

  %27 = inttoptr i64 %25 to i64*

  store i64 %26, i64* %27

  %28 = add i64 %15, -20

  %29 = load i32, i32* %7, align 4

  %30 = inttoptr i64 %28 to i32*

  store i32 %29, i32* %30

  %31 = add i64 %15, -24

  %32 = load i32, i32* %5, align 4

  %33 = inttoptr i64 %31 to i32*

  store i32 %32, i32* %33

  %34 = add i64 %15, -28

  %35 = add i64 %1, 25

  %36 = inttoptr i64 %34 to i32*

  store i32 0, i32* %36

  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %39 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0

  br label %block_4009b9



block_4009d8:                                     ; preds = %block_4009cc

  %40 = load i64, i64* %12, align 1, !tbaa !1947

  %41 = add i64 %40, -8

  %42 = inttoptr i64 %41 to i64*

  store i64 %197, i64* %42

  %43 = inttoptr i64 %41 to i64*

  %44 = load i64, i64* %43

  store i64 %44, i64* %3, align 8, !alias.scope !2066, !noalias !2069

  %45 = tail call i64 @rand(), !noalias !2066

  store i64 %45, i64* %37, align 8, !alias.scope !2066, !noalias !2069

  %46 = load i64, i64* %3, align 8

  %47 = shl i64 %45, 32

  %48 = ashr exact i64 %47, 32

  %49 = lshr i64 %48, 32

  store i64 %49, i64* %38, align 8, !tbaa !1947

  %50 = add i64 %46, 8

  store i64 %50, i64* %3, align 8

  %51 = and i64 %45, 4294967295

  %52 = load i32, i32* bitcast (%grid_size_type* @grid_size to i32*)

  %53 = sext i32 %52 to i64

  %54 = shl nuw i64 %49, 32

  %55 = or i64 %54, %51

  %56 = sdiv i64 %55, %53

  %57 = shl i64 %56, 32

  %58 = ashr exact i64 %57, 32

  %59 = icmp eq i64 %56, %58

  br i1 %59, label %64, label %60



; <label>:60                                      ; preds = %block_4009d8

  %61 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %50, %struct.Memory* %162) #11

  %62 = load i64, i64* %3, align 8

  %63 = load i32, i32* %5, align 4

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



; <label>:64                                      ; preds = %block_4009d8

  %65 = srem i64 %55, %53

  %66 = and i64 %65, 4294967295

  store i64 %66, i64* %39, align 8, !tbaa !1947

  %67 = trunc i64 %65 to i32

  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit



_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %64, %60

  %68 = phi i32 [ %63, %60 ], [ %67, %64 ]

  %69 = phi i64 [ %62, %60 ], [ %50, %64 ]

  %70 = phi %struct.Memory* [ %61, %60 ], [ %162, %64 ]

  %71 = load i64, i64* %13, align 8

  %72 = add i64 %71, -24

  %73 = inttoptr i64 %72 to i32*

  %74 = load i32, i32* %73

  %75 = sext i32 %74 to i64

  store i64 %75, i64* %9, align 8, !tbaa !1947

  %76 = add i64 %71, -20

  %77 = inttoptr i64 %76 to i32*

  %78 = load i32, i32* %77

  %79 = sext i32 %78 to i64

  %80 = add i64 %71, -8

  %81 = inttoptr i64 %80 to i64*

  %82 = load i64, i64* %81

  store i64 %82, i64* %11, align 8, !tbaa !1947

  %83 = shl nsw i64 %79, 3

  %84 = add i64 %83, %82

  %85 = inttoptr i64 %84 to i64*

  %86 = load i64, i64* %85

  store i64 %86, i64* %10, align 8, !tbaa !1947

  %87 = shl nsw i64 %75, 2

  %88 = add i64 %87, %86

  %89 = inttoptr i64 %88 to i32*

  store i32 %68, i32* %89

  %90 = inttoptr i64 %72 to i32*

  %91 = load i32, i32* %90

  %92 = add i32 %91, 1

  %93 = inttoptr i64 %72 to i32*

  store i32 %92, i32* %93

  %94 = add i64 %69, -25

  br label %block_4009cc



block_4009b9:                                     ; preds = %block_400a06, %block_4009a0

  %95 = phi i64 [ %35, %block_4009a0 ], [ %126, %block_400a06 ]

  %96 = phi i64 [ %16, %block_4009a0 ], [ %120, %block_400a06 ]

  %97 = phi %struct.Memory* [ %2, %block_4009a0 ], [ %119, %block_400a06 ]

  %98 = add i64 %96, -20

  %99 = inttoptr i64 %98 to i32*

  %100 = load i32, i32* %99

  %101 = zext i32 %100 to i64

  store i64 %101, i64* %8, align 8, !tbaa !1947

  %102 = add i64 %96, -12

  %103 = inttoptr i64 %102 to i32*

  %104 = load i32, i32* %103

  %105 = sub i32 %100, %104

  %106 = lshr i32 %105, 31

  %107 = trunc i32 %106 to i8

  %108 = lshr i32 %100, 31

  %109 = lshr i32 %104, 31

  %110 = xor i32 %109, %108

  %111 = xor i32 %106, %108

  %112 = add nuw nsw i32 %111, %110

  %113 = icmp eq i32 %112, 2

  %114 = icmp ne i8 %107, 0

  %115 = xor i1 %114, %113

  %116 = select i1 %115, i64 12, i64 96

  %117 = add i64 %95, %116

  br i1 %115, label %block_4009c5, label %block_400a19



block_400a06:                                     ; preds = %block_4009cc

  %118 = phi i64 [ %196, %block_4009cc ]

  %119 = phi %struct.Memory* [ %162, %block_4009cc ]

  %120 = phi i64 [ %161, %block_4009cc ]

  %121 = add i64 %120, -20

  %122 = inttoptr i64 %121 to i32*

  %123 = load i32, i32* %122

  %124 = add i32 %123, 1

  %125 = inttoptr i64 %121 to i32*

  store i32 %124, i32* %125

  %126 = add i64 %118, -77

  br label %block_4009b9



block_4009c5:                                     ; preds = %block_4009b9

  %127 = add i64 %96, -24

  %128 = add i64 %117, 7

  %129 = inttoptr i64 %127 to i32*

  store i32 0, i32* %129

  br label %block_4009cc



block_400a19:                                     ; preds = %block_4009b9

  %130 = phi %struct.Memory* [ %97, %block_4009b9 ]

  %131 = load i64, i64* %12, align 8

  %132 = add i64 %131, 32

  %133 = icmp ugt i64 %131, -33

  %134 = zext i1 %133 to i8

  store i8 %134, i8* %19, align 1, !tbaa !1951

  %135 = trunc i64 %132 to i32

  %136 = and i32 %135, 255

  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #6

  %138 = and i32 %137, 1

  %139 = xor i32 %138, 1

  %140 = trunc i32 %139 to i8

  store i8 %140, i8* %20, align 1, !tbaa !1965

  %141 = xor i64 %132, %131

  %142 = lshr i64 %141, 4

  %143 = trunc i64 %142 to i8

  %144 = and i8 %143, 1

  store i8 %144, i8* %21, align 1, !tbaa !1969

  %145 = icmp eq i64 %132, 0

  %146 = zext i1 %145 to i8

  store i8 %146, i8* %22, align 1, !tbaa !1966

  %147 = lshr i64 %132, 63

  %148 = trunc i64 %147 to i8

  store i8 %148, i8* %23, align 1, !tbaa !1967

  %149 = lshr i64 %131, 63

  %150 = xor i64 %147, %149

  %151 = add nuw nsw i64 %150, %147

  %152 = icmp eq i64 %151, 2

  %153 = zext i1 %152 to i8

  store i8 %153, i8* %24, align 1, !tbaa !1968

  %154 = add i64 %131, 40

  %155 = inttoptr i64 %132 to i64*

  %156 = load i64, i64* %155

  store i64 %156, i64* %13, align 8, !tbaa !1947

  %157 = inttoptr i64 %154 to i64*

  %158 = load i64, i64* %157

  store i64 %158, i64* %3, align 8, !tbaa !1947

  %159 = add i64 %131, 48

  store i64 %159, i64* %12, align 8, !tbaa !1947

  ret %struct.Memory* %130



block_4009cc:                                     ; preds = %block_4009c5, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

  %160 = phi i64 [ %128, %block_4009c5 ], [ %94, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %161 = phi i64 [ %96, %block_4009c5 ], [ %71, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %162 = phi %struct.Memory* [ %97, %block_4009c5 ], [ %70, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]

  %163 = add i64 %161, -24

  %164 = inttoptr i64 %163 to i32*

  %165 = load i32, i32* %164

  %166 = add i64 %161, -16

  %167 = inttoptr i64 %166 to i32*

  %168 = load i32, i32* %167

  %169 = sub i32 %165, %168

  %170 = icmp ult i32 %165, %168

  %171 = zext i1 %170 to i8

  store i8 %171, i8* %19, align 1, !tbaa !1951

  %172 = and i32 %169, 255

  %173 = tail call i32 @llvm.ctpop.i32(i32 %172) #6

  %174 = and i32 %173, 1

  %175 = xor i32 %174, 1

  %176 = trunc i32 %175 to i8

  store i8 %176, i8* %20, align 1, !tbaa !1965

  %177 = xor i32 %168, %165

  %178 = xor i32 %177, %169

  %179 = lshr i32 %178, 4

  %180 = trunc i32 %179 to i8

  %181 = and i8 %180, 1

  store i8 %181, i8* %21, align 1, !tbaa !1969

  %182 = icmp eq i32 %165, %168

  %183 = zext i1 %182 to i8

  store i8 %183, i8* %22, align 1, !tbaa !1966

  %184 = lshr i32 %169, 31

  %185 = trunc i32 %184 to i8

  store i8 %185, i8* %23, align 1, !tbaa !1967

  %186 = lshr i32 %165, 31

  %187 = lshr i32 %168, 31

  %188 = xor i32 %187, %186

  %189 = xor i32 %184, %186

  %190 = add nuw nsw i32 %189, %188

  %191 = icmp eq i32 %190, 2

  %192 = zext i1 %191 to i8

  store i8 %192, i8* %24, align 1, !tbaa !1968

  %193 = icmp ne i8 %185, 0

  %194 = xor i1 %193, %191

  %195 = select i1 %194, i64 12, i64 58

  %196 = add i64 %160, %195

  %197 = add i64 %196, 5

  br i1 %194, label %block_4009d8, label %block_400a06

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_400750_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_400750:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  store i64 and (i64 ptrtoint (%seg_601e10__jcr_type* @seg_601e10__jcr to i64), i64 4294967295), i64* %3, align 8, !tbaa !1947

  %4 = load i64, i64* inttoptr (i64 and (i64 ptrtoint (%seg_601e10__jcr_type* @seg_601e10__jcr to i64), i64 4294967295) to i64*)

  %5 = icmp eq i64 %4, 0

  %6 = select i1 %5, i64 11, i64 16

  %7 = add i64 %6, %1

  br i1 %5, label %block_4006f0, label %block_400760



block_400760:                                     ; preds = %block_400750

  %8 = add i64 %7, -5

  br label %block_4006f0



block_4006f0:                                     ; preds = %block_400760, %block_400750

  %9 = phi i64 [ %8, %block_400760 ], [ %7, %block_400750 ]

  %10 = add i64 %9, -107

  %11 = tail call %struct.Memory* @sub_4006f0_register_tm_clones(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)

  ret %struct.Memory* %11

}



; Function Attrs: noinline nounwind

define %struct.Memory* @sub_4006b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #3 {

block_4006b0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = load i64, i64* %5, align 1, !tbaa !1947

  %9 = add i64 %8, -8

  %10 = inttoptr i64 %9 to i64*

  store i64 %7, i64* %10

  store i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64* %4, align 8, !tbaa !1947

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13

  store i8 zext (i1 icmp ult (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 14) to i8), i8* %11, align 1, !tbaa !1951

  %17 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 -14) to i32), i32 255)) #6

  %18 = and i32 %17, 1

  %19 = xor i32 %18, 1

  %20 = trunc i32 %19 to i8

  store i8 %20, i8* %12, align 1, !tbaa !1965

  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 add (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 -14), i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64))), i64 4) to i8), i8 1), i8* %13, align 1, !tbaa !1969

  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 14) to i8), i8* %14, align 1, !tbaa !1966

  store i8 trunc (i64 lshr (i64 add (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 -14), i64 63) to i8), i8* %15, align 1, !tbaa !1967

  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 -14), i64 63), i64 lshr (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 63)), i64 lshr (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 63)), i64 2) to i8), i8* %16, align 1, !tbaa !1968

  br i1 or (i1 icmp eq (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 14), i1 icmp ult (i64 sub (i64 and (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 7), i64 4294967295), i64 ptrtoint (i64* @optarg to i64)), i64 14)), label %block_4006e0, label %block_4006c5



block_4006c5:                                     ; preds = %block_4006b0

  store i64 0, i64* %4, align 8, !tbaa !1947

  store i8 0, i8* %11, align 1, !tbaa !1951

  store i8 1, i8* %12, align 1, !tbaa !1965

  store i8 1, i8* %14, align 1, !tbaa !1966

  store i8 0, i8* %15, align 1, !tbaa !1967

  store i8 0, i8* %16, align 1, !tbaa !1968

  store i8 0, i8* %13, align 1, !tbaa !1969

  br label %block_4006e0



block_4006e0:                                     ; preds = %block_4006c5, %block_4006b0

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



; Function Attrs: noinline

define %struct.Memory* @sub_4005f0(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #4 {

block_4005f0:

  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 8) to i64*)

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %6 = load i64, i64* %5, align 1, !tbaa !1947

  %7 = add i64 %6, -8

  %8 = inttoptr i64 %7 to i64*

  store i64 %4, i64* %8

  store i64 %7, i64* %5, align 8, !tbaa !1947

  %9 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 16) to i64*)

  store i64 %9, i64* %3, align 8, !tbaa !1947

  %10 = icmp eq i64 %9, 4195836

  br i1 %10, label %block_4005fc, label %56



block_4005fc:                                     ; preds = %block_4005f0

  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0

  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0

  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0

  %18 = load i64, i64* %15, align 8, !alias.scope !2071, !noalias !2074

  %19 = load i64, i64* %14, align 8, !alias.scope !2071, !noalias !2074

  %20 = load i64, i64* %13, align 8, !alias.scope !2071, !noalias !2074

  %21 = load i64, i64* %12, align 8, !alias.scope !2071, !noalias !2074

  %22 = load i64, i64* %16, align 8, !alias.scope !2071, !noalias !2074

  %23 = load i64, i64* %17, align 8, !alias.scope !2071, !noalias !2074

  %24 = inttoptr i64 %6 to i64*

  %25 = load i64, i64* %24

  %26 = add i64 %6, 8

  %27 = inttoptr i64 %26 to i64*

  %28 = load i64, i64* %27

  %29 = add i64 %6, 16

  %30 = inttoptr i64 %29 to i64*

  %31 = load i64, i64* %30

  %32 = add i64 %6, 24

  %33 = inttoptr i64 %32 to i64*

  %34 = load i64, i64* %33

  %35 = add i64 %6, 32

  %36 = inttoptr i64 %35 to i64*

  %37 = load i64, i64* %36

  %38 = add i64 %6, 40

  %39 = inttoptr i64 %38 to i64*

  %40 = load i64, i64* %39

  %41 = add i64 %6, 48

  %42 = inttoptr i64 %41 to i64*

  %43 = load i64, i64* %42

  %44 = add i64 %6, 56

  %45 = inttoptr i64 %44 to i64*

  %46 = load i64, i64* %45

  %47 = add i64 %6, 64

  %48 = inttoptr i64 %47 to i64*

  %49 = load i64, i64* %48

  %50 = add i64 %6, 72

  %51 = inttoptr i64 %50 to i64*

  %52 = load i64, i64* %51

  %53 = inttoptr i64 %7 to i64*

  %54 = load i64, i64* %53

  store i64 %54, i64* %3, align 8, !alias.scope !2071, !noalias !2074

  store i64 %6, i64* %5, align 8, !alias.scope !2071, !noalias !2074

  %55 = tail call i64 @printf(i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49, i64 %52), !noalias !2071

  store i64 %55, i64* %11, align 8, !alias.scope !2071, !noalias !2074

  ret %struct.Memory* %2



; <label>:56                                      ; preds = %block_4005f0

  %57 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)

  ret %struct.Memory* %57

}



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_400680__start(i64, i64, i64, i64, i64, i64, i64, i64) #5 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4195968, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_400680__start(%struct.State* nonnull @__mcsema_reg_state, i64 4195968, %struct.Memory* null)

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

  store volatile i1 true, i1* @0, align 1

  ret void

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400750_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4196176, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_400750_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4196176, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400730___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

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

  %15 = tail call %struct.Memory* @sub_400730___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4196144, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @callback_sub_400dc0___libc_csu_fini() #7 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4197824, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %1 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  tail call fastcc void @__mcsema_early_init()

  %2 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %3 = add i64 %2, -8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %4 = tail call %struct.Memory* @sub_400dc0___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4197824, %struct.Memory* null)

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %5 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %5

}



; Function Attrs: nobuiltin noinline

define i64 @callback_sub_400d50___libc_csu_init() #5 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4197712, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %1 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  tail call fastcc void @__mcsema_early_init()

  %2 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %3 = add i64 %2, -8

  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %4 = tail call %struct.Memory* @sub_400d50___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4197712, %struct.Memory* null)

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %5 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %5

}



; Function Attrs: nobuiltin noinline

define i64 @main(i64, i64, i64) #5 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4197328, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8

  %4 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  tail call fastcc void @__mcsema_early_init()

  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8

  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8

  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8

  %5 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %6 = add i64 %5, -8

  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %7 = tail call %struct.Memory* @sub_400bd0_main(%struct.State* nonnull @__mcsema_reg_state, i64 4197328, %struct.Memory* null)

  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %8 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %8

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_400610___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {

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



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_602080_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {

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

define %struct.Memory* @ext_6020a8_exit(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {

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

  %13 = tail call i64 @exit(i64 %8)

  store i64 %13, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_400630_getopt(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0

  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0

  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0

  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %10 = load i64, i64* %8, align 8

  %11 = load i64, i64* %7, align 8

  %12 = load i64, i64* %6, align 8

  %13 = load i64, i64* %9, align 8

  %14 = inttoptr i64 %13 to i64*

  %15 = load i64, i64* %14

  store i64 %15, i64* %4, align 8

  %16 = add i64 %13, 8

  store i64 %16, i64* %9, align 8

  %17 = tail call i64 @getopt(i64 %10, i64 %11, i64 %12)

  store i64 %17, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: alwaysinline inlinehint

define %struct.Memory* @ext_6020a0_atoi(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {

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

define %struct.Memory* @ext_6020c0___gmon_start__(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {

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

define %struct.Memory* @ext_602090_malloc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {

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

define %struct.Memory* @ext_400660_rand(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias) #8 {

  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0

  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0

  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0

  %7 = load i64, i64* %6, align 8

  %8 = inttoptr i64 %7 to i64*

  %9 = load i64, i64* %8

  store i64 %9, i64* %4, align 8

  %10 = add i64 %7, 8

  store i64 %10, i64* %6, align 8

  %11 = tail call i64 @rand()

  store i64 %11, i64* %5, align 8

  ret %struct.Memory* %2

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @calc_cov(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4197056, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_400ac0_calc_cov(%struct.State* nonnull @__mcsema_reg_state, i64 4197056, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nobuiltin noinline

define i64 @.init_proc(i64, i64, i64, i64, i64, i64, i64, i64) #5 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4195784, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_4005c8__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4195784, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nobuiltin noinline

define i64 @parse_args(i64, i64, i64, i64, i64, i64, i64, i64) #5 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4196224, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_400780_parse_args(%struct.State* nonnull @__mcsema_reg_state, i64 4196224, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @calc_mean(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4196896, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_400a20_calc_mean(%struct.State* nonnull @__mcsema_reg_state, i64 4196896, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @.term_proc(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4197828, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_400dc4__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4197828, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nobuiltin noinline

define i64 @generate_points(i64, i64, i64, i64, i64, i64, i64, i64) #5 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4196768, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_4009a0_generate_points(%struct.State* nonnull @__mcsema_reg_state, i64 4196768, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nobuiltin noinline nounwind

define i64 @dump_points(i64, i64, i64, i64, i64, i64, i64, i64) #7 {

  tail call void @__mcsema_verify_reg_state()

  store i64 4196672, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8

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

  %15 = tail call %struct.Memory* @sub_400940_dump_points(%struct.State* nonnull @__mcsema_reg_state, i64 4196672, %struct.Memory* null)

  store i64 %9, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8

  %16 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8

  ret i64 %16

}



; Function Attrs: nounwind

define internal void @__mcsema_destructor() #6 {

  %1 = tail call i64 @callback_sub_400dc0___libc_csu_fini()

  ret void

}



define internal void @__mcsema_constructor() {

  tail call fastcc void @__mcsema_early_init()

  %1 = tail call i64 @callback_sub_400d50___libc_csu_init()

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

!1951 = !{!1952, !1949, i64 2065}

!1952 = !{!"_ZTS5State", !1949, i64 16, !1953, i64 2064, !1949, i64 2080, !1954, i64 2088, !1956, i64 2112, !1958, i64 2208, !1959, i64 2480, !1960, i64 2608, !1961, i64 2736, !1949, i64 2760, !1949, i64 2768, !1962, i64 3280}

!1953 = !{!"_ZTS10ArithFlags", !1949, i64 0, !1949, i64 1, !1949, i64 2, !1949, i64 3, !1949, i64 4, !1949, i64 5, !1949, i64 6, !1949, i64 7, !1949, i64 8, !1949, i64 9, !1949, i64 10, !1949, i64 11, !1949, i64 12, !1949, i64 13, !1949, i64 14, !1949, i64 15}

!1954 = !{!"_ZTS8Segments", !1955, i64 0, !1949, i64 2, !1955, i64 4, !1949, i64 6, !1955, i64 8, !1949, i64 10, !1955, i64 12, !1949, i64 14, !1955, i64 16, !1949, i64 18, !1955, i64 20, !1949, i64 22}

!1955 = !{!"short", !1949, i64 0}

!1956 = !{!"_ZTS12AddressSpace", !1948, i64 0, !1957, i64 8, !1948, i64 16, !1957, i64 24, !1948, i64 32, !1957, i64 40, !1948, i64 48, !1957, i64 56, !1948, i64 64, !1957, i64 72, !1948, i64 80, !1957, i64 88}

!1957 = !{!"_ZTS3Reg", !1949, i64 0}

!1958 = !{!"_ZTS3GPR", !1948, i64 0, !1957, i64 8, !1948, i64 16, !1957, i64 24, !1948, i64 32, !1957, i64 40, !1948, i64 48, !1957, i64 56, !1948, i64 64, !1957, i64 72, !1948, i64 80, !1957, i64 88, !1948, i64 96, !1957, i64 104, !1948, i64 112, !1957, i64 120, !1948, i64 128, !1957, i64 136, !1948, i64 144, !1957, i64 152, !1948, i64 160, !1957, i64 168, !1948, i64 176, !1957, i64 184, !1948, i64 192, !1957, i64 200, !1948, i64 208, !1957, i64 216, !1948, i64 224, !1957, i64 232, !1948, i64 240, !1957, i64 248, !1948, i64 256, !1957, i64 264}

!1959 = !{!"_ZTS8X87Stack", !1949, i64 0}

!1960 = !{!"_ZTS3MMX", !1949, i64 0}

!1961 = !{!"_ZTS14FPUStatusFlags", !1949, i64 0, !1949, i64 1, !1949, i64 2, !1949, i64 3, !1949, i64 4, !1949, i64 5, !1949, i64 6, !1949, i64 7, !1949, i64 8, !1949, i64 9, !1949, i64 10, !1949, i64 11, !1949, i64 12, !1949, i64 13, !1949, i64 14, !1949, i64 15, !1949, i64 16, !1949, i64 17, !1949, i64 18, !1949, i64 19, !1949, i64 20}

!1962 = !{!"_ZTS13SegmentCaches", !1963, i64 0, !1963, i64 16, !1963, i64 32, !1963, i64 48, !1963, i64 64, !1963, i64 80}

!1963 = !{!"_ZTS13SegmentShadow", !1949, i64 0, !1964, i64 8, !1964, i64 12}

!1964 = !{!"int", !1949, i64 0}

!1965 = !{!1952, !1949, i64 2067}

!1966 = !{!1952, !1949, i64 2071}

!1967 = !{!1952, !1949, i64 2073}

!1968 = !{!1952, !1949, i64 2077}

!1969 = !{!1952, !1949, i64 2069}

!1970 = !{!1971}

!1971 = distinct !{!1971, !1972, !"ext_400610___libc_start_main: argument 0"}

!1972 = distinct !{!1972, !"ext_400610___libc_start_main"}

!1973 = !{!1974}

!1974 = distinct !{!1974, !1972, !"ext_400610___libc_start_main: argument 1"}

!1975 = !{!1976}

!1976 = distinct !{!1976, !1977, !"ext_602080_printf: argument 0"}

!1977 = distinct !{!1977, !"ext_602080_printf"}

!1978 = !{!1979}

!1979 = distinct !{!1979, !1977, !"ext_602080_printf: argument 1"}

!1980 = !{!1981}

!1981 = distinct !{!1981, !1982, !"ext_6020a8_exit: argument 0"}

!1982 = distinct !{!1982, !"ext_6020a8_exit"}

!1983 = !{!1984}

!1984 = distinct !{!1984, !1982, !"ext_6020a8_exit: argument 1"}

!1985 = !{!1986}

!1986 = distinct !{!1986, !1987, !"ext_400630_getopt: argument 0"}

!1987 = distinct !{!1987, !"ext_400630_getopt"}

!1988 = !{!1989}

!1989 = distinct !{!1989, !1987, !"ext_400630_getopt: argument 1"}

!1990 = !{!1991}

!1991 = distinct !{!1991, !1992, !"ext_6020a0_atoi: argument 0"}

!1992 = distinct !{!1992, !"ext_6020a0_atoi"}

!1993 = !{!1994}

!1994 = distinct !{!1994, !1992, !"ext_6020a0_atoi: argument 1"}

!1995 = !{!1996}

!1996 = distinct !{!1996, !1997, !"ext_6020a0_atoi: argument 0"}

!1997 = distinct !{!1997, !"ext_6020a0_atoi"}

!1998 = !{!1999}

!1999 = distinct !{!1999, !1997, !"ext_6020a0_atoi: argument 1"}

!2000 = !{!2001}

!2001 = distinct !{!2001, !2002, !"ext_602080_printf: argument 0"}

!2002 = distinct !{!2002, !"ext_602080_printf"}

!2003 = !{!2004}

!2004 = distinct !{!2004, !2002, !"ext_602080_printf: argument 1"}

!2005 = !{!2006}

!2006 = distinct !{!2006, !2007, !"ext_6020a8_exit: argument 0"}

!2007 = distinct !{!2007, !"ext_6020a8_exit"}

!2008 = !{!2009}

!2009 = distinct !{!2009, !2007, !"ext_6020a8_exit: argument 1"}

!2010 = !{!2011}

!2011 = distinct !{!2011, !2012, !"ext_602080_printf: argument 0"}

!2012 = distinct !{!2012, !"ext_602080_printf"}

!2013 = !{!2014}

!2014 = distinct !{!2014, !2012, !"ext_602080_printf: argument 1"}

!2015 = !{!2016}

!2016 = distinct !{!2016, !2017, !"ext_602080_printf: argument 0"}

!2017 = distinct !{!2017, !"ext_602080_printf"}

!2018 = !{!2019}

!2019 = distinct !{!2019, !2017, !"ext_602080_printf: argument 1"}

!2020 = !{!2021}

!2021 = distinct !{!2021, !2022, !"ext_602080_printf: argument 0"}

!2022 = distinct !{!2022, !"ext_602080_printf"}

!2023 = !{!2024}

!2024 = distinct !{!2024, !2022, !"ext_602080_printf: argument 1"}

!2025 = !{!2026}

!2026 = distinct !{!2026, !2027, !"ext_6020a0_atoi: argument 0"}

!2027 = distinct !{!2027, !"ext_6020a0_atoi"}

!2028 = !{!2029}

!2029 = distinct !{!2029, !2027, !"ext_6020a0_atoi: argument 1"}

!2030 = !{!2031}

!2031 = distinct !{!2031, !2032, !"ext_6020c0___gmon_start__: argument 0"}

!2032 = distinct !{!2032, !"ext_6020c0___gmon_start__"}

!2033 = !{!2034}

!2034 = distinct !{!2034, !2032, !"ext_6020c0___gmon_start__: argument 1"}

!2035 = !{!2036}

!2036 = distinct !{!2036, !2037, !"ext_602090_malloc: argument 0"}

!2037 = distinct !{!2037, !"ext_602090_malloc"}

!2038 = !{!2039}

!2039 = distinct !{!2039, !2037, !"ext_602090_malloc: argument 1"}

!2040 = !{!2041}

!2041 = distinct !{!2041, !2042, !"ext_602080_printf: argument 0"}

!2042 = distinct !{!2042, !"ext_602080_printf"}

!2043 = !{!2044}

!2044 = distinct !{!2044, !2042, !"ext_602080_printf: argument 1"}

!2045 = !{!2046}

!2046 = distinct !{!2046, !2047, !"ext_602090_malloc: argument 0"}

!2047 = distinct !{!2047, !"ext_602090_malloc"}

!2048 = !{!2049}

!2049 = distinct !{!2049, !2047, !"ext_602090_malloc: argument 1"}

!2050 = !{!2051}

!2051 = distinct !{!2051, !2052, !"ext_602090_malloc: argument 0"}

!2052 = distinct !{!2052, !"ext_602090_malloc"}

!2053 = !{!2054}

!2054 = distinct !{!2054, !2052, !"ext_602090_malloc: argument 1"}

!2055 = !{!2056}

!2056 = distinct !{!2056, !2057, !"ext_602090_malloc: argument 0"}

!2057 = distinct !{!2057, !"ext_602090_malloc"}

!2058 = !{!2059}

!2059 = distinct !{!2059, !2057, !"ext_602090_malloc: argument 1"}

!2060 = !{!2061}

!2061 = distinct !{!2061, !2062, !"ext_602090_malloc: argument 0"}

!2062 = distinct !{!2062, !"ext_602090_malloc"}

!2063 = !{!2064}

!2064 = distinct !{!2064, !2062, !"ext_602090_malloc: argument 1"}

!2065 = !{!1949, !1949, i64 0}

!2066 = !{!2067}

!2067 = distinct !{!2067, !2068, !"ext_400660_rand: argument 0"}

!2068 = distinct !{!2068, !"ext_400660_rand"}

!2069 = !{!2070}

!2070 = distinct !{!2070, !2068, !"ext_400660_rand: argument 1"}

!2071 = !{!2072}

!2072 = distinct !{!2072, !2073, !"ext_602080_printf: argument 0"}

!2073 = distinct !{!2073, !"ext_602080_printf"}

!2074 = !{!2075}

!2075 = distinct !{!2075, !2073, !"ext_602080_printf: argument 1"}

