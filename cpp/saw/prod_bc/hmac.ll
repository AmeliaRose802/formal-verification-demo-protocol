; ModuleID = 'src\hmac.cpp'
source_filename = "src\\hmac.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.44.35227"

%"class.sdep::crypto::Sha256" = type { [8 x i32], i64, [64 x i8], i64 }
%"struct.std::_Span_iterator" = type { ptr }
%"struct.std::_Span_extent_type" = type { ptr, i64 }
%"class.std::span" = type { %"struct.std::_Span_extent_type" }
%"class.std::basic_string_view" = type { ptr, i64 }
%"class.std::array" = type { [32 x i8] }
%"class.std::array.0" = type { [64 x i8] }
%"class.std::_Array_iterator" = type { %"class.std::_Array_const_iterator" }
%"class.std::_Array_const_iterator" = type { ptr }
%"class.std::_Array_const_iterator.1" = type { ptr }

$"?begin@?$span@$$CBE$0?0@std@@QEBA?AU?$_Span_iterator@$$CBE@2@XZ" = comdat any

$"?end@?$span@$$CBE$0?0@std@@QEBA?AU?$_Span_iterator@$$CBE@2@XZ" = comdat any

$"??8?$_Span_iterator@$$CBE@std@@QEBA_NAEBU01@@Z" = comdat any

$"??D?$_Span_iterator@$$CBE@std@@QEBAAEBEXZ" = comdat any

$"??E?$_Span_iterator@$$CBE@std@@QEAAAEAU01@XZ" = comdat any

$"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ" = comdat any

$"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z" = comdat any

$"??A?$array@E$0CA@@std@@QEAAAEAE_K@Z" = comdat any

$"??0Sha256@crypto@sdep@@QEAA@XZ" = comdat any

$"?size@?$span@$$CBE$0?0@std@@QEBA_KXZ" = comdat any

$"??$copy@V?$_Array_const_iterator@E$0CA@@std@@V?$_Array_iterator@E$0EA@@2@@std@@YA?AV?$_Array_iterator@E$0EA@@0@V?$_Array_const_iterator@E$0CA@@0@0V10@@Z" = comdat any

$"?begin@?$array@E$0EA@@std@@QEAA?AV?$_Array_iterator@E$0EA@@2@XZ" = comdat any

$"?end@?$array@E$0CA@@std@@QEBA?AV?$_Array_const_iterator@E$0CA@@2@XZ" = comdat any

$"?begin@?$array@E$0CA@@std@@QEBA?AV?$_Array_const_iterator@E$0CA@@2@XZ" = comdat any

$"??$copy@U?$_Span_iterator@$$CBE@std@@V?$_Array_iterator@E$0EA@@2@@std@@YA?AV?$_Array_iterator@E$0EA@@0@U?$_Span_iterator@$$CBE@0@0V10@@Z" = comdat any

$"??A?$array@E$0EA@@std@@QEAAAEAE_K@Z" = comdat any

$"?data@?$array@E$0EA@@std@@QEAAPEAEXZ" = comdat any

$"?size@?$array@E$0EA@@std@@QEBA_KXZ" = comdat any

$"??$?0PEAE@?$span@$$CBE$0?0@std@@QEAA@PEAE_K@Z" = comdat any

$"?data@?$array@E$0CA@@std@@QEBAPEBEXZ" = comdat any

$"?size@?$array@E$0CA@@std@@QEBA_KXZ" = comdat any

$"??A?$span@$$CBE$0?0@std@@QEBAAEBE_K@Z" = comdat any

$"??$rotr@I@std@@YAIIH@Z" = comdat any

$"??$to_address@$$CBE@std@@YAPEBEQEBE@Z" = comdat any

$"??$_Get_unwrapped_n@AEAPEBE_K@std@@YA?A_TAEAPEBE_K@Z" = comdat any

$"??0?$_Span_extent_type@$$CBE$0?0@std@@QEAA@QEBE_K@Z" = comdat any

$"??$_Adl_verify_range@V?$_Array_const_iterator@E$0CA@@std@@V12@@std@@YAXAEBV?$_Array_const_iterator@E$0CA@@0@0@Z" = comdat any

$"??$_Get_unwrapped@AEAV?$_Array_const_iterator@E$0CA@@std@@@std@@YA?A_TAEAV?$_Array_const_iterator@E$0CA@@0@@Z" = comdat any

$"??$_Get_unwrapped_n@V?$_Array_iterator@E$0EA@@std@@_J@std@@YA?A_T$$QEAV?$_Array_iterator@E$0EA@@0@_J@Z" = comdat any

$"??$_Idl_distance@V?$_Array_const_iterator@E$0CA@@std@@PEBE@std@@YA?A_PAEBQEBE0@Z" = comdat any

$"??$_Seek_wrapped@V?$_Array_iterator@E$0EA@@std@@PEAE@std@@YAXAEAV?$_Array_iterator@E$0EA@@0@$$QEAPEAE@Z" = comdat any

$"??$_Copy_unchecked@PEBEPEBEPEAE@std@@YAPEAEPEBE0PEAE@Z" = comdat any

$"?_Unwrapped@?$_Array_const_iterator@E$0CA@@std@@QEBAPEBEXZ" = comdat any

$"?_Unwrapped@?$_Array_iterator@E$0EA@@std@@QEBAPEAEXZ" = comdat any

$"?_Unwrapped@?$_Array_const_iterator@E$0EA@@std@@QEBAPEBEXZ" = comdat any

$"?_Seek_to@?$_Array_const_iterator@E$0EA@@std@@QEAAXPEBE@Z" = comdat any

$"??$_Copy_memmove@PEBEPEAE@std@@YAPEAEPEBE0PEAE@Z" = comdat any

$"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z" = comdat any

$"??$_Copy_memmove_tail@PEAE@std@@YAPEAEQEBDQEAE_K2@Z" = comdat any

$"??$_To_address@PEAE@std@@YA?A_PAEBQEAE@Z" = comdat any

$"??$to_address@E@std@@YAPEAEQEAE@Z" = comdat any

$"??0?$_Array_iterator@E$0EA@@std@@QEAA@PEAE_K@Z" = comdat any

$"??0?$_Array_const_iterator@E$0EA@@std@@QEAA@PEBE_K@Z" = comdat any

$"??0?$_Array_const_iterator@E$0CA@@std@@QEAA@PEBE_K@Z" = comdat any

$"??$_Adl_verify_range@U?$_Span_iterator@$$CBE@std@@U12@@std@@YAXAEBU?$_Span_iterator@$$CBE@0@0@Z" = comdat any

$"??$_Get_unwrapped@AEAU?$_Span_iterator@$$CBE@std@@@std@@YA?A_TAEAU?$_Span_iterator@$$CBE@0@@Z" = comdat any

$"??$_Idl_distance@U?$_Span_iterator@$$CBE@std@@PEBE@std@@YA?A_PAEBQEBE0@Z" = comdat any

$"?_Unwrapped@?$_Span_iterator@$$CBE@std@@QEBAPEBEXZ" = comdat any

