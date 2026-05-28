; ModuleID = 'src\uuid.cpp'
source_filename = "src\\uuid.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.44.35227"

%rtti.TypeDescriptor27 = type { ptr, ptr, [28 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor24 = type { ptr, ptr, [25 x i8] }
%rtti.TypeDescriptor23 = type { ptr, ptr, [24 x i8] }
%rtti.TypeDescriptor19 = type { ptr, ptr, [20 x i8] }
%eh.CatchableTypeArray.4 = type { i32, [4 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%rtti.TypeDescriptor30 = type { ptr, ptr, [31 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%"struct.sdep::Uuid" = type { %"class.std::array" }
%"class.std::array" = type { [16 x i8] }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { ptr, [8 x i8] }
%"class.std::_String_view_iterator" = type { ptr }
%"class.sdep::InvalidUuidError" = type { %"class.sdep::ProtocolError" }
%"class.sdep::ProtocolError" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%class.anon = type { i8 }
%"class.std::basic_string_view" = type { ptr, i64 }
%class.anon.0 = type { i8 }
%"struct.std::_Fake_allocator" = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"struct.std::_One_then_variadic_args_t" = type { i8 }
%class.anon.2 = type { i8 }
%"class.std::allocator" = type { i8 }
%"struct.std::_Fake_proxy_ptr_impl" = type { i8 }

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z" = comdat any

$"?begin@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ" = comdat any

$"?end@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ" = comdat any

$"??8?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEBA_NAEBV01@@Z" = comdat any

$"??D?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEBAAEBDXZ" = comdat any

$"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z" = comdat any

$"??E?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEAAAEAV01@XZ" = comdat any

$"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z" = comdat any

$"?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@_K@Z" = comdat any

$"??0InvalidUuidError@sdep@@QEAA@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z" = comdat any

$"??0InvalidUuidError@sdep@@QEAA@AEBV01@@Z" = comdat any

$"??0ProtocolError@sdep@@QEAA@AEBV01@@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1InvalidUuidError@sdep@@UEAA@XZ" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z" = comdat any

$"??A?$array@E$0BA@@std@@QEAAAEAE_K@Z" = comdat any

$"??A?$array@E$0BA@@std@@QEBAAEBE_K@Z" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" = comdat any

$"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@$$V@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??reserve@01@QEAAX0@Z@@Z" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"??R<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@SA?A?<auto>@@QEADQEBD0@Z" = comdat any

$"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z" = comdat any

$"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$max@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$min@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$_Max_limit@_J@std@@YA_JXZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z" = comdat any

$"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" = comdat any

$"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"??$_Get_size_of_n@$00@std@@YA_K_K@Z" = comdat any

$"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" = comdat any

$"?_Throw_bad_array_new_length@std@@YAXXZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@XZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" = comdat any

$"??0bad_alloc@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" = comdat any

$"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$"??0?$_String_view_iterator@U?$char_traits@D@std@@@std@@AEAA@QEBD@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??push_back@01@QEAAXD@Z@D@Z" = comdat any

$"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"??R<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@SA?A?<auto>@@QEADQEBD_KD@Z" = comdat any

$"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z" = comdat any

$"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD0@Z" = comdat any

$"??$_Convert_size@_K_K@std@@YA_K_K@Z" = comdat any

$"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" = comdat any

$"?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z" = comdat any

$"?is_constant_evaluated@std@@YA_NXZ" = comdat any

$"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KQEBD0@Z@_KPEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??insert@01@QEAAAEAV01@0QEBD0@Z@_KPEBD3@Z" = comdat any

$"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ" = comdat any

$"??R<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KQEBD0@Z@SA?A?<auto>@@QEAD10010@Z" = comdat any

$"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z" = comdat any

$"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z" = comdat any

$"??$_Integral_to_string@D_K@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@_K@Z" = comdat any

$"??$end@D$0BF@@std@@YAPEADAEAY0BF@D@Z" = comdat any

$"??$_UIntegral_to_buff@D_K@std@@YAPEADPEAD_K@Z" = comdat any

$"??$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z" = comdat any

$"??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z" = comdat any

$"??$_Adl_verify_range@PEADPEAD@std@@YAXAEBQEAD0@Z" = comdat any

$"??$_Get_unwrapped@AEAPEAD@std@@YA?A_TAEAPEAD@Z" = comdat any

$"??$_Construct@$00PEAD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEAD_K@Z" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z" = comdat any

$"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ" = comdat any

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??_GInvalidUuidError@sdep@@UEAAPEAXI@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z" = comdat any

$"??_GProtocolError@sdep@@UEAAPEAXI@Z" = comdat any

$"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBD@Z" = comdat any

$"??_Gruntime_error@std@@UEAAPEAXI@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"??1runtime_error@std@@UEAA@XZ" = comdat any

$"??1ProtocolError@sdep@@UEAA@XZ" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z" = comdat any

$"??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z" = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"??_C@_0CD@KLINAPOG@Uuid?3?5expected?532?5hex?5digits?0?5go@" = comdat any

$"??_R0?AVInvalidUuidError@sdep@@@8" = comdat any

$"_CT??_R0?AVInvalidUuidError@sdep@@@8??0InvalidUuidError@sdep@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVProtocolError@sdep@@@8" = comdat any

$"_CT??_R0?AVProtocolError@sdep@@@8??0ProtocolError@sdep@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVruntime_error@std@@@8" = comdat any

$"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA4?AVInvalidUuidError@sdep@@" = comdat any

$"_TI4?AVInvalidUuidError@sdep@@" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA3?AVbad_array_new_length@std@@" = comdat any

$"_TI3?AVbad_array_new_length@std@@" = comdat any

$"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = comdat any

$"??_7bad_array_new_length@std@@6B@" = comdat any

$"??_7bad_alloc@std@@6B@" = comdat any

$"??_7exception@std@@6B@" = comdat any

$"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = comdat any

$"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@" = comdat any

$"??_7InvalidUuidError@sdep@@6B@" = comdat any

$"??_7ProtocolError@sdep@@6B@" = comdat any

$"??_7runtime_error@std@@6B@" = comdat any

$"??_C@_0BI@FILNCBBD@Uuid?3?5non?9hex?5character?$AA@" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@"??_C@_0CD@KLINAPOG@Uuid?3?5expected?532?5hex?5digits?0?5go@" = linkonce_odr dso_local unnamed_addr constant [35 x i8] c"Uuid: expected 32 hex digits, got \00", comdat, align 1
@"??_7type_info@@6B@" = external constant ptr
@"??_R0?AVInvalidUuidError@sdep@@@8" = linkonce_odr global %rtti.TypeDescriptor27 { ptr @"??_7type_info@@6B@", ptr null, [28 x i8] c".?AVInvalidUuidError@sdep@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVInvalidUuidError@sdep@@@8??0InvalidUuidError@sdep@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVInvalidUuidError@sdep@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0InvalidUuidError@sdep@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVProtocolError@sdep@@@8" = linkonce_odr global %rtti.TypeDescriptor24 { ptr @"??_7type_info@@6B@", ptr null, [25 x i8] c".?AVProtocolError@sdep@@\00" }, comdat
@"_CT??_R0?AVProtocolError@sdep@@@8??0ProtocolError@sdep@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVProtocolError@sdep@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0ProtocolError@sdep@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVruntime_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor23 { ptr @"??_7type_info@@6B@", ptr null, [24 x i8] c".?AVruntime_error@std@@\00" }, comdat
@"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA4?AVInvalidUuidError@sdep@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.4 { i32 4, [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVInvalidUuidError@sdep@@@8??0InvalidUuidError@sdep@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVProtocolError@sdep@@@8??0ProtocolError@sdep@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI4?AVInvalidUuidError@sdep@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1InvalidUuidError@sdep@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA4?AVInvalidUuidError@sdep@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"?kHex@?1??to_string@Uuid@sdep@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ@4QBDB" = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 1
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { ptr @"??_7type_info@@6B@", ptr null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 1
@"??_7bad_array_new_length@std@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_7bad_alloc@std@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_7exception@std@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_Gexception@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 1
@"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"invalid string position\00", comdat, align 1
@"??_7InvalidUuidError@sdep@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_GInvalidUuidError@sdep@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_7ProtocolError@sdep@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_GProtocolError@sdep@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_7runtime_error@std@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_Gruntime_error@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_C@_0BI@FILNCBBD@Uuid?3?5non?9hex?5character?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"Uuid: non-hex character\00", comdat, align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?from_string@Uuid@sdep@@SA?AU12@V?$basic_string_view@DU?$char_traits@D@std@@@std@@@Z"(ptr dead_on_unwind noalias writable sret(%"struct.sdep::Uuid") align 1 %0, ptr noundef %1) #0 align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::_String_view_iterator", align 8
  %8 = alloca %"class.std::_String_view_iterator", align 8
  %9 = alloca i8, align 1
  %10 = alloca %"class.sdep::InvalidUuidError", align 8
  %11 = alloca %"class.std::basic_string", align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  invoke void @"?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 32)
          to label %15 unwind label %76

15:                                               ; preds = %2
  store ptr %1, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  call void @"?begin@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr dead_on_unwind writable sret(%"class.std::_String_view_iterator") align 8 %7) #10
  %17 = load ptr, ptr %6, align 8
  call void @"?end@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr dead_on_unwind writable sret(%"class.std::_String_view_iterator") align 8 %8) #10
  br label %18

18:                                               ; preds = %31, %15
  %19 = call noundef zeroext i1 @"??8?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @"??D?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEBAAEBDXZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %9, align 1
  %24 = load i8, ptr %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %31

28:                                               ; preds = %21
  %29 = load i8, ptr %9, align 1
  invoke void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef %29)
          to label %30 unwind label %76

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30, %27
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %18

33:                                               ; preds = %18
  %34 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %35 = icmp ne i64 %34, 32
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  invoke void @"?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@_K@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %12, i64 noundef %37)
          to label %38 unwind label %76

38:                                               ; preds = %36
  invoke void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %11, ptr noundef @"??_C@_0CD@KLINAPOG@Uuid?3?5expected?532?5hex?5digits?0?5go@", ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %39 unwind label %42

39:                                               ; preds = %38
  %40 = invoke noundef ptr @"??0InvalidUuidError@sdep@@QEAA@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %11)
          to label %41 unwind label %42

41:                                               ; preds = %39
  invoke void @_CxxThrowException(ptr %10, ptr @"_TI4?AVInvalidUuidError@sdep@@") #11
          to label %78 unwind label %42

42:                                               ; preds = %41, %39, %38
  %43 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #10 [ "funclet"(token %43) ]
  cleanupret from %43 unwind label %76

44:                                               ; preds = %33
  %45 = getelementptr inbounds nuw %"struct.sdep::Uuid", ptr %0, i32 0, i32 0
  %46 = getelementptr inbounds nuw %"class.std::array", ptr %45, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %46, i8 0, i64 16, i1 false)
  store i64 0, ptr %13, align 8
  br label %47

47:                                               ; preds = %72, %44
  %48 = load i64, ptr %13, align 8
  %49 = icmp ult i64 %48, 16
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load i64, ptr %13, align 8
  %52 = mul i64 %51, 2
  %53 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %52) #10
  %54 = load i8, ptr %53, align 1
  %55 = invoke noundef i8 @"?hex_nibble@?A0x5E39DA07@sdep@@YAED@Z"(i8 noundef %54)
          to label %56 unwind label %76

56:                                               ; preds = %50
  %57 = zext i8 %55 to i32
  %58 = shl i32 %57, 4
  %59 = load i64, ptr %13, align 8
  %60 = mul i64 %59, 2
  %61 = add i64 %60, 1
  %62 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %61) #10
  %63 = load i8, ptr %62, align 1
  %64 = invoke noundef i8 @"?hex_nibble@?A0x5E39DA07@sdep@@YAED@Z"(i8 noundef %63)
          to label %65 unwind label %76

65:                                               ; preds = %56
  %66 = zext i8 %64 to i32
  %67 = or i32 %58, %66
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds nuw %"struct.sdep::Uuid", ptr %0, i32 0, i32 0
  %70 = load i64, ptr %13, align 8
  %71 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0BA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(16) %69, i64 noundef %70) #10
  store i8 %68, ptr %71, align 1
  br label %72

72:                                               ; preds = %65
  %73 = load i64, ptr %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, ptr %13, align 8
  br label %47, !llvm.loop !13

75:                                               ; preds = %47
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  ret void

76:                                               ; preds = %56, %50, %42, %36, %28, %2
  %77 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #10 [ "funclet"(token %77) ]
  cleanupret from %77 unwind to caller

78:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.std::basic_string", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  %7 = load i8, ptr %6, align 1
  %8 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 %7) #10
  invoke void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret ptr %4

10:                                               ; preds = %1
  %11 = cleanuppad within none []
  call void @__std_terminate() #12 [ "funclet"(token %11) ]
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.anon, align 1
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds nuw %"class.std::basic_string", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds nuw %"class.std::_String_val", ptr %9, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %3, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %30

15:                                               ; preds = %2
  %16 = getelementptr inbounds nuw %"class.std::basic_string", ptr %7, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"class.std::_String_val", ptr %17, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %5, align 8
  %20 = load i64, ptr %3, align 8
  %21 = load i64, ptr %5, align 8
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds nuw %class.anon, ptr %6, i32 0, i32 0
  %24 = load i8, ptr %23, align 1
  %25 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@$$V@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??reserve@01@QEAAX0@Z@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %22, i8 %24)
  %26 = load i64, ptr %5, align 8
  %27 = getelementptr inbounds nuw %"class.std::basic_string", ptr %7, i32 0, i32 0
  %28 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds nuw %"class.std::_String_val", ptr %28, i32 0, i32 1
  store i64 %26, ptr %29, align 8
  br label %30

30:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_String_view_iterator") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??0?$_String_view_iterator@U?$char_traits@D@std@@@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?end@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV?$_String_view_iterator@U?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_String_view_iterator") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 %9
  %11 = call noundef ptr @"??0?$_String_view_iterator@U?$char_traits@D@std@@@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %10) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??8?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::_String_view_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %"class.std::_String_view_iterator", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??D?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEBAAEBDXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_view_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef %1) #0 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca %class.anon.0, align 1
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds nuw %"class.std::basic_string", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"class.std::_String_val", ptr %11, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %5, align 8
  %14 = load i64, ptr %5, align 8
  %15 = getelementptr inbounds nuw %"class.std::basic_string", ptr %9, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"class.std::_String_val", ptr %16, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load i64, ptr %5, align 8
  %22 = add i64 %21, 1
  %23 = getelementptr inbounds nuw %"class.std::basic_string", ptr %9, i32 0, i32 0
  %24 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds nuw %"class.std::_String_val", ptr %24, i32 0, i32 1
  store i64 %22, ptr %25, align 8
  %26 = getelementptr inbounds nuw %"class.std::basic_string", ptr %9, i32 0, i32 0
  %27 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %26, i32 0, i32 0
  %28 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %27) #10
  store ptr %28, ptr %6, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load i64, ptr %5, align 8
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 %30
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 1 dereferenceable(1) %3) #10
  store i8 0, ptr %7, align 1
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %5, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 %34
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %35, ptr noundef nonnull align 1 dereferenceable(1) %7) #10
  br label %41

