; ModuleID = 'src\key_store.cpp'
source_filename = "src\\key_store.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.44.35227"

%"struct.std::nullopt_t" = type { i8 }
%"class.std::optional" = type { %"struct.std::_Optional_construct_base" }
%"struct.std::_Optional_construct_base" = type { %"struct.std::_Optional_destruct_base" }
%"struct.std::_Optional_destruct_base" = type { %union.anon, i8 }
%union.anon = type { %"struct.sdep::EnrollmentKey" }
%"struct.sdep::EnrollmentKey" = type { %"struct.sdep::Uuid", %"class.std::array.0", i8, i64 }
%"struct.sdep::Uuid" = type { %"class.std::array" }
%"class.std::array" = type { [16 x i8] }
%"class.std::array.0" = type { [32 x i8] }
%"class.std::scoped_lock" = type { ptr }
%"class.sdep::KeyStore" = type { %"class.std::mutex", %"class.std::optional" }
%"class.std::mutex" = type { %"class.std::_Mutex_base" }
%"class.std::_Mutex_base" = type { %struct._Mtx_internal_imp_t }
%struct._Mtx_internal_imp_t = type { i32, %union.anon.1, i32, i32 }
%union.anon.1 = type { %"union.std::_Align_type" }
%"union.std::_Align_type" = type { double, [56 x i8] }
%"struct.std::equal_to" = type { i8 }

$"??0?$scoped_lock@Vmutex@std@@@std@@QEAA@AEAVmutex@1@@Z" = comdat any

$"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ" = comdat any

$"??C?$optional@UEnrollmentKey@sdep@@@std@@QEAAPEAUEnrollmentKey@sdep@@XZ" = comdat any

$"??0?$optional@UEnrollmentKey@sdep@@@std@@QEAA@Unullopt_t@1@@Z" = comdat any

$"??$?4UEnrollmentKey@sdep@@$0A@@?$optional@UEnrollmentKey@sdep@@@std@@QEAAAEAV01@$$QEAUEnrollmentKey@sdep@@@Z" = comdat any

$"??1?$scoped_lock@Vmutex@std@@@std@@QEAA@XZ" = comdat any

$"??8sdep@@YA_NAEBUUuid@0@0@Z" = comdat any

$"??C?$optional@UEnrollmentKey@sdep@@@std@@QEBAPEBUEnrollmentKey@sdep@@XZ" = comdat any

$"??0?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAA@XZ" = comdat any

$"??0?$_Optional_destruct_base@UEnrollmentKey@sdep@@$00@std@@QEAA@XZ" = comdat any

$"??0_Nontrivial_dummy_type@std@@QEAA@XZ" = comdat any

$"??$_Assign@UEnrollmentKey@sdep@@@?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAAX$$QEAUEnrollmentKey@sdep@@@Z" = comdat any

$"??$_Construct@UEnrollmentKey@sdep@@@?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAAAEAUEnrollmentKey@sdep@@$$QEAU23@@Z" = comdat any

$"??$_Construct_in_place@UEnrollmentKey@sdep@@U12@@std@@YAXAEAUEnrollmentKey@sdep@@$$QEAU12@@Z" = comdat any

$"??$?8E$0BA@@std@@YA_NAEBV?$array@E$0BA@@0@0@Z" = comdat any

$"??$equal@PEBEPEBE@std@@YA_NQEBE00@Z" = comdat any

$"?data@?$array@E$0BA@@std@@QEBAPEBEXZ" = comdat any

$"??$equal@PEBEPEBEU?$equal_to@X@std@@@std@@YA_NQEBE00U?$equal_to@X@0@@Z" = comdat any

$"??$_Adl_verify_range@PEBEPEBE@std@@YAXAEBQEBE0@Z" = comdat any

$"??$_Get_unwrapped@AEBQEBE@std@@YA?A_TAEBQEBE@Z" = comdat any

$"??$_Get_unwrapped_n@AEBQEBE_J@std@@YA?A_TAEBQEBE_J@Z" = comdat any

$"??$_Idl_distance@PEBEPEBE@std@@YA?A_PAEBQEBE0@Z" = comdat any

$"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z" = comdat any

$"??$to_address@$$CBE@std@@YAPEBEQEBE@Z" = comdat any

$"?lock@_Mutex_base@std@@QEAAXXZ" = comdat any

$"?_Mymtx@_Mutex_base@std@@AEAAPEAU_Mtx_internal_imp_t@@XZ" = comdat any

$"?_Verify_ownership_levels@_Mutex_base@std@@IEAA_NXZ" = comdat any