$"??$_Get_unwrapped_n@AEAPEAE_K@std@@YA?A_TAEAPEAE_K@Z" = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@"?kInitState@?A0x438244E3@crypto@sdep@@3QBIB" = internal constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@"?kK@?A0x438244E3@crypto@sdep@@3QBIB" = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?reset@Sha256@crypto@sdep@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(112) %0) #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 16 @"?kInitState@?A0x438244E3@crypto@sdep@@3QBIB", i64 32, i1 false)
  %6 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %3, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %3, i32 0, i32 3
  store i64 0, ptr %7, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?transform@Sha256@crypto@sdep@@AEAAXQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %25 = load ptr, ptr %4, align 8
  store i32 0, ptr %6, align 4
  br label %26

26:                                               ; preds = %71, %2
  %27 = load i32, ptr %6, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %74

29:                                               ; preds = %26
  %30 = load ptr, ptr %3, align 8
  %31 = load i32, ptr %6, align 4
  %32 = mul nsw i32 %31, 4
  %33 = add nsw i32 %32, 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %30, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 24
  %39 = load ptr, ptr %3, align 8
  %40 = load i32, ptr %6, align 4
  %41 = mul nsw i32 %40, 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %39, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 16
  %48 = or i32 %38, %47
  %49 = load ptr, ptr %3, align 8
  %50 = load i32, ptr %6, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %49, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = or i32 %48, %57
  %59 = load ptr, ptr %3, align 8
  %60 = load i32, ptr %6, align 4
  %61 = mul nsw i32 %60, 4
  %62 = add nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %59, i64 %63
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %58, %66
  %68 = load i32, ptr %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %69
  store i32 %67, ptr %70, align 4
  br label %71

71:                                               ; preds = %29
  %72 = load i32, ptr %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %6, align 4
  br label %26, !llvm.loop !11

74:                                               ; preds = %26
  store i32 16, ptr %7, align 4
  br label %75

75:                                               ; preds = %137, %74
  %76 = load i32, ptr %7, align 4
  %77 = icmp slt i32 %76, 64
  br i1 %77, label %78, label %140

78:                                               ; preds = %75
  %79 = load i32, ptr %7, align 4
  %80 = sub nsw i32 %79, 15
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4
  %84 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %83, i32 noundef 7) #5
  %85 = load i32, ptr %7, align 4
  %86 = sub nsw i32 %85, 15
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4
  %90 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %89, i32 noundef 18) #5
  %91 = xor i32 %84, %90
  %92 = load i32, ptr %7, align 4
  %93 = sub nsw i32 %92, 15
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4
  %97 = lshr i32 %96, 3
  %98 = xor i32 %91, %97
  store i32 %98, ptr %8, align 4
  %99 = load i32, ptr %7, align 4
  %100 = sub nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4
  %104 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %103, i32 noundef 17) #5
  %105 = load i32, ptr %7, align 4
  %106 = sub nsw i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %109, i32 noundef 19) #5
  %111 = xor i32 %104, %110
  %112 = load i32, ptr %7, align 4
  %113 = sub nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 10
  %118 = xor i32 %111, %117
  store i32 %118, ptr %9, align 4
  %119 = load i32, ptr %7, align 4
  %120 = sub nsw i32 %119, 16
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4
  %124 = load i32, ptr %8, align 4
  %125 = add i32 %123, %124
  %126 = load i32, ptr %7, align 4
  %127 = sub nsw i32 %126, 7
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %125, %130
  %132 = load i32, ptr %9, align 4
  %133 = add i32 %131, %132
  %134 = load i32, ptr %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %135
  store i32 %133, ptr %136, align 4
  br label %137

137:                                              ; preds = %78
  %138 = load i32, ptr %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %7, align 4
  br label %75, !llvm.loop !13

140:                                              ; preds = %75
  %141 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %142 = getelementptr inbounds [8 x i32], ptr %141, i64 0, i64 0
  %143 = load i32, ptr %142, align 8
  store i32 %143, ptr %10, align 4
  %144 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %145 = getelementptr inbounds [8 x i32], ptr %144, i64 0, i64 1
  %146 = load i32, ptr %145, align 4
  store i32 %146, ptr %11, align 4
  %147 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %148 = getelementptr inbounds [8 x i32], ptr %147, i64 0, i64 2
  %149 = load i32, ptr %148, align 8
  store i32 %149, ptr %12, align 4
  %150 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %151 = getelementptr inbounds [8 x i32], ptr %150, i64 0, i64 3
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %13, align 4
  %153 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %154 = getelementptr inbounds [8 x i32], ptr %153, i64 0, i64 4
  %155 = load i32, ptr %154, align 8
  store i32 %155, ptr %14, align 4
  %156 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %157 = getelementptr inbounds [8 x i32], ptr %156, i64 0, i64 5
  %158 = load i32, ptr %157, align 4
  store i32 %158, ptr %15, align 4
  %159 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %160 = getelementptr inbounds [8 x i32], ptr %159, i64 0, i64 6
  %161 = load i32, ptr %160, align 8
  store i32 %161, ptr %16, align 4
  %162 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %163 = getelementptr inbounds [8 x i32], ptr %162, i64 0, i64 7
  %164 = load i32, ptr %163, align 4
  store i32 %164, ptr %17, align 4
  store i32 0, ptr %18, align 4
  br label %165

165:                                              ; preds = %234, %140
  %166 = load i32, ptr %18, align 4
  %167 = icmp slt i32 %166, 64
  br i1 %167, label %168, label %237