36:                                               ; preds = %2
  %37 = load i8, ptr %3, align 1
  %38 = getelementptr inbounds nuw %class.anon.0, ptr %8, i32 0, i32 0
  %39 = load i8, ptr %38, align 1
  %40 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??push_back@01@QEAAXD@Z@D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1, i8 %39, i8 noundef %37)
  br label %41

41:                                               ; preds = %36, %20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_String_view_iterator@U?$char_traits@D@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_view_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %6, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_String_val", ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  ret i64 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$?HDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD$$QEAV10@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = call noundef nonnull align 8 dereferenceable(32) ptr @"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, ptr noundef %8)
  %10 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@_K@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, i64 noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  call void @"??$_Integral_to_string@D_K@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@_K@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %0, i64 noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0InvalidUuidError@sdep@@QEAA@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr @"??0ProtocolError@sdep@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %7 unwind label %8

7:                                                ; preds = %2
  store ptr @"??_7InvalidUuidError@sdep@@6B@", ptr %5, align 8
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  ret ptr %5

8:                                                ; preds = %2
  %9 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %1) #10 [ "funclet"(token %9) ]
  cleanupret from %9 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0InvalidUuidError@sdep@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0ProtocolError@sdep@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  store ptr @"??_7InvalidUuidError@sdep@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0ProtocolError@sdep@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  store ptr @"??_7ProtocolError@sdep@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  store ptr @"??_7runtime_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  store ptr @"??_7exception@std@@6B@", ptr %5, align 8
  %6 = getelementptr inbounds nuw %"class.std::exception", ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds nuw %"class.std::exception", ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %"class.std::exception", ptr %8, i32 0, i32 1
  invoke void @__std_exception_copy(ptr noundef %9, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %5

11:                                               ; preds = %2
  %12 = cleanuppad within none []
  call void @__std_terminate() #12 [ "funclet"(token %12) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1InvalidUuidError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1ProtocolError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i8 @"?hex_nibble@?A0x5E39DA07@sdep@@YAED@Z"(i8 noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %"class.sdep::InvalidUuidError", align 8
  %5 = alloca %"class.std::basic_string", align 8
  store i8 %0, ptr %3, align 1
  %6 = load i8, ptr %3, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp sge i32 %7, 48
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i8, ptr %3, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp sle i32 %11, 57
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i8, ptr %3, align 1
  %15 = sext i8 %14 to i32
  %16 = sub nsw i32 %15, 48
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %2, align 1
  br label %49

18:                                               ; preds = %9, %1
  %19 = load i8, ptr %3, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 97
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i8, ptr %3, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 102
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8, ptr %3, align 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 10, %28
  %30 = sub nsw i32 %29, 97
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %2, align 1
  br label %49

32:                                               ; preds = %22, %18
  %33 = load i8, ptr %3, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 65
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i8, ptr %3, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 70
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i8, ptr %3, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 10, %42
  %44 = sub nsw i32 %43, 65
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %2, align 1
  br label %49

46:                                               ; preds = %36, %32
  %47 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef @"??_C@_0BI@FILNCBBD@Uuid?3?5non?9hex?5character?$AA@")
  %48 = call noundef ptr @"??0InvalidUuidError@sdep@@QEAA@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5)
  call void @_CxxThrowException(ptr %4, ptr @"_TI4?AVInvalidUuidError@sdep@@") #11
  unreachable