$"?unlock@_Mutex_base@std@@QEAAXXZ" = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"?nullopt@std@@3Unullopt_t@1@B" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@"?nullopt@std@@3Unullopt_t@1@B" = linkonce_odr dso_local constant %"struct.std::nullopt_t" undef, comdat, align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?provision@KeyStore@sdep@@QEAA?AV?$optional@UEnrollmentKey@sdep@@@std@@UEnrollmentKey@2@@Z"(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %1, ptr noundef %2) #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::scoped_lock", align 8
  %8 = alloca %"struct.std::nullopt_t", align 1
  %9 = alloca i32, align 4
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %10, i32 0, i32 0
  %12 = call noundef ptr @"??0?$scoped_lock@Vmutex@std@@@std@@QEAA@AEAVmutex@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(80) %11)
  %13 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %10, i32 0, i32 1
  %14 = call noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %13) #6
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %10, i32 0, i32 1
  %17 = call noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEAAPEAUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %16) #6
  %18 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = trunc i8 %19 to i1
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds nuw %"struct.std::nullopt_t", ptr %8, i32 0, i32 0
  %23 = load i8, ptr %22, align 1
  %24 = call noundef ptr @"??0?$optional@UEnrollmentKey@sdep@@@std@@QEAA@Unullopt_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 %23) #6
  store i32 1, ptr %9, align 4
  br label %30

25:                                               ; preds = %15, %3
  %26 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %2, i32 0, i32 2
  store i8 0, ptr %26, align 8
  %27 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %10, i32 0, i32 1
  %28 = call noundef nonnull align 8 dereferenceable(72) ptr @"??$?4UEnrollmentKey@sdep@@$0A@@?$optional@UEnrollmentKey@sdep@@@std@@QEAAAEAV01@$$QEAUEnrollmentKey@sdep@@@Z"(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 8 dereferenceable(64) %2) #6
  %29 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %10, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %29, i64 72, i1 false)
  store i32 1, ptr %9, align 4
  br label %30

30:                                               ; preds = %25, %21
  call void @"??1?$scoped_lock@Vmutex@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$scoped_lock@Vmutex@std@@@std@@QEAA@AEAVmutex@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::scoped_lock", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::scoped_lock", ptr %5, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  call void @"?lock@_Mutex_base@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(80) %9)
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEAAPEAUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$optional@UEnrollmentKey@sdep@@@std@@QEAA@Unullopt_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(72) %0, i8 %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::nullopt_t", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %"struct.std::nullopt_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"??0?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %6) #6
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @"??$?4UEnrollmentKey@sdep@@$0A@@?$optional@UEnrollmentKey@sdep@@@std@@QEAAAEAV01@$$QEAUEnrollmentKey@sdep@@@Z"(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  call void @"??$_Assign@UEnrollmentKey@sdep@@@?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAAX$$QEAUEnrollmentKey@sdep@@@Z"(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(64) %6) #6
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$scoped_lock@Vmutex@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::scoped_lock", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  call void @"?unlock@_Mutex_base@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(80) %5) #6
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i8 @"?activate@KeyStore@sdep@@QEAA?AW4ActivationResult@2@AEBUUuid@2@@Z"(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 1 dereferenceable(16) %1) #0 align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::scoped_lock", align 8
  %7 = alloca i32, align 4
  store ptr %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %8, i32 0, i32 0
  %10 = call noundef ptr @"??0?$scoped_lock@Vmutex@std@@@std@@QEAA@AEAVmutex@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(80) %9)
  %11 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %8, i32 0, i32 1
  %12 = call noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %11) #6
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8 2, ptr %3, align 1
  store i32 1, ptr %7, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %8, i32 0, i32 1
  %17 = call noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEAAPEAUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %16) #6
  %18 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %17, i32 0, i32 0
  %19 = invoke noundef zeroext i1 @"??8sdep@@YA_NAEBUUuid@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(16) %18, ptr noundef nonnull align 1 dereferenceable(16) %15)
          to label %20 unwind label %36

20:                                               ; preds = %14
  %21 = xor i1 %19, true
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  store i8 2, ptr %3, align 1
  store i32 1, ptr %7, align 4
  br label %34

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %8, i32 0, i32 1
  %25 = call noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEAAPEAUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %24) #6
  %26 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %25, i32 0, i32 2
  %27 = load i8, ptr %26, align 8
  %28 = trunc i8 %27 to i1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8 1, ptr %3, align 1
  store i32 1, ptr %7, align 4
  br label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %8, i32 0, i32 1
  %32 = call noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEAAPEAUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %31) #6
  %33 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %32, i32 0, i32 2
  store i8 1, ptr %33, align 8
  store i8 0, ptr %3, align 1
  store i32 1, ptr %7, align 4
  br label %34