168:                                              ; preds = %165
  %169 = load i32, ptr %14, align 4
  %170 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %169, i32 noundef 6) #5
  %171 = load i32, ptr %14, align 4
  %172 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %171, i32 noundef 11) #5
  %173 = xor i32 %170, %172
  %174 = load i32, ptr %14, align 4
  %175 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %174, i32 noundef 25) #5
  %176 = xor i32 %173, %175
  store i32 %176, ptr %19, align 4
  %177 = load i32, ptr %14, align 4
  %178 = load i32, ptr %15, align 4
  %179 = and i32 %177, %178
  %180 = load i32, ptr %14, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, ptr %16, align 4
  %183 = and i32 %181, %182
  %184 = xor i32 %179, %183
  store i32 %184, ptr %20, align 4
  %185 = load i32, ptr %17, align 4
  %186 = load i32, ptr %19, align 4
  %187 = add i32 %185, %186
  %188 = load i32, ptr %20, align 4
  %189 = add i32 %187, %188
  %190 = load i32, ptr %18, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [64 x i32], ptr @"?kK@?A0x438244E3@crypto@sdep@@3QBIB", i64 0, i64 %191
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %189, %193
  %195 = load i32, ptr %18, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %194, %198
  store i32 %199, ptr %21, align 4
  %200 = load i32, ptr %10, align 4
  %201 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %200, i32 noundef 2) #5
  %202 = load i32, ptr %10, align 4
  %203 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %202, i32 noundef 13) #5
  %204 = xor i32 %201, %203
  %205 = load i32, ptr %10, align 4
  %206 = call noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %205, i32 noundef 22) #5
  %207 = xor i32 %204, %206
  store i32 %207, ptr %22, align 4
  %208 = load i32, ptr %10, align 4
  %209 = load i32, ptr %11, align 4
  %210 = and i32 %208, %209
  %211 = load i32, ptr %10, align 4
  %212 = load i32, ptr %12, align 4
  %213 = and i32 %211, %212
  %214 = xor i32 %210, %213
  %215 = load i32, ptr %11, align 4
  %216 = load i32, ptr %12, align 4
  %217 = and i32 %215, %216
  %218 = xor i32 %214, %217
  store i32 %218, ptr %23, align 4
  %219 = load i32, ptr %22, align 4
  %220 = load i32, ptr %23, align 4
  %221 = add i32 %219, %220
  store i32 %221, ptr %24, align 4
  %222 = load i32, ptr %16, align 4
  store i32 %222, ptr %17, align 4
  %223 = load i32, ptr %15, align 4
  store i32 %223, ptr %16, align 4
  %224 = load i32, ptr %14, align 4
  store i32 %224, ptr %15, align 4
  %225 = load i32, ptr %13, align 4
  %226 = load i32, ptr %21, align 4
  %227 = add i32 %225, %226
  store i32 %227, ptr %14, align 4
  %228 = load i32, ptr %12, align 4
  store i32 %228, ptr %13, align 4
  %229 = load i32, ptr %11, align 4
  store i32 %229, ptr %12, align 4
  %230 = load i32, ptr %10, align 4
  store i32 %230, ptr %11, align 4
  %231 = load i32, ptr %21, align 4
  %232 = load i32, ptr %24, align 4
  %233 = add i32 %231, %232
  store i32 %233, ptr %10, align 4
  br label %234

234:                                              ; preds = %168
  %235 = load i32, ptr %18, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr %18, align 4
  br label %165, !llvm.loop !14

237:                                              ; preds = %165
  %238 = load i32, ptr %10, align 4
  %239 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %240 = getelementptr inbounds [8 x i32], ptr %239, i64 0, i64 0
  %241 = load i32, ptr %240, align 8
  %242 = add i32 %241, %238
  store i32 %242, ptr %240, align 8
  %243 = load i32, ptr %11, align 4
  %244 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %245 = getelementptr inbounds [8 x i32], ptr %244, i64 0, i64 1
  %246 = load i32, ptr %245, align 4
  %247 = add i32 %246, %243
  store i32 %247, ptr %245, align 4
  %248 = load i32, ptr %12, align 4
  %249 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %250 = getelementptr inbounds [8 x i32], ptr %249, i64 0, i64 2
  %251 = load i32, ptr %250, align 8
  %252 = add i32 %251, %248
  store i32 %252, ptr %250, align 8
  %253 = load i32, ptr %13, align 4
  %254 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %255 = getelementptr inbounds [8 x i32], ptr %254, i64 0, i64 3
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, %253
  store i32 %257, ptr %255, align 4
  %258 = load i32, ptr %14, align 4
  %259 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %260 = getelementptr inbounds [8 x i32], ptr %259, i64 0, i64 4
  %261 = load i32, ptr %260, align 8
  %262 = add i32 %261, %258
  store i32 %262, ptr %260, align 8
  %263 = load i32, ptr %15, align 4
  %264 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %265 = getelementptr inbounds [8 x i32], ptr %264, i64 0, i64 5
  %266 = load i32, ptr %265, align 4
  %267 = add i32 %266, %263
  store i32 %267, ptr %265, align 4
  %268 = load i32, ptr %16, align 4
  %269 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %270 = getelementptr inbounds [8 x i32], ptr %269, i64 0, i64 6
  %271 = load i32, ptr %270, align 8
  %272 = add i32 %271, %268
  store i32 %272, ptr %270, align 8
  %273 = load i32, ptr %17, align 4
  %274 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %25, i32 0, i32 0
  %275 = getelementptr inbounds [8 x i32], ptr %274, i64 0, i64 7
  %276 = load i32, ptr %275, align 4
  %277 = add i32 %276, %273
  store i32 %277, ptr %275, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @"?rotr@?A0x438244E3@crypto@sdep@@YAIII@Z"(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = call noundef i32 @"??$rotr@I@std@@YAIIH@Z"(i32 noundef %6, i32 noundef %5) #5
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?update@Sha256@crypto@sdep@@QEAAXV?$span@$$CBE$0?0@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Span_iterator", align 8
  %7 = alloca %"struct.std::_Span_iterator", align 8
  %8 = alloca i8, align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  call void @"?begin@?$span@$$CBE$0?0@std@@QEBA?AU?$_Span_iterator@$$CBE@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr dead_on_unwind writable sret(%"struct.std::_Span_iterator") align 8 %6) #5
  %11 = load ptr, ptr %5, align 8
  call void @"?end@?$span@$$CBE$0?0@std@@QEBA?AU?$_Span_iterator@$$CBE@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr dead_on_unwind writable sret(%"struct.std::_Span_iterator") align 8 %7) #5
  br label %12

12:                                               ; preds = %35, %2
  %13 = call noundef zeroext i1 @"??8?$_Span_iterator@$$CBE@std@@QEBA_NAEBU01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @"??D?$_Span_iterator@$$CBE@std@@QEBAAEBEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %8, align 1
  %18 = load i8, ptr %8, align 1
  %19 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %9, i32 0, i32 2
  %20 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %9, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8
  %23 = getelementptr inbounds nuw [64 x i8], ptr %19, i64 0, i64 %21
  store i8 %18, ptr %23, align 1
  %24 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %9, i32 0, i32 3
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 64
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %9, i32 0, i32 2
  %29 = getelementptr inbounds [64 x i8], ptr %28, i64 0, i64 0
  call void @"?transform@Sha256@crypto@sdep@@AEAAXQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef %29) #5
  %30 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %9, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, 512
  store i64 %32, ptr %30, align 8
  %33 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %9, i32 0, i32 3
  store i64 0, ptr %33, align 8
  br label %34

34:                                               ; preds = %27, %15
  br label %35

35:                                               ; preds = %34
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Span_iterator@$$CBE@std@@QEAAAEAU01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %12

37:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$span@$$CBE$0?0@std@@QEBA?AU?$_Span_iterator@$$CBE@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"struct.std::_Span_iterator") align 8 %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %1, i32 0, i32 0
  %7 = getelementptr inbounds nuw %"struct.std::_Span_extent_type", ptr %5, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?end@?$span@$$CBE$0?0@std@@QEBA?AU?$_Span_iterator@$$CBE@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"struct.std::_Span_iterator") align 8 %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"struct.std::_Span_extent_type", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds nuw %"struct.std::_Span_extent_type", ptr %6, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 %10
  store ptr %11, ptr %5, align 8
  %12 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %1, i32 0, i32 0
  %13 = load ptr, ptr %5, align 8
  store ptr %13, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??8?$_Span_iterator@$$CBE@std@@QEBA_NAEBU01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??D?$_Span_iterator@$$CBE@std@@QEBAAEBEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Span_iterator@$$CBE@std@@QEAAAEAU01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %6, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?update@Sha256@crypto@sdep@@QEAAXV?$basic_string_view@DU?$char_traits@D@std@@@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::span", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
  %8 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
  %9 = call noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %7, i64 noundef %8) #5
  call void @"?update@Sha256@crypto@sdep@@QEAAXV?$span@$$CBE$0?0@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %5) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = load i64, ptr %4, align 8
  %10 = invoke noundef ptr @"??$_Get_unwrapped_n@AEAPEBE_K@std@@YA?A_TAEAPEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %9)
          to label %11 unwind label %14