49:                                               ; preds = %40, %26, %13
  %50 = load i8, ptr %2, align 1
  ret i8 %50
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %6, i32 0, i32 0
  %8 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 %9
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0BA@@std@@QEAAAEAE_K@Z"(ptr noundef nonnull align 1 dereferenceable(16) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::array", ptr %5, i32 0, i32 0
  %7 = load i64, ptr %3, align 8
  %8 = getelementptr inbounds nuw [16 x i8], ptr %6, i64 0, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?to_string@Uuid@sdep@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ"(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %1) #0 align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i1, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  store i1 false, ptr %5, align 1
  %9 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  invoke void @"?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 36)
          to label %10 unwind label %55

10:                                               ; preds = %2
  store i64 0, ptr %6, align 8
  br label %11

11:                                               ; preds = %48, %10
  %12 = load i64, ptr %6, align 8
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load i64, ptr %6, align 8
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr %6, align 8
  %19 = icmp eq i64 %18, 6
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, ptr %6, align 8
  %22 = icmp eq i64 %21, 8
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, ptr %6, align 8
  %25 = icmp eq i64 %24, 10
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20, %17, %14
  invoke void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef 45)
          to label %27 unwind label %55

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds nuw %"struct.sdep::Uuid", ptr %8, i32 0, i32 0
  %30 = load i64, ptr %6, align 8
  %31 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0BA@@std@@QEBAAEBE_K@Z"(ptr noundef nonnull align 1 dereferenceable(16) %29, i64 noundef %30) #10
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %7, align 1
  %33 = load i8, ptr %7, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 4
  %36 = and i32 %35, 15
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [17 x i8], ptr @"?kHex@?1??to_string@Uuid@sdep@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ@4QBDB", i64 0, i64 %37
  %39 = load i8, ptr %38, align 1
  invoke void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef %39)
          to label %40 unwind label %55

40:                                               ; preds = %28
  %41 = load i8, ptr %7, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [17 x i8], ptr @"?kHex@?1??to_string@Uuid@sdep@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ@4QBDB", i64 0, i64 %44
  %46 = load i8, ptr %45, align 1
  invoke void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef %46)
          to label %47 unwind label %55

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load i64, ptr %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, ptr %6, align 8
  br label %11, !llvm.loop !15

51:                                               ; preds = %11
  store i1 true, ptr %5, align 1
  %52 = load i1, ptr %5, align 1
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  br label %54

54:                                               ; preds = %53, %51
  ret void

55:                                               ; preds = %40, %28, %26, %2
  %56 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %1) #10 [ "funclet"(token %56) ]
  cleanupret from %56 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$array@E$0BA@@std@@QEBAAEBE_K@Z"(ptr noundef nonnull align 1 dereferenceable(16) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::array", ptr %5, i32 0, i32 0
  %7 = load i64, ptr %3, align 8
  %8 = getelementptr inbounds nuw [16 x i8], ptr %6, i64 0, i64 %7
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %6, i32 0, i32 0
  %9 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.std::_Fake_allocator", align 1
  %5 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %4) #10
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %"class.std::_String_val", ptr %10, i32 0, i32 1
  store i64 0, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %"class.std::_String_val", ptr %12, i32 0, i32 2
  store i64 15, ptr %13, align 8
  %14 = load ptr, ptr %3, align 8
  call void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #10
  store i8 0, ptr %5, align 1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %"class.std::_String_val", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %5) #10
  ret void
}

declare dso_local void @__std_terminate()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_val", ptr %3, i32 0, i32 0
  %5 = call noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  %6 = getelementptr inbounds nuw %"class.std::_String_val", ptr %3, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds nuw %"class.std::_String_val", ptr %3, i32 0, i32 2
  store i64 0, ptr %7, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 16, i1 false)
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i8, ptr %5, align 1
  %7 = load ptr, ptr %4, align 8
  store i8 %6, ptr %7, align 1
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@$$V@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??reserve@01@QEAAX0@Z@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2) #0 comdat align 2 {
  %4 = alloca %class.anon, align 1
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = getelementptr inbounds nuw %class.anon, ptr %4, i32 0, i32 0
  store i8 %2, ptr %16, align 1
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw %"class.std::basic_string", ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %18, i32 0, i32 0
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds nuw %"class.std::_String_val", ptr %20, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %8, align 8
  %23 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #10
  %24 = load i64, ptr %8, align 8
  %25 = sub i64 %23, %24
  %26 = load i64, ptr %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  call void @"?_Xlen_string@std@@YAXXZ"() #11
  unreachable