34:                                               ; preds = %30, %29, %22, %13
  call void @"??1?$scoped_lock@Vmutex@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %35 = load i8, ptr %3, align 1
  ret i8 %35

36:                                               ; preds = %14
  %37 = cleanuppad within none []
  call void @"??1?$scoped_lock@Vmutex@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %6) #6 [ "funclet"(token %37) ]
  cleanupret from %37 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??8sdep@@YA_NAEBUUuid@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %"struct.sdep::Uuid", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds nuw %"struct.sdep::Uuid", ptr %7, i32 0, i32 0
  %9 = call noundef zeroext i1 @"??$?8E$0BA@@std@@YA_NAEBV?$array@E$0BA@@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(16) %6)
  ret i1 %9
}

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @"?hasKey@KeyStore@sdep@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(152) %0) #1 align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::scoped_lock", align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %4, i32 0, i32 0
  %6 = invoke noundef ptr @"??0?$scoped_lock@Vmutex@std@@@std@@QEAA@AEAVmutex@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %7 unwind label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %4, i32 0, i32 1
  %9 = call noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %8) #6
  call void @"??1?$scoped_lock@Vmutex@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  ret i1 %9

10:                                               ; preds = %1
  %11 = cleanuppad within none []
  call void @__std_terminate() #7 [ "funclet"(token %11) ]
  unreachable
}

declare dso_local void @__std_terminate()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @"?isActive@KeyStore@sdep@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(152) %0) #1 align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::scoped_lock", align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %4, i32 0, i32 0
  %6 = invoke noundef ptr @"??0?$scoped_lock@Vmutex@std@@@std@@QEAA@AEAVmutex@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %7 unwind label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %4, i32 0, i32 1
  %9 = call noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %8) #6
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %4, i32 0, i32 1
  %12 = call noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEBAPEBUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %11) #6
  %13 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 8
  %15 = trunc i8 %14 to i1
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  call void @"??1?$scoped_lock@Vmutex@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  ret i1 %17

18:                                               ; preds = %1
  %19 = cleanuppad within none []
  call void @__std_terminate() #7 [ "funclet"(token %19) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEBAPEBUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?current@KeyStore@sdep@@QEBA?AV?$optional@UEnrollmentKey@sdep@@@std@@XZ"(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::scoped_lock", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %6, i32 0, i32 0
  %8 = call noundef ptr @"??0?$scoped_lock@Vmutex@std@@@std@@QEAA@AEAVmutex@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(80) %7)
  %9 = getelementptr inbounds nuw %"class.sdep::KeyStore", ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %9, i64 72, i1 false)
  call void @"??1?$scoped_lock@Vmutex@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(72) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0?$_Optional_destruct_base@UEnrollmentKey@sdep@@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Optional_destruct_base@UEnrollmentKey@sdep@@$00@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(72) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 0
  %5 = call noundef ptr @"??0_Nontrivial_dummy_type@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %4) #6
  %6 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 1
  store i8 0, ptr %6, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Nontrivial_dummy_type@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Assign@UEnrollmentKey@sdep@@@?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAAX$$QEAUEnrollmentKey@sdep@@@Z"(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 8
  %8 = trunc i8 %7 to i1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %10, i64 64, i1 false)
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$_Construct@UEnrollmentKey@sdep@@@?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAAAEAUEnrollmentKey@sdep@@$$QEAU23@@Z"(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(64) %13) #6
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??$_Construct@UEnrollmentKey@sdep@@@?$_Optional_construct_base@UEnrollmentKey@sdep@@@std@@QEAAAEAUEnrollmentKey@sdep@@$$QEAU23@@Z"(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 0
  call void @"??$_Construct_in_place@UEnrollmentKey@sdep@@U12@@std@@YAXAEAUEnrollmentKey@sdep@@$$QEAU12@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %6) #6
  %8 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 1
  store i8 1, ptr %8, align 8
  %9 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 0
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@UEnrollmentKey@sdep@@U12@@std@@YAXAEAUEnrollmentKey@sdep@@$$QEAU12@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %6, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??$?8E$0BA@@std@@YA_NAEBV?$array@E$0BA@@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef ptr @"?data@?$array@E$0BA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 1 dereferenceable(16) %5) #6
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef ptr @"?data@?$array@E$0BA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 1 dereferenceable(16) %7) #6
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %10 = load ptr, ptr %4, align 8
  %11 = call noundef ptr @"?data@?$array@E$0BA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 1 dereferenceable(16) %10) #6
  %12 = call noundef zeroext i1 @"??$equal@PEBEPEBE@std@@YA_NQEBE00@Z"(ptr noundef %11, ptr noundef %9, ptr noundef %6)
  ret i1 %12
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??$equal@PEBEPEBE@std@@YA_NQEBE00@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::equal_to", align 1
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds nuw %"struct.std::equal_to", ptr %7, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call noundef zeroext i1 @"??$equal@PEBEPEBEU?$equal_to@X@std@@@std@@YA_NQEBE00U?$equal_to@X@0@@Z"(ptr noundef %10, ptr noundef %9, ptr noundef %8, i8 %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?data@?$array@E$0BA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 1 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::array", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 0
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??$equal@PEBEPEBEU?$equal_to@X@std@@@std@@YA_NQEBE00U?$equal_to@X@0@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 comdat {
  %5 = alloca %"struct.std::equal_to", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds nuw %"struct.std::equal_to", ptr %5, i32 0, i32 0
  store i8 %3, ptr %14, align 1
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  call void @"??$_Adl_verify_range@PEBEPEBE@std@@YAXAEBQEBE0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %15 = call noundef ptr @"??$_Get_unwrapped@AEBQEBE@std@@YA?A_TAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  store ptr %15, ptr %9, align 8
  %16 = call noundef ptr @"??$_Get_unwrapped@AEBQEBE@std@@YA?A_TAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  store ptr %16, ptr %10, align 8
  %17 = call noundef i64 @"??$_Idl_distance@PEBEPEBE@std@@YA?A_PAEBQEBE0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %18 = call noundef ptr @"??$_Get_unwrapped_n@AEBQEBE_J@std@@YA?A_TAEBQEBE_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %17)
  store ptr %18, ptr %11, align 8
  %19 = call noundef ptr @"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  store ptr %19, ptr %12, align 8
  %20 = call noundef ptr @"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  %21 = load ptr, ptr %12, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  store i64 %24, ptr %13, align 8
  %25 = load i64, ptr %13, align 8
  %26 = call noundef ptr @"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  %27 = load ptr, ptr %12, align 8
  %28 = call i32 @memcmp(ptr noundef %27, ptr noundef %26, i64 noundef %25)
  %29 = icmp eq i32 %28, 0
  ret i1 %29
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@PEBEPEBE@std@@YAXAEBQEBE0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped@AEBQEBE@std@@YA?A_TAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 0
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped_n@AEBQEBE_J@std@@YA?A_TAEBQEBE_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #1 comdat {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 0
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Idl_distance@PEBEPEBE@std@@YA?A_PAEBQEBE0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call noundef ptr @"??$to_address@$$CBE@std@@YAPEBEQEBE@Z"(ptr noundef %4) #6
  ret ptr %5
}

declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$to_address@$$CBE@std@@YAPEBEQEBE@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?lock@_Mutex_base@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(80) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Mymtx@_Mutex_base@std@@AEAAPEAU_Mtx_internal_imp_t@@XZ"(ptr noundef nonnull align 8 dereferenceable(80) %3) #6
  %5 = call i32 @_Mtx_lock(ptr noundef %4) #6
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 5) #8
  unreachable

8:                                                ; preds = %1
  %9 = call noundef zeroext i1 @"?_Verify_ownership_levels@_Mutex_base@std@@IEAA_NXZ"(ptr noundef nonnull align 8 dereferenceable(80) %3) #6
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  call void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef 6) #8
  unreachable

11:                                               ; preds = %8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @_Mtx_lock(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Mymtx@_Mutex_base@std@@AEAAPEAU_Mtx_internal_imp_t@@XZ"(ptr noundef nonnull align 8 dereferenceable(80) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Mutex_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noreturn
declare dso_local void @"?_Throw_Cpp_error@std@@YAXH@Z"(i32 noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Verify_ownership_levels@_Mutex_base@std@@IEAA_NXZ"(ptr noundef nonnull align 8 dereferenceable(80) %0) #1 comdat align 2 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %"class.std::_Mutex_base", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %struct._Mtx_internal_imp_t, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2147483647
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw %"class.std::_Mutex_base", ptr %4, i32 0, i32 0
  %11 = getelementptr inbounds nuw %struct._Mtx_internal_imp_t, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %11, align 4
  store i1 false, ptr %2, align 1
  br label %15

14:                                               ; preds = %1
  store i1 true, ptr %2, align 1
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i1, ptr %2, align 1
  ret i1 %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?unlock@_Mutex_base@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(80) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Mymtx@_Mutex_base@std@@AEAAPEAU_Mtx_internal_imp_t@@XZ"(ptr noundef nonnull align 8 dereferenceable(80) %3) #6
  %5 = call i32 @_Mtx_unlock(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @_Mtx_unlock(ptr noundef) #4

attributes #0 = { mustprogress noinline optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { noreturn }

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