11:                                               ; preds = %3
  %12 = call noundef ptr @"??$to_address@$$CBE@std@@YAPEBEQEBE@Z"(ptr noundef %10) #5
  %13 = call noundef ptr @"??0?$_Span_extent_type@$$CBE$0?0@std@@QEAA@QEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %12, i64 noundef %8) #5
  ret ptr %7

14:                                               ; preds = %3
  %15 = cleanuppad within none []
  call void @__std_terminate() #6 [ "funclet"(token %15) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?finalize@Sha256@crypto@sdep@@QEAA?AV?$array@E$0CA@@std@@XZ"(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr dead_on_unwind noalias writable sret(%"class.std::array") align 1 %1) #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  %12 = load i64, ptr %11, align 8
  %13 = mul i64 %12, 8
  %14 = add i64 %10, %13
  store i64 %14, ptr %5, align 8
  %15 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 2
  %16 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds nuw [64 x i8], ptr %15, i64 0, i64 %17
  store i8 -128, ptr %19, align 1
  %20 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = icmp ugt i64 %21, 56
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %28, %23
  %25 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  %26 = load i64, ptr %25, align 8
  %27 = icmp ult i64 %26, 64
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 2
  %30 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8
  %33 = getelementptr inbounds nuw [64 x i8], ptr %29, i64 0, i64 %31
  store i8 0, ptr %33, align 1
  br label %24, !llvm.loop !15

34:                                               ; preds = %24
  %35 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 2
  %36 = getelementptr inbounds [64 x i8], ptr %35, i64 0, i64 0
  call void @"?transform@Sha256@crypto@sdep@@AEAAXQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %36) #5
  %37 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  store i64 0, ptr %37, align 8
  br label %38

38:                                               ; preds = %34, %2
  br label %39

39:                                               ; preds = %43, %38
  %40 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  %41 = load i64, ptr %40, align 8
  %42 = icmp ult i64 %41, 56
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 2
  %45 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, ptr %45, align 8
  %48 = getelementptr inbounds nuw [64 x i8], ptr %44, i64 0, i64 %46
  store i8 0, ptr %48, align 1
  br label %39, !llvm.loop !16

49:                                               ; preds = %39
  store i32 7, ptr %6, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, ptr %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i64, ptr %5, align 8
  %55 = load i32, ptr %6, align 4
  %56 = mul nsw i32 %55, 8
  %57 = zext i32 %56 to i64
  %58 = lshr i64 %54, %57
  %59 = and i64 %58, 255
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 2
  %62 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 3
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, ptr %62, align 8
  %65 = getelementptr inbounds nuw [64 x i8], ptr %61, i64 0, i64 %63
  store i8 %60, ptr %65, align 1
  br label %66

66:                                               ; preds = %53
  %67 = load i32, ptr %6, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr %6, align 4
  br label %50, !llvm.loop !17

69:                                               ; preds = %50
  %70 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 2
  %71 = getelementptr inbounds [64 x i8], ptr %70, i64 0, i64 0
  call void @"?transform@Sha256@crypto@sdep@@AEAAXQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %71) #5
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 32, i1 false)
  store i32 0, ptr %7, align 4
  br label %72

72:                                               ; preds = %127, %69
  %73 = load i32, ptr %7, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %130

75:                                               ; preds = %72
  %76 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 0
  %77 = load i32, ptr %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i32], ptr %76, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4
  %81 = lshr i32 %80, 24
  %82 = and i32 %81, 255
  %83 = trunc i32 %82 to i8
  %84 = load i32, ptr %7, align 4
  %85 = mul nsw i32 %84, 4
  %86 = add nsw i32 %85, 0
  %87 = sext i32 %86 to i64
  %88 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0CA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef %87) #5
  store i8 %83, ptr %88, align 1
  %89 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 0
  %90 = load i32, ptr %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i32], ptr %89, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = trunc i32 %95 to i8
  %97 = load i32, ptr %7, align 4
  %98 = mul nsw i32 %97, 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0CA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef %100) #5
  store i8 %96, ptr %101, align 1
  %102 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 0
  %103 = load i32, ptr %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [8 x i32], ptr %102, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4
  %107 = lshr i32 %106, 8
  %108 = and i32 %107, 255
  %109 = trunc i32 %108 to i8
  %110 = load i32, ptr %7, align 4
  %111 = mul nsw i32 %110, 4
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0CA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef %113) #5
  store i8 %109, ptr %114, align 1
  %115 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %8, i32 0, i32 0
  %116 = load i32, ptr %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i32], ptr %115, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 255
  %121 = trunc i32 %120 to i8
  %122 = load i32, ptr %7, align 4
  %123 = mul nsw i32 %122, 4
  %124 = add nsw i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0CA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef %125) #5
  store i8 %121, ptr %126, align 1
  br label %127

127:                                              ; preds = %75
  %128 = load i32, ptr %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %7, align 4
  br label %72, !llvm.loop !18

