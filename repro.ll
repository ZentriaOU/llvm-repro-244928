target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musl"

@k25519Precomp = external constant [32 x [8 x [3 x [32 x i8]]]]

define fastcc void @table_select(i64 %0) #0 !dbg !4 {
  %2 = getelementptr [768 x i8], ptr @k25519Precomp, i64 %0
  %3 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0), !dbg !7
  %4 = load <16 x i8>, ptr null, align 16
  %5 = trunc i64 %3 to i8
  %6 = insertelement <16 x i8> poison, i8 %5, i64 0
  %7 = and <16 x i8> %4, %6
  store <16 x i8> zeroinitializer, ptr poison, align 16
  store <16 x i8> %7, ptr null, align 16
    #dbg_value(ptr %2, !15, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !7)
  %8 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0)
  %9 = getelementptr i8, ptr %2, i64 96
    #dbg_value(ptr %9, !20, !DIExpression(), !7)
    #dbg_value(ptr %9, !15, !DIExpression(), !7)
  %10 = load <16 x i8>, ptr %9, align 16
  %11 = trunc i64 %8 to i8
  %12 = insertelement <16 x i8> zeroinitializer, i8 %11, i64 0
  %13 = shufflevector <16 x i8> %12, <16 x i8> zeroinitializer, <16 x i32> zeroinitializer
  %14 = and <16 x i8> %10, %13
  %15 = xor <16 x i8> %14, splat (i8 1)
  store <16 x i8> %15, ptr null, align 16
    #dbg_value(ptr %2, !20, !DIExpression(DW_OP_plus_uconst, 192, DW_OP_stack_value), !7)
    #dbg_value(ptr %2, !15, !DIExpression(DW_OP_plus_uconst, 192, DW_OP_stack_value), !7)
  %16 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0)
  %17 = trunc i64 %16 to i8
  %18 = getelementptr i8, ptr %2, i64 192
    #dbg_value(ptr %18, !20, !DIExpression(), !7)
    #dbg_value(ptr %18, !15, !DIExpression(), !7)
  %19 = load <16 x i8>, ptr %18, align 16
  %20 = insertelement <16 x i8> zeroinitializer, i8 %17, i64 0
  %21 = shufflevector <16 x i8> %20, <16 x i8> zeroinitializer, <16 x i32> zeroinitializer
  %22 = and <16 x i8> %19, %21
  store <16 x i8> %22, ptr null, align 16
    #dbg_value(ptr %2, !20, !DIExpression(DW_OP_plus_uconst, 288, DW_OP_stack_value), !7)
    #dbg_value(ptr %2, !15, !DIExpression(DW_OP_plus_uconst, 288, DW_OP_stack_value), !7)
  %23 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0)
  %24 = trunc i64 %23 to i8
  %25 = getelementptr i8, ptr %2, i64 288
    #dbg_value(ptr %25, !20, !DIExpression(), !7)
    #dbg_value(ptr %25, !15, !DIExpression(), !7)
  %26 = load <16 x i8>, ptr %25, align 16
  %27 = insertelement <16 x i8> zeroinitializer, i8 %24, i64 0
  %28 = shufflevector <16 x i8> %27, <16 x i8> zeroinitializer, <16 x i32> zeroinitializer
  %29 = and <16 x i8> %26, %28
  store <16 x i8> %29, ptr null, align 16
    #dbg_value(ptr %2, !20, !DIExpression(DW_OP_plus_uconst, 384, DW_OP_stack_value), !7)
    #dbg_value(ptr %2, !15, !DIExpression(DW_OP_plus_uconst, 384, DW_OP_stack_value), !7)
  %30 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0)
  %31 = trunc i64 %30 to i8
  %32 = getelementptr i8, ptr %2, i64 384
    #dbg_value(ptr %32, !20, !DIExpression(), !7)
    #dbg_value(ptr %32, !15, !DIExpression(), !7)
  %33 = load <16 x i8>, ptr %32, align 16
  %34 = insertelement <16 x i8> zeroinitializer, i8 %31, i64 0
  %35 = shufflevector <16 x i8> %34, <16 x i8> zeroinitializer, <16 x i32> zeroinitializer
  %36 = and <16 x i8> %33, %35
  store <16 x i8> %36, ptr null, align 16
    #dbg_value(ptr %2, !20, !DIExpression(DW_OP_plus_uconst, 480, DW_OP_stack_value), !7)
    #dbg_value(ptr %2, !15, !DIExpression(DW_OP_plus_uconst, 480, DW_OP_stack_value), !7)
  %37 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0)
  %38 = trunc i64 %37 to i8
  %39 = getelementptr i8, ptr %2, i64 480
    #dbg_value(ptr %39, !20, !DIExpression(), !7)
    #dbg_value(ptr %39, !15, !DIExpression(), !7)
  %40 = load <16 x i8>, ptr %39, align 16
  %41 = insertelement <16 x i8> zeroinitializer, i8 %38, i64 0
  %42 = shufflevector <16 x i8> %41, <16 x i8> zeroinitializer, <16 x i32> zeroinitializer
  %43 = and <16 x i8> %40, %42
  store <16 x i8> %43, ptr null, align 16
    #dbg_value(ptr %2, !20, !DIExpression(DW_OP_plus_uconst, 576, DW_OP_stack_value), !7)
    #dbg_value(ptr %2, !15, !DIExpression(DW_OP_plus_uconst, 576, DW_OP_stack_value), !7)
  %44 = getelementptr i8, ptr %2, i64 576
    #dbg_value(ptr %44, !20, !DIExpression(), !7)
    #dbg_value(ptr %44, !15, !DIExpression(), !7)
  %45 = load <16 x i8>, ptr %44, align 16
  %46 = and <16 x i8> %45, splat (i8 1)
  store <16 x i8> %46, ptr poison, align 16
  store <16 x i8> zeroinitializer, ptr null, align 16
    #dbg_value(ptr %2, !20, !DIExpression(DW_OP_plus_uconst, 672, DW_OP_stack_value), !7)
  ret void
}

attributes #0 = { "target-cpu"="x86-64" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.1.3", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, globals: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "crypto/curve25519/curve25519.c", directory: ".", checksumkind: CSK_MD5, checksum: "e793909c13579eb895418b153bc57122")
!2 = !{}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DISubprogram(name: "table_select", scope: !1, file: !1, line: 742, type: !5, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2, keyInstructions: true)
!5 = !DISubroutineType(types: !6)
!6 = !{null}
!7 = !DILocation(line: 0, scope: !8, inlinedAt: !11)
!8 = distinct !DISubprogram(name: "constant_time_conditional_memxor", scope: !9, file: !9, line: 260, type: !10, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2, keyInstructions: true)
!9 = !DIFile(filename: "crypto/curve25519/../internal.h", directory: ".", checksumkind: CSK_MD5, checksum: "a88f5aa362c64e7d0f39b4345fd53b2a")
!10 = distinct !DISubroutineType(types: !6)
!11 = distinct !DILocation(line: 753, column: 5, scope: !12)
!12 = distinct !DILexicalBlock(scope: !13, file: !1, line: 752, column: 31)
!13 = distinct !DILexicalBlock(scope: !14, file: !1, line: 752, column: 3)
!14 = distinct !DILexicalBlock(scope: !4, file: !1, line: 752, column: 3)
!15 = !DILocalVariable(name: "in", scope: !8, file: !9, line: 265, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "aliasing_uint8_t", file: !9, line: 59, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DILocalVariable(name: "src", arg: 2, scope: !8, file: !9, line: 260, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