29:                                               ; preds = %3
  %30 = load i64, ptr %8, align 8
  %31 = load i64, ptr %5, align 8
  %32 = add i64 %30, %31
  store i64 %32, ptr %9, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds nuw %"class.std::_String_val", ptr %33, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  store i64 %35, ptr %10, align 8
  %36 = load i64, ptr %9, align 8
  %37 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %36) #10
  store i64 %37, ptr %11, align 8
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #10
  store ptr %38, ptr %12, align 8
  %39 = load ptr, ptr %12, align 8
  %40 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 8 dereferenceable(8) %11)
  store ptr %40, ptr %13, align 8
  %41 = load ptr, ptr %7, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %41) #10
  %42 = load i64, ptr %9, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw %"class.std::_String_val", ptr %43, i32 0, i32 1
  store i64 %42, ptr %44, align 8
  %45 = load i64, ptr %11, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds nuw %"class.std::_String_val", ptr %46, i32 0, i32 2
  store i64 %45, ptr %47, align 8
  %48 = load ptr, ptr %13, align 8
  %49 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %48) #10
  store ptr %49, ptr %14, align 8
  %50 = load i64, ptr %10, align 8
  %51 = icmp ugt i64 %50, 15
  br i1 %51, label %52, label %66

52:                                               ; preds = %29
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr inbounds nuw %"class.std::_String_val", ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  store ptr %55, ptr %15, align 8
  %56 = load i64, ptr %8, align 8
  %57 = load ptr, ptr %15, align 8
  %58 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %57) #10
  %59 = load ptr, ptr %14, align 8
  call void @"??R<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@SA?A?<auto>@@QEADQEBD0@Z"(ptr noundef %59, ptr noundef %58, i64 noundef %56)
  %60 = load i64, ptr %10, align 8
  %61 = load ptr, ptr %15, align 8
  %62 = load ptr, ptr %12, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %62, ptr noundef %61, i64 noundef %60) #10
  %63 = load ptr, ptr %13, align 8
  %64 = load ptr, ptr %7, align 8
  %65 = getelementptr inbounds nuw %"class.std::_String_val", ptr %64, i32 0, i32 0
  store ptr %63, ptr %65, align 8
  br label %74

66:                                               ; preds = %29
  %67 = load i64, ptr %8, align 8
  %68 = load ptr, ptr %7, align 8
  %69 = getelementptr inbounds nuw %"class.std::_String_val", ptr %68, i32 0, i32 0
  %70 = getelementptr inbounds [16 x i8], ptr %69, i64 0, i64 0
  %71 = load ptr, ptr %14, align 8
  call void @"??R<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@SA?A?<auto>@@QEADQEBD0@Z"(ptr noundef %71, ptr noundef %70, i64 noundef %67)
  %72 = load ptr, ptr %7, align 8
  %73 = getelementptr inbounds nuw %"class.std::_String_val", ptr %72, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %74

74:                                               ; preds = %66, %52
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  %10 = call noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  store i64 %10, ptr %3, align 8
  store i64 16, ptr %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %4, align 8
  %13 = load i64, ptr %4, align 8
  %14 = sub i64 %13, 1
  store i64 %14, ptr %6, align 8
  %15 = call noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #10
  store i64 %15, ptr %7, align 8
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  %17 = load i64, ptr %16, align 8
  ret i64 %17
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #3 comdat {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@") #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %7 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %8, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %3, align 8
  %12 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %11, i64 noundef %10, i64 noundef %6) #10
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8
  store ptr null, ptr %5, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = call noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
  store ptr %11, ptr %5, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = load i64, ptr %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, ptr %12, align 8
  %15 = load ptr, ptr %5, align 8
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@SA?A?<auto>@@QEADQEBD0@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load i64, ptr %4, align 8
  %8 = add i64 %7, 1
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %10, ptr noundef %9, i64 noundef %8) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = add i64 %8, 1
  %10 = load ptr, ptr %5, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %10, i64 noundef %9) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %5, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #1 comdat {
  %1 = alloca i64, align 8
  store i64 -1, ptr %1, align 8
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %2, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %0, ptr %7, align 8
  %10 = load i64, ptr %7, align 8
  %11 = or i64 %10, 15
  store i64 %11, ptr %8, align 8
  %12 = load i64, ptr %8, align 8
  %13 = load i64, ptr %5, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, ptr %5, align 8
  store i64 %16, ptr %4, align 8
  br label %33

17:                                               ; preds = %3
  %18 = load i64, ptr %6, align 8
  %19 = load i64, ptr %5, align 8
  %20 = load i64, ptr %6, align 8
  %21 = udiv i64 %20, 2
  %22 = sub i64 %19, %21
  %23 = icmp ugt i64 %18, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, ptr %5, align 8
  store i64 %25, ptr %4, align 8
  br label %33

26:                                               ; preds = %17
  %27 = load i64, ptr %6, align 8
  %28 = load i64, ptr %6, align 8
  %29 = udiv i64 %28, 2
  %30 = add i64 %27, %29
  store i64 %30, ptr %9, align 8
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  %32 = load i64, ptr %31, align 8
  store i64 %32, ptr %4, align 8
  br label %33

33:                                               ; preds = %26, %24, %15
  %34 = load i64, ptr %4, align 8
  ret i64 %34
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i64, ptr %6, align 8
  %8 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %7)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = call noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %6)
  %8 = call noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %7)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %16

7:                                                ; preds = %1
  %8 = load i64, ptr %3, align 8
  %9 = icmp uge i64 %8, 4096
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, ptr %3, align 8
  %12 = call noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %11)
  store ptr %12, ptr %2, align 8
  br label %16

13:                                               ; preds = %7
  %14 = load i64, ptr %3, align 8
  %15 = call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %14)
  store ptr %15, ptr %2, align 8
  br label %16

16:                                               ; preds = %13, %10, %6
  %17 = load ptr, ptr %2, align 8
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %0) #1 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, ptr %2, align 8
  store i8 0, ptr %3, align 1
  %4 = load i64, ptr %2, align 8
  %5 = mul i64 %4, 1
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store i64 %0, ptr %2, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 39, %6
  store i64 %7, ptr %3, align 8
  %8 = load i64, ptr %3, align 8
  %9 = load i64, ptr %2, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #11
  unreachable

12:                                               ; preds = %1
  %13 = load i64, ptr %3, align 8
  %14 = call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %13)
  %15 = ptrtoint ptr %14 to i64
  store i64 %15, ptr %4, align 8
  %16 = load i64, ptr %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call void @_invoke_watson(ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0) #11
  unreachable