130:                                              ; preds = %72
  call void @"?reset@Sha256@crypto@sdep@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(112) %8) #5
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0CA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::array", ptr %5, i32 0, i32 0
  %7 = load i64, ptr %3, align 8
  %8 = getelementptr inbounds nuw [32 x i8], ptr %6, i64 0, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$span@$$CBE$0?0@4@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::array") align 1 %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.sdep::crypto::Sha256", align 8
  %6 = alloca %"class.std::span", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = call noundef ptr @"??0Sha256@crypto@sdep@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(112) %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %1, i64 16, i1 false)
  call void @"?update@Sha256@crypto@sdep@@QEAAXV?$span@$$CBE$0?0@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %6) #5
  call void @"?finalize@Sha256@crypto@sdep@@QEAA?AV?$array@E$0CA@@std@@XZ"(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr dead_on_unwind writable sret(%"class.std::array") align 1 %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0Sha256@crypto@sdep@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds i32, ptr %5, i64 8
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %5, %1 ], [ %9, %7 ]
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %4, i32 0, i32 1
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %4, i32 0, i32 2
  %14 = getelementptr inbounds i8, ptr %13, i64 64
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi ptr [ %13, %11 ], [ %17, %15 ]
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw %"class.sdep::crypto::Sha256", ptr %4, i32 0, i32 3
  store i64 0, ptr %20, align 8
  call void @"?reset@Sha256@crypto@sdep@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(112) %4) #5
  %21 = load ptr, ptr %2, align 8
  ret ptr %21
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@4@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::array") align 1 %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::span", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = call noundef ptr @"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
  %7 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
  %8 = call noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %6, i64 noundef %7) #5
  call void @"?sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$span@$$CBE$0?0@4@@Z"(ptr dead_on_unwind writable sret(%"class.std::array") align 1 %0, ptr noundef %5) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?hmac_sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$span@$$CBE$0?0@4@0@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::array") align 1 %0, ptr noundef %1, ptr noundef %2) #0 personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::array.0", align 1
  %9 = alloca %"class.std::array", align 1
  %10 = alloca %"class.std::span", align 8
  %11 = alloca %"class.std::_Array_iterator", align 8
  %12 = alloca %"class.std::_Array_const_iterator.1", align 8
  %13 = alloca %"class.std::_Array_const_iterator.1", align 8
  %14 = alloca %"class.std::_Array_iterator", align 8
  %15 = alloca %"class.std::_Array_iterator", align 8
  %16 = alloca %"struct.std::_Span_iterator", align 8
  %17 = alloca %"struct.std::_Span_iterator", align 8
  %18 = alloca %"class.std::_Array_iterator", align 8
  %19 = alloca %"class.std::array.0", align 1
  %20 = alloca %"class.std::array.0", align 1
  %21 = alloca i64, align 8
  %22 = alloca %"class.sdep::crypto::Sha256", align 8
  %23 = alloca %"class.std::span", align 8
  %24 = alloca %"class.std::span", align 8
  %25 = alloca %"class.std::array", align 1
  %26 = alloca %"class.sdep::crypto::Sha256", align 8
  %27 = alloca %"class.std::span", align 8
  %28 = alloca %"class.std::span", align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 64, ptr %7, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 64, i1 false)
  %29 = call noundef i64 @"?size@?$span@$$CBE$0?0@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
  %30 = icmp ugt i64 %29, 64
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %1, i64 16, i1 false)
  call void @"?sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$span@$$CBE$0?0@4@@Z"(ptr dead_on_unwind writable sret(%"class.std::array") align 1 %9, ptr noundef %10) #5
  call void @"?begin@?$array@E$0EA@@std@@QEAA?AV?$_Array_iterator@E$0EA@@2@XZ"(ptr noundef nonnull align 1 dereferenceable(64) %8, ptr dead_on_unwind writable sret(%"class.std::_Array_iterator") align 8 %11) #5
  call void @"?end@?$array@E$0CA@@std@@QEBA?AV?$_Array_const_iterator@E$0CA@@2@XZ"(ptr noundef nonnull align 1 dereferenceable(32) %9, ptr dead_on_unwind writable sret(%"class.std::_Array_const_iterator.1") align 8 %12) #5
  call void @"?begin@?$array@E$0CA@@std@@QEBA?AV?$_Array_const_iterator@E$0CA@@2@XZ"(ptr noundef nonnull align 1 dereferenceable(32) %9, ptr dead_on_unwind writable sret(%"class.std::_Array_const_iterator.1") align 8 %13) #5
  %32 = getelementptr inbounds nuw %"class.std::_Array_const_iterator.1", ptr %13, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %33 to i64
  %35 = getelementptr inbounds nuw %"class.std::_Array_const_iterator.1", ptr %12, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8
  %37 = ptrtoint ptr %36 to i64
  %38 = getelementptr inbounds nuw %"class.std::_Array_iterator", ptr %11, i32 0, i32 0
  %39 = getelementptr inbounds nuw %"class.std::_Array_const_iterator", ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %40 to i64
  invoke void @"??$copy@V?$_Array_const_iterator@E$0CA@@std@@V?$_Array_iterator@E$0EA@@2@@std@@YA?AV?$_Array_iterator@E$0EA@@0@V?$_Array_const_iterator@E$0CA@@0@0V10@@Z"(ptr dead_on_unwind writable sret(%"class.std::_Array_iterator") align 8 %14, i64 %34, i64 %37, i64 %41)
          to label %42 unwind label %91

42:                                               ; preds = %31
  br label %55

43:                                               ; preds = %3
  call void @"?begin@?$array@E$0EA@@std@@QEAA?AV?$_Array_iterator@E$0EA@@2@XZ"(ptr noundef nonnull align 1 dereferenceable(64) %8, ptr dead_on_unwind writable sret(%"class.std::_Array_iterator") align 8 %15) #5
  call void @"?end@?$span@$$CBE$0?0@std@@QEBA?AU?$_Span_iterator@$$CBE@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr dead_on_unwind writable sret(%"struct.std::_Span_iterator") align 8 %16) #5
  call void @"?begin@?$span@$$CBE$0?0@std@@QEBA?AU?$_Span_iterator@$$CBE@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr dead_on_unwind writable sret(%"struct.std::_Span_iterator") align 8 %17) #5
  %44 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %17, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i64
  %47 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %16, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8
  %49 = ptrtoint ptr %48 to i64
  %50 = getelementptr inbounds nuw %"class.std::_Array_iterator", ptr %15, i32 0, i32 0
  %51 = getelementptr inbounds nuw %"class.std::_Array_const_iterator", ptr %50, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8
  %53 = ptrtoint ptr %52 to i64
  invoke void @"??$copy@U?$_Span_iterator@$$CBE@std@@V?$_Array_iterator@E$0EA@@2@@std@@YA?AV?$_Array_iterator@E$0EA@@0@U?$_Span_iterator@$$CBE@0@0V10@@Z"(ptr dead_on_unwind writable sret(%"class.std::_Array_iterator") align 8 %18, i64 %46, i64 %49, i64 %53)
          to label %54 unwind label %91

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %42
  call void @llvm.memset.p0.i64(ptr align 1 %19, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %20, i8 0, i64 64, i1 false)
  store i64 0, ptr %21, align 8
  br label %56

56:                                               ; preds = %76, %55
  %57 = load i64, ptr %21, align 8
  %58 = icmp ult i64 %57, 64
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i64, ptr %21, align 8
  %61 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0EA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(64) %8, i64 noundef %60) #5
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %63, 54
  %65 = trunc i32 %64 to i8
  %66 = load i64, ptr %21, align 8
  %67 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0EA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(64) %19, i64 noundef %66) #5
  store i8 %65, ptr %67, align 1
  %68 = load i64, ptr %21, align 8
  %69 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0EA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(64) %8, i64 noundef %68) #5
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = xor i32 %71, 92
  %73 = trunc i32 %72 to i8
  %74 = load i64, ptr %21, align 8
  %75 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0EA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(64) %20, i64 noundef %74) #5
  store i8 %73, ptr %75, align 1
  br label %76

76:                                               ; preds = %59
  %77 = load i64, ptr %21, align 8
  %78 = add i64 %77, 1
  store i64 %78, ptr %21, align 8
  br label %56, !llvm.loop !19

