; ModuleID = 'C:\Users\ameliapayne\demo_protocol\cpp\src\key_store.cpp'
source_filename = "C:\\Users\\ameliapayne\\demo_protocol\\cpp\\src\\key_store.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.44.35228"

%"class.std::optional" = type { %"struct.std::_Optional_construct_base" }
%"struct.std::_Optional_construct_base" = type { %"struct.std::_Optional_destruct_base" }
%"struct.std::_Optional_destruct_base" = type { %union.anon, i8 }
%union.anon = type { %"struct.sdep::EnrollmentKey" }
%"struct.sdep::EnrollmentKey" = type { %"struct.sdep::Uuid", %"class.std::array.0", i8, i64 }
%"struct.sdep::Uuid" = type { %"class.std::array" }
%"class.std::array" = type { [16 x i8] }
%"class.std::array.0" = type { [32 x i8] }

$_Avx2WmemEnabledWeakValue = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local local_unnamed_addr global i32 0, comdat, align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @"?provision@KeyStore@sdep@@QEAA?AV?$optional@UEnrollmentKey@sdep@@@std@@UEnrollmentKey@2@@Z"(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.std::optional") align 8 %1, ptr nocapture noundef %2) local_unnamed_addr #0 align 2 {
  %4 = tail call i32 @_Mtx_lock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 5) #6
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2147483647
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 2147483646, ptr %8, align 4
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 6) #6
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %15 = load i8, ptr %14, align 8, !range !13, !noundef !14
  %16 = trunc nuw i8 %15 to i1
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %18, align 8
  br label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %20, align 8
  %21 = load i8, ptr %14, align 8, !range !13, !noundef !14
  %22 = trunc nuw i8 %21 to i1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i8 1, ptr %14, align 8
  br label %24

24:                                               ; preds = %19, %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %13, i64 72, i1 false)
  br label %25

25:                                               ; preds = %17, %24
  %26 = tail call i32 @_Mtx_unlock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i8 0, 3) i8 @"?activate@KeyStore@sdep@@QEAA?AW4ActivationResult@2@AEBUUuid@2@@Z"(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nocapture noundef nonnull readonly align 1 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
  %3 = tail call i32 @_Mtx_lock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 5) #6
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2147483647
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 2147483646, ptr %7, align 4
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 6) #6
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %13 = load i8, ptr %12, align 8, !range !13, !noundef !14
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %17 = tail call i32 @memcmp(ptr noundef nonnull align 1 dereferenceable(16) %16, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef 16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %21 = load i8, ptr %20, align 8, !range !13, !noundef !14
  %22 = trunc nuw i8 %21 to i1
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i8 1, ptr %20, align 8
  br label %24

24:                                               ; preds = %19, %15, %11, %23
  %25 = phi i8 [ 0, %23 ], [ 2, %11 ], [ 2, %15 ], [ 1, %19 ]
  %26 = tail call i32 @_Mtx_unlock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  ret i8 %25
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @"?hasKey@KeyStore@sdep@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 {
  %2 = tail call i32 @_Mtx_lock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 5) #6
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2147483647
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 2147483646, ptr %6, align 4
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 6) #6
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %12 = load i8, ptr %11, align 8, !range !13, !noundef !14
  %13 = trunc nuw i8 %12 to i1
  %14 = tail call i32 @_Mtx_unlock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  ret i1 %13
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @"?isActive@KeyStore@sdep@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 {
  %2 = tail call i32 @_Mtx_lock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 5) #6
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2147483647
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 2147483646, ptr %6, align 4
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 6) #6
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %12 = load i8, ptr %11, align 8, !range !13, !noundef !14
  %13 = trunc nuw i8 %12 to i1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %15 = load i8, ptr %14, align 8, !range !13
  %16 = trunc nuw i8 %15 to i1
  %17 = select i1 %13, i1 %16, i1 false
  %18 = tail call i32 @_Mtx_unlock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  ret i1 %17
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @"?current@KeyStore@sdep@@QEBA?AV?$optional@UEnrollmentKey@sdep@@@std@@XZ"(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.std::optional") align 8 %1) local_unnamed_addr #0 align 2 {
  %3 = tail call i32 @_Mtx_lock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 5) #6
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2147483647
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 2147483646, ptr %7, align 4
  tail call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 6) #6
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %12, i64 72, i1 false)
  %13 = tail call i32 @_Mtx_unlock(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @_Mtx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare dso_local void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @_Mtx_unlock(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.linker.options = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!1 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!2 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!3 = !{!"/DEFAULTLIB:libcpmt.lib"}
!4 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!5 = !{!"/alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"}
!6 = !{!"/FAILIFMISMATCH:\22annotate_string=0\22"}
!7 = !{!"/FAILIFMISMATCH:\22annotate_vector=0\22"}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 1, !"MaxTLSAlign", i32 65536}
!12 = !{!"clang version 20.1.6"}
!13 = !{i8 0, i8 2}
!14 = !{}