19:                                               ; preds = %12
  %20 = load i64, ptr %4, align 8
  %21 = add i64 %20, 39
  %22 = and i64 %21, -32
  %23 = inttoptr i64 %22 to ptr
  store ptr %23, ptr %5, align 8
  %24 = load i64, ptr %4, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds i64, ptr %25, i64 -1
  store i64 %24, ptr %26, align 8
  %27 = load ptr, ptr %5, align 8
  ret ptr %27
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0) #0 comdat align 2 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #3 comdat {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  call void @_CxxThrowException(ptr %1, ptr @"_TI3?AVbad_array_new_length@std@@") #11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @_invoke_watson(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #10
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %3, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  store ptr @"??_7bad_alloc@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, i32 noundef 1) #10
  store ptr @"??_7bad_alloc@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #14
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?what@exception@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::exception", ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw %"class.std::exception", ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@", %12 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %2, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr @"??_7exception@std@@6B@", ptr %7, align 8
  %8 = getelementptr inbounds nuw %"class.std::exception", ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"class.std::exception", ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #14
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gexception@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #14
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr @"??_7exception@std@@6B@", ptr %3, align 8
  %4 = getelementptr inbounds nuw %"class.std::exception", ptr %3, i32 0, i32 1
  invoke void @__std_exception_destroy(ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = cleanuppad within none []
  call void @__std_terminate() #12 [ "funclet"(token %7) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(ptr noundef, i64 noundef) #5

declare dso_local void @__std_exception_destroy(ptr noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %4, align 8
  %10 = mul i64 %9, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %10, i1 false)
  %11 = load ptr, ptr %6, align 8
  ret ptr %11
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = mul i64 1, %8
  %10 = load ptr, ptr %5, align 8
  call void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %10, i64 noundef %9) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef %1) #1 comdat personality ptr @__CxxFrameHandler3 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = icmp uge i64 %5, 4096
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  invoke void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %12

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i64, ptr %3, align 8
  %11 = load ptr, ptr %4, align 8
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %11, i64 noundef %10) #10
  ret void

12:                                               ; preds = %7
  %13 = cleanuppad within none []
  call void @__std_terminate() #12 [ "funclet"(token %13) ]
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, 39
  store i64 %11, ptr %9, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 -1
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  store i64 8, ptr %7, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = load i64, ptr %6, align 8
  %21 = sub i64 %19, %20
  store i64 %21, ptr %8, align 8
  %22 = load i64, ptr %8, align 8
  %23 = icmp uge i64 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i64, ptr %8, align 8
  %26 = icmp ule i64 %25, 39
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %2
  call void @_invoke_watson(ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0) #11
  unreachable

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8
  %30 = inttoptr i64 %29 to ptr
  %31 = load ptr, ptr %4, align 8
  store ptr %30, ptr %31, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_view_iterator@U?$char_traits@D@std@@@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::_String_view_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  %7 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %10) #10
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??push_back@01@QEAAXD@Z@D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, i8 noundef %3) #0 comdat align 2 {
  %5 = alloca %class.anon.0, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds nuw %class.anon.0, ptr %5, i32 0, i32 0
  store i8 %2, ptr %18, align 1
  store i8 %3, ptr %6, align 1
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds nuw %"class.std::basic_string", ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %20, i32 0, i32 0
  store ptr %21, ptr %9, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds nuw %"class.std::_String_val", ptr %22, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %10, align 8
  %25 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %19) #10
  %26 = load i64, ptr %10, align 8
  %27 = sub i64 %25, %26
  %28 = load i64, ptr %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #11
  unreachable

31:                                               ; preds = %4
  %32 = load i64, ptr %10, align 8
  %33 = load i64, ptr %7, align 8
  %34 = add i64 %32, %33
  store i64 %34, ptr %11, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = getelementptr inbounds nuw %"class.std::_String_val", ptr %35, i32 0, i32 2
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %12, align 8
  %38 = load i64, ptr %11, align 8
  %39 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %38) #10
  store i64 %39, ptr %13, align 8
  %40 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %19) #10
  store ptr %40, ptr %14, align 8
  %41 = load ptr, ptr %14, align 8
  %42 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %41, ptr noundef nonnull align 8 dereferenceable(8) %13)
  store ptr %42, ptr %15, align 8
  %43 = load ptr, ptr %9, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %43) #10
  %44 = load i64, ptr %11, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw %"class.std::_String_val", ptr %45, i32 0, i32 1
  store i64 %44, ptr %46, align 8
  %47 = load i64, ptr %13, align 8
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds nuw %"class.std::_String_val", ptr %48, i32 0, i32 2
  store i64 %47, ptr %49, align 8
  %50 = load ptr, ptr %15, align 8
  %51 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %50) #10
  store ptr %51, ptr %16, align 8
  %52 = load i64, ptr %12, align 8
  %53 = icmp ugt i64 %52, 15
  br i1 %53, label %54, label %69

54:                                               ; preds = %31
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds nuw %"class.std::_String_val", ptr %55, i32 0, i32 0
  %57 = load ptr, ptr %56, align 8
  store ptr %57, ptr %17, align 8
  %58 = load i8, ptr %6, align 1
  %59 = load i64, ptr %10, align 8
  %60 = load ptr, ptr %17, align 8
  %61 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %60) #10
  %62 = load ptr, ptr %16, align 8
  call void @"??R<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@SA?A?<auto>@@QEADQEBD_KD@Z"(ptr noundef %62, ptr noundef %61, i64 noundef %59, i8 noundef %58)
  %63 = load i64, ptr %12, align 8
  %64 = load ptr, ptr %17, align 8
  %65 = load ptr, ptr %14, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %65, ptr noundef %64, i64 noundef %63) #10
  %66 = load ptr, ptr %15, align 8
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds nuw %"class.std::_String_val", ptr %67, i32 0, i32 0
  store ptr %66, ptr %68, align 8
  br label %78

69:                                               ; preds = %31
  %70 = load i8, ptr %6, align 1
  %71 = load i64, ptr %10, align 8
  %72 = load ptr, ptr %9, align 8
  %73 = getelementptr inbounds nuw %"class.std::_String_val", ptr %72, i32 0, i32 0
  %74 = getelementptr inbounds [16 x i8], ptr %73, i64 0, i64 0
  %75 = load ptr, ptr %16, align 8
  call void @"??R<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@SA?A?<auto>@@QEADQEBD_KD@Z"(ptr noundef %75, ptr noundef %74, i64 noundef %71, i8 noundef %70)
  %76 = load ptr, ptr %9, align 8
  %77 = getelementptr inbounds nuw %"class.std::_String_val", ptr %76, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br label %78

78:                                               ; preds = %69, %54
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_val", ptr %3, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = icmp ugt i64 %5, 15
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@SA?A?<auto>@@QEADQEBD_KD@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef %3) #1 comdat align 2 {
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  store i8 %3, ptr %5, align 1
  store i64 %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %10 = load i64, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %12, ptr noundef %11, i64 noundef %10) #10
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %6, align 8
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 %15
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %5) #10
  store i8 0, ptr %9, align 1
  %17 = load ptr, ptr %8, align 8
  %18 = load i64, ptr %6, align 8
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 %19
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %8) #10
  %10 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %9) #10
  %11 = load ptr, ptr %4, align 8
  %12 = load i64, ptr %5, align 8
  %13 = call noundef nonnull align 8 dereferenceable(32) ptr @"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %12, ptr noundef %11, i64 noundef %10)
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %6 = alloca %"struct.std::_Fake_allocator", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds nuw %"class.std::basic_string", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  %11 = getelementptr inbounds nuw %"struct.std::_One_then_variadic_args_t", ptr %5, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 %12, ptr noundef nonnull align 1 dereferenceable(1) %10) #10
  %14 = getelementptr inbounds nuw %"class.std::basic_string", ptr %7, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %14, i32 0, i32 0
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %6) #10
  %16 = load ptr, ptr %3, align 8
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KQEBD0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca %class.anon.2, align 1
  store i64 %3, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds nuw %"class.std::basic_string", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %17, i32 0, i32 0
  %19 = load i64, ptr %8, align 8
  call void @"?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %19)
  %20 = getelementptr inbounds nuw %"class.std::basic_string", ptr %16, i32 0, i32 0
  %21 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds nuw %"class.std::_String_val", ptr %21, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %10, align 8
  %24 = load i64, ptr %6, align 8
  %25 = getelementptr inbounds nuw %"class.std::basic_string", ptr %16, i32 0, i32 0
  %26 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds nuw %"class.std::_String_val", ptr %26, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr %10, align 8
  %30 = sub i64 %28, %29
  %31 = icmp ule i64 %24, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = call noundef zeroext i1 @"?is_constant_evaluated@std@@YA_NXZ"() #10
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %32, %4
  %36 = phi i1 [ false, %4 ], [ %34, %32 ]
  %37 = zext i1 %36 to i8
  store i8 %37, ptr %11, align 1
  %38 = load i8, ptr %11, align 1
  %39 = trunc i8 %38 to i1
  br i1 %39, label %40, label %104