79:                                               ; preds = %56
  %80 = call noundef ptr @"??0Sha256@crypto@sdep@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(112) %22) #5
  %81 = call noundef ptr @"?data@?$array@E$0EA@@std@@QEAAPEAEXZ"(ptr noundef nonnull align 1 dereferenceable(64) %19) #5
  %82 = call noundef i64 @"?size@?$array@E$0EA@@std@@QEBA_KXZ"(ptr noundef nonnull align 1 dereferenceable(64) %19) #5
  %83 = call noundef ptr @"??$?0PEAE@?$span@$$CBE$0?0@std@@QEAA@PEAE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %81, i64 noundef %82) #5
  call void @"?update@Sha256@crypto@sdep@@QEAAXV?$span@$$CBE$0?0@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(112) %22, ptr noundef %23) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %2, i64 16, i1 false)
  call void @"?update@Sha256@crypto@sdep@@QEAAXV?$span@$$CBE$0?0@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(112) %22, ptr noundef %24) #5
  call void @"?finalize@Sha256@crypto@sdep@@QEAA?AV?$array@E$0CA@@std@@XZ"(ptr noundef nonnull align 8 dereferenceable(112) %22, ptr dead_on_unwind writable sret(%"class.std::array") align 1 %25) #5
  %84 = call noundef ptr @"??0Sha256@crypto@sdep@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(112) %26) #5
  %85 = call noundef ptr @"?data@?$array@E$0EA@@std@@QEAAPEAEXZ"(ptr noundef nonnull align 1 dereferenceable(64) %20) #5
  %86 = call noundef i64 @"?size@?$array@E$0EA@@std@@QEBA_KXZ"(ptr noundef nonnull align 1 dereferenceable(64) %20) #5
  %87 = call noundef ptr @"??$?0PEAE@?$span@$$CBE$0?0@std@@QEAA@PEAE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %85, i64 noundef %86) #5
  call void @"?update@Sha256@crypto@sdep@@QEAAXV?$span@$$CBE$0?0@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(112) %26, ptr noundef %27) #5
  %88 = call noundef ptr @"?data@?$array@E$0CA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 1 dereferenceable(32) %25) #5
  %89 = call noundef i64 @"?size@?$array@E$0CA@@std@@QEBA_KXZ"(ptr noundef nonnull align 1 dereferenceable(32) %25) #5
  %90 = call noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef %88, i64 noundef %89) #5
  call void @"?update@Sha256@crypto@sdep@@QEAAXV?$span@$$CBE$0?0@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(112) %26, ptr noundef %28) #5
  call void @"?finalize@Sha256@crypto@sdep@@QEAA?AV?$array@E$0CA@@std@@XZ"(ptr noundef nonnull align 8 dereferenceable(112) %26, ptr dead_on_unwind writable sret(%"class.std::array") align 1 %0) #5
  ret void