40:                                               ; preds = %35
  %41 = load i64, ptr %10, align 8
  %42 = load i64, ptr %6, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds nuw %"class.std::basic_string", ptr %16, i32 0, i32 0
  %45 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %44, i32 0, i32 0
  %46 = getelementptr inbounds nuw %"class.std::_String_val", ptr %45, i32 0, i32 1
  store i64 %43, ptr %46, align 8
  %47 = getelementptr inbounds nuw %"class.std::basic_string", ptr %16, i32 0, i32 0
  %48 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %47, i32 0, i32 0
  %49 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %48) #10
  store ptr %49, ptr %12, align 8
  %50 = load ptr, ptr %12, align 8
  %51 = load i64, ptr %8, align 8
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 %51
  store ptr %52, ptr %13, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = load i64, ptr %6, align 8
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 %54
  %56 = load ptr, ptr %13, align 8
  %57 = icmp ule ptr %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %40
  %59 = load ptr, ptr %7, align 8
  %60 = load ptr, ptr %12, align 8
  %61 = load i64, ptr %10, align 8
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 %61
  %63 = icmp ugt ptr %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %40
  %65 = load i64, ptr %6, align 8
  store i64 %65, ptr %14, align 8
  br label %78

66:                                               ; preds = %58
  %67 = load ptr, ptr %13, align 8
  %68 = load ptr, ptr %7, align 8
  %69 = icmp ule ptr %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i64 0, ptr %14, align 8
  br label %77

71:                                               ; preds = %66
  %72 = load ptr, ptr %13, align 8
  %73 = load ptr, ptr %7, align 8
  %74 = ptrtoint ptr %72 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  store i64 %76, ptr %14, align 8
  br label %77

77:                                               ; preds = %71, %70
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i64, ptr %10, align 8
  %80 = load i64, ptr %8, align 8
  %81 = sub i64 %79, %80
  %82 = add i64 %81, 1
  %83 = load ptr, ptr %13, align 8
  %84 = load ptr, ptr %13, align 8
  %85 = load i64, ptr %6, align 8
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 %85
  %87 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %86, ptr noundef %83, i64 noundef %82) #10
  %88 = load i64, ptr %14, align 8
  %89 = load ptr, ptr %7, align 8
  %90 = load ptr, ptr %13, align 8
  %91 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %90, ptr noundef %89, i64 noundef %88) #10
  %92 = load i64, ptr %6, align 8
  %93 = load i64, ptr %14, align 8
  %94 = sub i64 %92, %93
  %95 = load ptr, ptr %7, align 8
  %96 = load i64, ptr %6, align 8
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 %96
  %98 = load i64, ptr %14, align 8
  %99 = getelementptr inbounds nuw i8, ptr %97, i64 %98
  %100 = load ptr, ptr %13, align 8
  %101 = load i64, ptr %14, align 8
  %102 = getelementptr inbounds nuw i8, ptr %100, i64 %101
  %103 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %102, ptr noundef %99, i64 noundef %94) #10
  store ptr %16, ptr %5, align 8
  br label %112

104:                                              ; preds = %35
  %105 = load i64, ptr %6, align 8
  %106 = load ptr, ptr %7, align 8
  %107 = load i64, ptr %8, align 8
  %108 = load i64, ptr %6, align 8
  %109 = getelementptr inbounds nuw %class.anon.2, ptr %15, i32 0, i32 0
  %110 = load i8, ptr %109, align 1
  %111 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KQEBD0@Z@_KPEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??insert@01@QEAAAEAV01@0QEBD0@Z@_KPEBD3@Z"(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %108, i8 %110, i64 noundef %107, ptr noundef %106, i64 noundef %105)
  store ptr %111, ptr %5, align 8
  br label %112

112:                                              ; preds = %104, %78
  %113 = load ptr, ptr %5, align 8
  ret ptr %113
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %0) #1 comdat {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @strlen(ptr noundef %3) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::_String_val", ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %3, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"() #11
  unreachable

11:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?is_constant_evaluated@std@@YA_NXZ"() #1 comdat {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %4, align 8
  %10 = mul i64 %9, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %10, i1 false)
  %11 = load ptr, ptr %6, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KQEBD0@Z@_KPEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??insert@01@QEAAAEAV01@0QEBD0@Z@_KPEBD3@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #0 comdat align 2 {
  %7 = alloca %class.anon.2, align 1
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = getelementptr inbounds nuw %class.anon.2, ptr %7, i32 0, i32 0
  store i8 %2, ptr %22, align 1
  store i64 %5, ptr %8, align 8
  store ptr %4, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store ptr %0, ptr %12, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = getelementptr inbounds nuw %"class.std::basic_string", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %24, i32 0, i32 0
  store ptr %25, ptr %13, align 8
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr inbounds nuw %"class.std::_String_val", ptr %26, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %14, align 8
  %29 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %23) #10
  %30 = load i64, ptr %14, align 8
  %31 = sub i64 %29, %30
  %32 = load i64, ptr %11, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  call void @"?_Xlen_string@std@@YAXXZ"() #11
  unreachable

35:                                               ; preds = %6
  %36 = load i64, ptr %14, align 8
  %37 = load i64, ptr %11, align 8
  %38 = add i64 %36, %37
  store i64 %38, ptr %15, align 8
  %39 = load ptr, ptr %13, align 8
  %40 = getelementptr inbounds nuw %"class.std::_String_val", ptr %39, i32 0, i32 2
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %16, align 8
  %42 = load i64, ptr %15, align 8
  %43 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %42) #10
  store i64 %43, ptr %17, align 8
  %44 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %23) #10
  store ptr %44, ptr %18, align 8
  %45 = load ptr, ptr %18, align 8
  %46 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 8 dereferenceable(8) %17)
  store ptr %46, ptr %19, align 8
  %47 = load ptr, ptr %13, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %47) #10
  %48 = load i64, ptr %15, align 8
  %49 = load ptr, ptr %13, align 8
  %50 = getelementptr inbounds nuw %"class.std::_String_val", ptr %49, i32 0, i32 1
  store i64 %48, ptr %50, align 8
  %51 = load i64, ptr %17, align 8
  %52 = load ptr, ptr %13, align 8
  %53 = getelementptr inbounds nuw %"class.std::_String_val", ptr %52, i32 0, i32 2
  store i64 %51, ptr %53, align 8
  %54 = load ptr, ptr %19, align 8
  %55 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %54) #10
  store ptr %55, ptr %20, align 8
  %56 = load i64, ptr %16, align 8
  %57 = icmp ugt i64 %56, 15
  br i1 %57, label %58, label %75

58:                                               ; preds = %35
  %59 = load ptr, ptr %13, align 8
  %60 = getelementptr inbounds nuw %"class.std::_String_val", ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  store ptr %61, ptr %21, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load ptr, ptr %9, align 8
  %64 = load i64, ptr %10, align 8
  %65 = load i64, ptr %14, align 8
  %66 = load ptr, ptr %21, align 8
  %67 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %66) #10
  %68 = load ptr, ptr %20, align 8
  call void @"??R<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KQEBD0@Z@SA?A?<auto>@@QEAD10010@Z"(ptr noundef %68, ptr noundef %67, i64 noundef %65, i64 noundef %64, ptr noundef %63, i64 noundef %62)
  %69 = load i64, ptr %16, align 8
  %70 = load ptr, ptr %21, align 8
  %71 = load ptr, ptr %18, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %71, ptr noundef %70, i64 noundef %69) #10
  %72 = load ptr, ptr %19, align 8
  %73 = load ptr, ptr %13, align 8
  %74 = getelementptr inbounds nuw %"class.std::_String_val", ptr %73, i32 0, i32 0
  store ptr %72, ptr %74, align 8
  br label %86

75:                                               ; preds = %35
  %76 = load i64, ptr %8, align 8
  %77 = load ptr, ptr %9, align 8
  %78 = load i64, ptr %10, align 8
  %79 = load i64, ptr %14, align 8
  %80 = load ptr, ptr %13, align 8
  %81 = getelementptr inbounds nuw %"class.std::_String_val", ptr %80, i32 0, i32 0
  %82 = getelementptr inbounds [16 x i8], ptr %81, i64 0, i64 0
  %83 = load ptr, ptr %20, align 8
  call void @"??R<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KQEBD0@Z@SA?A?<auto>@@QEAD10010@Z"(ptr noundef %83, ptr noundef %82, i64 noundef %79, i64 noundef %78, ptr noundef %77, i64 noundef %76)
  %84 = load ptr, ptr %13, align 8
  %85 = getelementptr inbounds nuw %"class.std::_String_val", ptr %84, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  br label %86

86:                                               ; preds = %75, %58
  ret ptr %23
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"() #3 comdat align 2 {
  call void @"?_Xout_of_range@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@") #11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @"?_Xout_of_range@std@@YAXPEBD@Z"(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KQEBD0@Z@SA?A?<auto>@@QEAD10010@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #1 comdat align 2 {
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i64 %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store ptr %0, ptr %12, align 8
  %13 = load i64, ptr %9, align 8
  %14 = load ptr, ptr %11, align 8
  %15 = load ptr, ptr %12, align 8
  %16 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %15, ptr noundef %14, i64 noundef %13) #10
  %17 = load i64, ptr %7, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = load ptr, ptr %12, align 8
  %20 = load i64, ptr %9, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %20
  %22 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %21, ptr noundef %18, i64 noundef %17) #10
  %23 = load i64, ptr %10, align 8
  %24 = load i64, ptr %9, align 8
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 1
  %27 = load ptr, ptr %11, align 8
  %28 = load i64, ptr %9, align 8
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %30 = load ptr, ptr %12, align 8
  %31 = load i64, ptr %9, align 8
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 %31
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 %33
  %35 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %34, ptr noundef %29, i64 noundef %26) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::_One_then_variadic_args_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %11 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds nuw %"class.std::basic_string", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %11, i32 0, i32 0
  store ptr %12, ptr %5, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %"class.std::basic_string", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %14, i32 0, i32 0
  store ptr %15, ptr %6, align 8
  %16 = getelementptr inbounds nuw %"class.std::basic_string", ptr %10, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 0
  store ptr %18, ptr %7, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %"class.std::basic_string", ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 0
  store ptr %22, ptr %8, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %24, i64 32, i1 false)
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds nuw %"class.std::_String_val", ptr %25, i32 0, i32 1
  store i64 0, ptr %26, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds nuw %"class.std::_String_val", ptr %27, i32 0, i32 2
  store i64 15, ptr %28, align 8
  %29 = load ptr, ptr %6, align 8
  call void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %29) #10
  store i8 0, ptr %9, align 1
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw %"class.std::_String_val", ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds [16 x i8], ptr %31, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$_Integral_to_string@D_K@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@_K@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, i64 noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca [21 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::allocator", align 1
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %9 = call noundef ptr @"??$end@D$0BF@@std@@YAPEADAEAY0BF@D@Z"(ptr noundef nonnull align 1 dereferenceable(21) %5) #10
  store ptr %9, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  store ptr %10, ptr %7, align 8
  %11 = load i64, ptr %4, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = call noundef ptr @"??$_UIntegral_to_buff@D_K@std@@YAPEADPEAD_K@Z"(ptr noundef %12, i64 noundef %11)
  store ptr %13, ptr %7, align 8
  %14 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %8) #10
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = call noundef ptr @"??$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %16, ptr noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$end@D$0BF@@std@@YAPEADAEAY0BF@D@Z"(ptr noundef nonnull align 1 dereferenceable(21) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds [21 x i8], ptr %3, i64 0, i64 0
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 21
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_UIntegral_to_buff@D_K@std@@YAPEADPEAD_K@Z"(ptr noundef %0, i64 noundef %1) #1 comdat {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  store i64 %6, ptr %5, align 8
  br label %7

7:                                                ; preds = %16, %2
  %8 = load i64, ptr %5, align 8
  %9 = urem i64 %8, 10
  %10 = add i64 48, %9
  %11 = trunc i64 %10 to i8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds i8, ptr %12, i32 -1
  store ptr %13, ptr %4, align 8
  store i8 %11, ptr %13, align 1
  %14 = load i64, ptr %5, align 8
  %15 = udiv i64 %14, 10
  store i64 %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %7
  %17 = load i64, ptr %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %7, label %19, !llvm.loop !16

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8
  ret ptr %20
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0PEAD$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@PEAD0AEBV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %3, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  %13 = load ptr, ptr %9, align 8
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds nuw %"class.std::basic_string", ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds nuw %"struct.std::_One_then_variadic_args_t", ptr %10, i32 0, i32 0
  %17 = load i8, ptr %16, align 1
  %18 = call noundef ptr @"??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 %17, ptr noundef nonnull align 1 dereferenceable(1) %15) #10
  invoke void @"??$_Adl_verify_range@PEADPEAD@std@@YAXAEBQEAD0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %19 unwind label %37

19:                                               ; preds = %4
  %20 = call noundef ptr @"??$_Get_unwrapped@AEAPEAD@std@@YA?A_TAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  store ptr %20, ptr %11, align 8
  %21 = call noundef ptr @"??$_Get_unwrapped@AEAPEAD@std@@YA?A_TAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  store ptr %21, ptr %12, align 8
  %22 = load ptr, ptr %11, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %13)
  br label %35

26:                                               ; preds = %19
  %27 = load ptr, ptr %12, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %31) #10
  %33 = load ptr, ptr %11, align 8
  invoke void @"??$_Construct@$00PEAD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %33, i64 noundef %32)
          to label %34 unwind label %37

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %25
  %36 = load ptr, ptr %5, align 8
  ret ptr %36

37:                                               ; preds = %26, %4
  %38 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #10 [ "funclet"(token %38) ]
  cleanupret from %38 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::_One_then_variadic_args_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %11 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@PEADPEAD@std@@YAXAEBQEAD0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped@AEAPEAD@std@@YA?A_TAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 0
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$_Construct@$00PEAD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"struct.std::_Fake_allocator", align 1
  %11 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i8, align 1
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %"class.std::basic_string", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %17, i32 0, i32 0
  store ptr %18, ptr %7, align 8
  %19 = load i64, ptr %4, align 8
  %20 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  call void @"?_Xlen_string@std@@YAXXZ"() #11
  unreachable