91:                                               ; preds = %43, %31
  %92 = cleanuppad within none []
  call void @__std_terminate() #6 [ "funclet"(token %92) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$span@$$CBE$0?0@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Span_extent_type", ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$copy@V?$_Array_const_iterator@E$0CA@@std@@V?$_Array_iterator@E$0EA@@2@@std@@YA?AV?$_Array_iterator@E$0EA@@0@V?$_Array_const_iterator@E$0CA@@0@0V10@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::_Array_iterator") align 8 %0, i64 %1, i64 %2, i64 %3) #3 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::_Array_const_iterator.1", align 8
  %7 = alloca %"class.std::_Array_const_iterator.1", align 8
  %8 = alloca %"class.std::_Array_iterator", align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  %13 = getelementptr inbounds nuw %"class.std::_Array_const_iterator.1", ptr %6, i32 0, i32 0
  %14 = inttoptr i64 %1 to ptr
  store ptr %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw %"class.std::_Array_const_iterator.1", ptr %7, i32 0, i32 0
  %16 = inttoptr i64 %2 to ptr
  store ptr %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw %"class.std::_Array_iterator", ptr %8, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"class.std::_Array_const_iterator", ptr %17, i32 0, i32 0
  %19 = inttoptr i64 %3 to ptr
  store ptr %19, ptr %18, align 8
  call void @"??$_Adl_verify_range@V?$_Array_const_iterator@E$0CA@@std@@V12@@std@@YAXAEBV?$_Array_const_iterator@E$0CA@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %20 = call noundef ptr @"??$_Get_unwrapped@AEAV?$_Array_const_iterator@E$0CA@@std@@@std@@YA?A_TAEAV?$_Array_const_iterator@E$0CA@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  store ptr %20, ptr %9, align 8
  %21 = call noundef ptr @"??$_Get_unwrapped@AEAV?$_Array_const_iterator@E$0CA@@std@@@std@@YA?A_TAEAV?$_Array_const_iterator@E$0CA@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  store ptr %21, ptr %10, align 8
  %22 = call noundef i64 @"??$_Idl_distance@V?$_Array_const_iterator@E$0CA@@std@@PEBE@std@@YA?A_PAEBQEBE0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %23 = call noundef ptr @"??$_Get_unwrapped_n@V?$_Array_iterator@E$0EA@@std@@_J@std@@YA?A_T$$QEAV?$_Array_iterator@E$0EA@@0@_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %22)
  store ptr %23, ptr %11, align 8
  %24 = load ptr, ptr %11, align 8
  %25 = load ptr, ptr %10, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = call noundef ptr @"??$_Copy_unchecked@PEBEPEBEPEAE@std@@YAPEAEPEBE0PEAE@Z"(ptr noundef %26, ptr noundef %25, ptr noundef %24)
  store ptr %27, ptr %12, align 8
  call void @"??$_Seek_wrapped@V?$_Array_iterator@E$0EA@@std@@PEAE@std@@YAXAEAV?$_Array_iterator@E$0EA@@0@$$QEAPEAE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %8, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$array@E$0EA@@std@@QEAA?AV?$_Array_iterator@E$0EA@@2@XZ"(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Array_iterator") align 8 %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::array.0", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds [64 x i8], ptr %6, i64 0, i64 0
  %8 = call noundef ptr @"??0?$_Array_iterator@E$0EA@@std@@QEAA@PEAE_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7, i64 noundef 0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?end@?$array@E$0CA@@std@@QEBA?AV?$_Array_const_iterator@E$0CA@@2@XZ"(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Array_const_iterator.1") align 8 %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::array", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds [32 x i8], ptr %6, i64 0, i64 0
  %8 = call noundef ptr @"??0?$_Array_const_iterator@E$0CA@@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7, i64 noundef 32) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$array@E$0CA@@std@@QEBA?AV?$_Array_const_iterator@E$0CA@@2@XZ"(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Array_const_iterator.1") align 8 %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::array", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds [32 x i8], ptr %6, i64 0, i64 0
  %8 = call noundef ptr @"??0?$_Array_const_iterator@E$0CA@@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7, i64 noundef 0) #5
  ret void
}

declare dso_local i32 @__CxxFrameHandler3(...)

declare dso_local void @__std_terminate()

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$copy@U?$_Span_iterator@$$CBE@std@@V?$_Array_iterator@E$0EA@@2@@std@@YA?AV?$_Array_iterator@E$0EA@@0@U?$_Span_iterator@$$CBE@0@0V10@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::_Array_iterator") align 8 %0, i64 %1, i64 %2, i64 %3) #3 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Span_iterator", align 8
  %7 = alloca %"struct.std::_Span_iterator", align 8
  %8 = alloca %"class.std::_Array_iterator", align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  %13 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %6, i32 0, i32 0
  %14 = inttoptr i64 %1 to ptr
  store ptr %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %7, i32 0, i32 0
  %16 = inttoptr i64 %2 to ptr
  store ptr %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw %"class.std::_Array_iterator", ptr %8, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"class.std::_Array_const_iterator", ptr %17, i32 0, i32 0
  %19 = inttoptr i64 %3 to ptr
  store ptr %19, ptr %18, align 8
  call void @"??$_Adl_verify_range@U?$_Span_iterator@$$CBE@std@@U12@@std@@YAXAEBU?$_Span_iterator@$$CBE@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %20 = call noundef ptr @"??$_Get_unwrapped@AEAU?$_Span_iterator@$$CBE@std@@@std@@YA?A_TAEAU?$_Span_iterator@$$CBE@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  store ptr %20, ptr %9, align 8
  %21 = call noundef ptr @"??$_Get_unwrapped@AEAU?$_Span_iterator@$$CBE@std@@@std@@YA?A_TAEAU?$_Span_iterator@$$CBE@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  store ptr %21, ptr %10, align 8
  %22 = call noundef i64 @"??$_Idl_distance@U?$_Span_iterator@$$CBE@std@@PEBE@std@@YA?A_PAEBQEBE0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %23 = call noundef ptr @"??$_Get_unwrapped_n@V?$_Array_iterator@E$0EA@@std@@_J@std@@YA?A_T$$QEAV?$_Array_iterator@E$0EA@@0@_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %22)
  store ptr %23, ptr %11, align 8
  %24 = load ptr, ptr %11, align 8
  %25 = load ptr, ptr %10, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = call noundef ptr @"??$_Copy_unchecked@PEBEPEBEPEAE@std@@YAPEAEPEBE0PEAE@Z"(ptr noundef %26, ptr noundef %25, ptr noundef %24)
  store ptr %27, ptr %12, align 8
  call void @"??$_Seek_wrapped@V?$_Array_iterator@E$0EA@@std@@PEAE@std@@YAXAEAV?$_Array_iterator@E$0EA@@0@$$QEAPEAE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %8, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0EA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(64) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::array.0", ptr %5, i32 0, i32 0
  %7 = load i64, ptr %3, align 8
  %8 = getelementptr inbounds nuw [64 x i8], ptr %6, i64 0, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?data@?$array@E$0EA@@std@@QEAAPEAEXZ"(ptr noundef nonnull align 1 dereferenceable(64) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::array.0", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 0
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$array@E$0EA@@std@@QEBA_KXZ"(ptr noundef nonnull align 1 dereferenceable(64) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i64 64
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0PEAE@?$span@$$CBE$0?0@std@@QEAA@PEAE_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = load i64, ptr %4, align 8
  %10 = invoke noundef ptr @"??$_Get_unwrapped_n@AEAPEAE_K@std@@YA?A_TAEAPEAE_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %9)
          to label %11 unwind label %14

11:                                               ; preds = %3
  %12 = call noundef ptr @"??$to_address@E@std@@YAPEAEQEAE@Z"(ptr noundef %10) #5
  %13 = call noundef ptr @"??0?$_Span_extent_type@$$CBE$0?0@std@@QEAA@QEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %12, i64 noundef %8) #5
  ret ptr %7

14:                                               ; preds = %3
  %15 = cleanuppad within none []
  call void @__std_terminate() #6 [ "funclet"(token %15) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?data@?$array@E$0CA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 1 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::array", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds [32 x i8], ptr %4, i64 0, i64 0
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$array@E$0CA@@std@@QEBA_KXZ"(ptr noundef nonnull align 1 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i64 32
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?hmac_sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$span@$$CBE$0?0@4@V?$basic_string_view@DU?$char_traits@D@std@@@4@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::array") align 1 %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::span", align 8
  %8 = alloca %"class.std::span", align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = call noundef ptr @"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %2) #5
  %10 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %2) #5
  %11 = call noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %9, i64 noundef %10) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %1, i64 16, i1 false)
  call void @"?hmac_sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$span@$$CBE$0?0@4@0@Z"(ptr dead_on_unwind writable sret(%"class.std::array") align 1 %0, ptr noundef %8, ptr noundef %7) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @"?constant_time_equals@crypto@sdep@@YA_NV?$span@$$CBE$0?0@std@@0@Z"(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store ptr %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %8 = call noundef i64 @"?size@?$span@$$CBE$0?0@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #5
  %9 = call noundef i64 @"?size@?$span@$$CBE$0?0@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i1 false, ptr %3, align 1
  br label %38

12:                                               ; preds = %2
  store i8 0, ptr %6, align 1
  store i64 0, ptr %7, align 8
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i64, ptr %7, align 8
  %15 = call noundef i64 @"?size@?$span@$$CBE$0?0@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #5
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i8, ptr %6, align 1
  %19 = zext i8 %18 to i32
  %20 = load i64, ptr %7, align 8
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$span@$$CBE$0?0@std@@QEBAAEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %20) #5
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i64, ptr %7, align 8
  %25 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$span@$$CBE$0?0@std@@QEBAAEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %24) #5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %23, %27
  %29 = or i32 %19, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %6, align 1
  br label %31

31:                                               ; preds = %17
  %32 = load i64, ptr %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, ptr %7, align 8
  br label %13, !llvm.loop !20

34:                                               ; preds = %13
  %35 = load i8, ptr %6, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  store i1 %37, ptr %3, align 1
  br label %38