23:                                               ; preds = %3
  %24 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  store ptr %24, ptr %8, align 8
  store ptr %10, ptr %9, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 1 dereferenceable(1) %25) #10
  %28 = load i64, ptr %4, align 8
  %29 = icmp ule i64 %28, 15
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load i64, ptr %4, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds nuw %"class.std::_String_val", ptr %32, i32 0, i32 1
  store i64 %31, ptr %33, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds nuw %"class.std::_String_val", ptr %34, i32 0, i32 2
  store i64 15, ptr %35, align 8
  %36 = load i64, ptr %4, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds nuw %"class.std::_String_val", ptr %38, i32 0, i32 0
  %40 = getelementptr inbounds [16 x i8], ptr %39, i64 0, i64 0
  %41 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %40, ptr noundef %37, i64 noundef %36) #10
  store i8 0, ptr %12, align 1
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds nuw %"class.std::_String_val", ptr %42, i32 0, i32 0
  %44 = load i64, ptr %4, align 8
  %45 = getelementptr inbounds nuw [16 x i8], ptr %43, i64 0, i64 %44
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 1 dereferenceable(1) %12) #10
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %11) #10
  br label %69

46:                                               ; preds = %23
  %47 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  %48 = load i64, ptr %4, align 8
  %49 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %48, i64 noundef 15, i64 noundef %47) #10
  store i64 %49, ptr %13, align 8
  %50 = load ptr, ptr %8, align 8
  %51 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(8) %13)
  store ptr %51, ptr %14, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds nuw %"class.std::_String_val", ptr %52, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  %54 = load i64, ptr %4, align 8
  %55 = load ptr, ptr %7, align 8
  %56 = getelementptr inbounds nuw %"class.std::_String_val", ptr %55, i32 0, i32 1
  store i64 %54, ptr %56, align 8
  %57 = load i64, ptr %13, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds nuw %"class.std::_String_val", ptr %58, i32 0, i32 2
  store i64 %57, ptr %59, align 8
  %60 = load i64, ptr %4, align 8
  %61 = load ptr, ptr %5, align 8
  %62 = load ptr, ptr %14, align 8
  %63 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %62) #10
  %64 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %63, ptr noundef %61, i64 noundef %60) #10
  store i8 0, ptr %15, align 1
  %65 = load ptr, ptr %14, align 8
  %66 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %65) #10
  %67 = load i64, ptr %4, align 8
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 %67
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %68, ptr noundef nonnull align 1 dereferenceable(1) %15) #10
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %11) #10
  br label %69

69:                                               ; preds = %46, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %3, i32 0, i32 0
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_val", ptr %3, i32 0, i32 0
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??0ProtocolError@sdep@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  store ptr @"??_7ProtocolError@sdep@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_GInvalidUuidError@sdep@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1InvalidUuidError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #14
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %8 = call noundef ptr @"??0exception@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %7) #10
  store ptr @"??_7runtime_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_GProtocolError@sdep@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1ProtocolError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #14
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.__std_exception_data, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  store ptr @"??_7exception@std@@6B@", ptr %6, align 8
  %7 = getelementptr inbounds nuw %"class.std::exception", ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %5, i32 0, i32 0
  %9 = load ptr, ptr %3, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw %struct.__std_exception_data, ptr %5, i32 0, i32 1
  store i8 1, ptr %10, align 8
  %11 = getelementptr inbounds nuw %"class.std::exception", ptr %6, i32 0, i32 1
  invoke void @__std_exception_copy(ptr noundef %5, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %2
  ret ptr %6

13:                                               ; preds = %2
  %14 = cleanuppad within none []
  call void @__std_terminate() #12 [ "funclet"(token %14) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gruntime_error@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #14
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  %7 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %10) #10
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

declare dso_local void @__std_exception_copy(ptr noundef, ptr noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1ProtocolError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %9) #10
  %10 = load ptr, ptr %3, align 8
  %11 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  store ptr %13, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw %"class.std::_String_val", ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw %"class.std::_String_val", ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %4, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef %19, i64 noundef %16) #10
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %"class.std::_String_val", ptr %21, i32 0, i32 0
  call void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %22) #10
  br label %23

23:                                               ; preds = %12, %1
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %"class.std::_String_val", ptr %24, i32 0, i32 1
  store i64 0, ptr %25, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds nuw %"class.std::_String_val", ptr %26, i32 0, i32 2
  store i64 15, ptr %27, align 8
  store i8 0, ptr %5, align 1
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds nuw %"class.std::_String_val", ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds [16 x i8], ptr %29, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %5) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %5, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 %9) #10
  %11 = load ptr, ptr %3, align 8
  %12 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %11) #10
  %13 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %12) #10
  %14 = load ptr, ptr %3, align 8
  invoke void @"??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %14, i64 noundef %13)
          to label %15 unwind label %16

15:                                               ; preds = %2
  ret ptr %6

16:                                               ; preds = %2
  %17 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #10 [ "funclet"(token %17) ]
  cleanupret from %17 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"struct.std::_Fake_allocator", align 1
  %11 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i8, align 1
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %"class.std::basic_string", ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %17, i32 0, i32 0
  store ptr %18, ptr %7, align 8
  %19 = load i64, ptr %4, align 8
  %20 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  call void @"?_Xlen_string@std@@YAXXZ"() #11
  unreachable

23:                                               ; preds = %3
  %24 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  store ptr %24, ptr %8, align 8
  store ptr %10, ptr %9, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 1 dereferenceable(1) %25) #10
  %28 = load i64, ptr %4, align 8
  %29 = icmp ule i64 %28, 15
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load i64, ptr %4, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds nuw %"class.std::_String_val", ptr %32, i32 0, i32 1
  store i64 %31, ptr %33, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds nuw %"class.std::_String_val", ptr %34, i32 0, i32 2
  store i64 15, ptr %35, align 8
  %36 = load i64, ptr %4, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds nuw %"class.std::_String_val", ptr %38, i32 0, i32 0
  %40 = getelementptr inbounds [16 x i8], ptr %39, i64 0, i64 0
  %41 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %40, ptr noundef %37, i64 noundef %36) #10
  store i8 0, ptr %12, align 1
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds nuw %"class.std::_String_val", ptr %42, i32 0, i32 0
  %44 = load i64, ptr %4, align 8
  %45 = getelementptr inbounds nuw [16 x i8], ptr %43, i64 0, i64 %44
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 1 dereferenceable(1) %12) #10
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %11) #10
  br label %69

46:                                               ; preds = %23
  %47 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #10
  %48 = load i64, ptr %4, align 8
  %49 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %48, i64 noundef 15, i64 noundef %47) #10
  store i64 %49, ptr %13, align 8
  %50 = load ptr, ptr %8, align 8
  %51 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(8) %13)
  store ptr %51, ptr %14, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds nuw %"class.std::_String_val", ptr %52, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  %54 = load i64, ptr %4, align 8
  %55 = load ptr, ptr %7, align 8
  %56 = getelementptr inbounds nuw %"class.std::_String_val", ptr %55, i32 0, i32 1
  store i64 %54, ptr %56, align 8
  %57 = load i64, ptr %13, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds nuw %"class.std::_String_val", ptr %58, i32 0, i32 2
  store i64 %57, ptr %59, align 8
  %60 = load i64, ptr %4, align 8
  %61 = load ptr, ptr %5, align 8
  %62 = load ptr, ptr %14, align 8
  %63 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %62) #10
  %64 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %63, ptr noundef %61, i64 noundef %60) #10
  store i8 0, ptr %15, align 1
  %65 = load ptr, ptr %14, align 8
  %66 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %65) #10
  %67 = load i64, ptr %4, align 8
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 %67
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %68, ptr noundef nonnull align 1 dereferenceable(1) %15) #10
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %11) #10
  br label %69

69:                                               ; preds = %46, %30
  ret void
}

attributes #0 = { mustprogress noinline optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress noinline noreturn optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { allocsize(0) }
attributes #14 = { builtin nounwind }

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