38:                                               ; preds = %34, %11
  %39 = load i1, ptr %3, align 1
  ret i1 %39
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$span@$$CBE$0?0@std@@QEBAAEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"struct.std::_Span_extent_type", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %3, align 8
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @sdep_hmac_sha256(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"class.std::array", align 1
  %12 = alloca %"class.std::span", align 8
  %13 = alloca %"class.std::span", align 8
  store ptr %4, ptr %6, align 8
  store i64 %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %7, align 8
  %16 = call noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %14, i64 noundef %15) #5
  %17 = load ptr, ptr %10, align 8
  %18 = load i64, ptr %9, align 8
  %19 = call noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %17, i64 noundef %18) #5
  call void @"?hmac_sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$span@$$CBE$0?0@4@0@Z"(ptr dead_on_unwind writable sret(%"class.std::array") align 1 %11, ptr noundef %13, ptr noundef %12) #5
  %20 = load ptr, ptr %6, align 8
  %21 = call noundef ptr @"?data@?$array@E$0CA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 1 dereferenceable(32) %11) #5
  %22 = call noundef i64 @"?size@?$array@E$0CA@@std@@QEBA_KXZ"(ptr noundef nonnull align 1 dereferenceable(32) %11) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %21, i64 %22, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i32 @sdep_constant_time_equals(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::span", align 8
  %10 = alloca %"class.std::span", align 8
  store i64 %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load i64, ptr %5, align 8
  %13 = call noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %11, i64 noundef %12) #5
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %7, align 8
  %16 = call noundef ptr @"??$?0PEBE@?$span@$$CBE$0?0@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %14, i64 noundef %15) #5
  %17 = call noundef zeroext i1 @"?constant_time_equals@crypto@sdep@@YA_NV?$span@$$CBE$0?0@std@@0@Z"(ptr noundef %10, ptr noundef %9) #5
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  ret i32 %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"??$rotr@I@std@@YAIIH@Z"(i32 noundef %0, i32 noundef %1) #0 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store i32 32, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = call i32 @llvm.fshr.i32(i32 %7, i32 %7, i32 %8)
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$to_address@$$CBE@std@@YAPEBEQEBE@Z"(ptr noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped_n@AEAPEBE_K@std@@YA?A_TAEAPEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @"??0?$_Span_extent_type@$$CBE$0?0@std@@QEAA@QEBE_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"struct.std::_Span_extent_type", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw %"struct.std::_Span_extent_type", ptr %7, i32 0, i32 1
  %11 = load i64, ptr %4, align 8
  store i64 %11, ptr %10, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@V?$_Array_const_iterator@E$0CA@@std@@V12@@std@@YAXAEBV?$_Array_const_iterator@E$0CA@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped@AEAV?$_Array_const_iterator@E$0CA@@std@@@std@@YA?A_TAEAV?$_Array_const_iterator@E$0CA@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Unwrapped@?$_Array_const_iterator@E$0CA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped_n@V?$_Array_iterator@E$0EA@@std@@_J@std@@YA?A_T$$QEAV?$_Array_iterator@E$0EA@@0@_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #0 comdat {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef ptr @"?_Unwrapped@?$_Array_iterator@E$0EA@@std@@QEBAPEAEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Idl_distance@V?$_Array_const_iterator@E$0CA@@std@@PEBE@std@@YA?A_PAEBQEBE0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local void @"??$_Seek_wrapped@V?$_Array_iterator@E$0EA@@std@@PEAE@std@@YAXAEAV?$_Array_iterator@E$0EA@@0@$$QEAPEAE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  call void @"?_Seek_to@?$_Array_const_iterator@E$0EA@@std@@QEAAXPEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %7) #5
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Copy_unchecked@PEBEPEBEPEAE@std@@YAPEAEPEBE0PEAE@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call noundef ptr @"??$_Copy_memmove@PEBEPEAE@std@@YAPEAEPEBE0PEAE@Z"(ptr noundef %9, ptr noundef %8, ptr noundef %7)
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Unwrapped@?$_Array_const_iterator@E$0CA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Array_const_iterator.1", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Unwrapped@?$_Array_iterator@E$0EA@@std@@QEBAPEAEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Unwrapped@?$_Array_const_iterator@E$0EA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Unwrapped@?$_Array_const_iterator@E$0EA@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Array_const_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Seek_to@?$_Array_const_iterator@E$0EA@@std@@QEAAXPEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %"class.std::_Array_const_iterator", ptr %5, i32 0, i32 0
  store ptr %6, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Copy_memmove@PEBEPEAE@std@@YAPEAEPEBE0PEAE@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %13 = call noundef ptr @"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  store ptr %13, ptr %7, align 8
  %14 = call noundef ptr @"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  store ptr %14, ptr %8, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  store i64 %19, ptr %9, align 8
  %20 = load ptr, ptr %7, align 8
  store ptr %20, ptr %10, align 8
  %21 = load ptr, ptr %8, align 8
  store ptr %21, ptr %11, align 8
  %22 = load ptr, ptr %11, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  store i64 %26, ptr %12, align 8
  %27 = load i64, ptr %9, align 8
  %28 = load i64, ptr %12, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %10, align 8
  %31 = call noundef ptr @"??$_Copy_memmove_tail@PEAE@std@@YAPEAEQEBDQEAE_K2@Z"(ptr noundef %30, ptr noundef %29, i64 noundef %28, i64 noundef %27)
  ret ptr %31
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_To_address@PEBE@std@@YA?A_PAEBQEBE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call noundef ptr @"??$to_address@$$CBE@std@@YAPEBEQEBE@Z"(ptr noundef %4) #5
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Copy_memmove_tail@PEAE@std@@YAPEAEQEBDQEAE_K2@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 comdat {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i64 %3, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %11 = call noundef ptr @"??$_To_address@PEAE@std@@YA?A_PAEBQEAE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  store ptr %11, ptr %9, align 8
  %12 = load ptr, ptr %9, align 8
  store ptr %12, ptr %10, align 8
  %13 = load ptr, ptr %10, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %6, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %13, ptr align 1 %14, i64 %15, i1 false)
  %16 = load ptr, ptr %10, align 8
  %17 = load i64, ptr %6, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_To_address@PEAE@std@@YA?A_PAEBQEAE@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call noundef ptr @"??$to_address@E@std@@YAPEAEQEAE@Z"(ptr noundef %4) #5
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$to_address@E@std@@YAPEAEQEAE@Z"(ptr noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Array_iterator@E$0EA@@std@@QEAA@PEAE_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @"??0?$_Array_const_iterator@E$0EA@@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9, i64 noundef %8) #5
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Array_const_iterator@E$0EA@@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Array_const_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load i64, ptr %4, align 8
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 %10
  store ptr %11, ptr %8, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Array_const_iterator@E$0CA@@std@@QEAA@PEBE_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Array_const_iterator.1", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load i64, ptr %4, align 8
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 %10
  store ptr %11, ptr %8, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@U?$_Span_iterator@$$CBE@std@@U12@@std@@YAXAEBU?$_Span_iterator@$$CBE@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped@AEAU?$_Span_iterator@$$CBE@std@@@std@@YA?A_TAEAU?$_Span_iterator@$$CBE@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Unwrapped@?$_Span_iterator@$$CBE@std@@QEBAPEBEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Idl_distance@U?$_Span_iterator@$$CBE@std@@PEBE@std@@YA?A_PAEBQEBE0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @"?_Unwrapped@?$_Span_iterator@$$CBE@std@@QEBAPEBEXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Span_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped_n@AEAPEAE_K@std@@YA?A_TAEAPEAE_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #0 comdat {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 0
  ret ptr %7
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress noinline optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.linker.options = !{!0, !1, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!1 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!2 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!3 = !{!"/DEFAULTLIB:libcpmt.lib"}
!4 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!5 = !{!"/alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 1, !"MaxTLSAlign", i32 65536}
!10 = !{!"clang version 20.1.6"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
