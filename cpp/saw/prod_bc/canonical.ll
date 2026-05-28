; ModuleID = 'src\canonical.cpp'
source_filename = "src\\canonical.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.44.35227"

%"class.std::basic_string_view" = type { ptr, i64 }
%rtti.TypeDescriptor30 = type { ptr, ptr, [31 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor19 = type { ptr, ptr, [20 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { ptr, [8 x i8] }
%"class.std::vector" = type { %"class.std::_Compressed_pair.0" }
%"class.std::_Compressed_pair.0" = type { %"class.std::_Vector_val" }
%"class.std::_Vector_val" = type { ptr, ptr, ptr }
%"class.std::_Tree_const_iterator" = type { %"class.std::_Tree_unchecked_const_iterator" }
%"class.std::_Tree_unchecked_const_iterator" = type { ptr }
%class.anon = type { i8 }
%"class.std::_Vector_iterator" = type { %"class.std::_Vector_const_iterator" }
%"class.std::_Vector_const_iterator" = type { ptr }
%"struct.std::pair.7" = type { %"class.std::basic_string", %"class.std::basic_string" }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"struct.std::_Fake_allocator" = type { i8 }
%"class.std::_Tree_val" = type { ptr, i64 }
%"struct.std::_Tree_node" = type { ptr, ptr, ptr, i8, i8, %"struct.std::pair" }
%"struct.std::pair" = type { %"class.std::basic_string", %"class.std::basic_string" }
%"class.std::allocator" = type { i8 }
%class.anon.15 = type { i8 }
%"class.std::_String_iterator" = type { %"class.std::_String_const_iterator" }
%"class.std::_String_const_iterator" = type { ptr }
%class.anon.18 = type { i8 }
%class.anon.8 = type { i8 }
%"struct.sdep::DeviceRequest" = type { %"class.std::basic_string", %"class.std::basic_string", %"class.std::map", %"class.std::map", %"class.std::vector.10" }
%"class.std::map" = type { %"class.std::_Tree" }
%"class.std::_Tree" = type { %"class.std::_Compressed_pair.3" }
%"class.std::_Compressed_pair.3" = type { %"class.std::_Compressed_pair.4" }
%"class.std::_Compressed_pair.4" = type { %"class.std::_Tree_val" }
%"class.std::vector.10" = type { %"class.std::_Compressed_pair.11" }
%"class.std::_Compressed_pair.11" = type { %"class.std::_Vector_val.14" }
%"class.std::_Vector_val.14" = type { ptr, ptr, ptr }
%class.anon.22 = type { i8 }
%"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard" = type { ptr, ptr, i64 }
%"class.std::_Uninitialized_backout_al" = type { ptr, ptr, ptr }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }
%"struct.std::_One_then_variadic_args_t" = type { i8 }
%"struct.std::_Fake_proxy_ptr_impl" = type { i8 }
%"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard" = type { ptr, ptr, i64, ptr, ptr }
%"struct.std::pair.17" = type { ptr, ptr }
%"struct.std::_Literal_zero" = type { i8 }
%"struct.std::strong_ordering" = type { i8 }
%class.anon.20 = type { i8 }

$"??0?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ" = comdat any

$"?reserve@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAX_K@Z" = comdat any

$"?size@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA_KXZ" = comdat any

$"?begin@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ" = comdat any

$"?end@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ" = comdat any

$"??8?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBA_NAEBV01@@Z" = comdat any

$"??D?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAAEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@XZ" = comdat any

$"??$get@$0A@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z" = comdat any

$"??$get@$00$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z" = comdat any

$"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ" = comdat any

$"??$?8DU?$char_traits@D@std@@@std@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@0@0@Z" = comdat any

$"??$emplace_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"??E?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAAAEAV01@XZ" = comdat any

$"?end@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA?AV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ" = comdat any

$"?begin@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA?AV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"?size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ" = comdat any

$"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z" = comdat any

$"??A?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@_K@Z" = comdat any

$"??1?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ" = comdat any

$"??$emplace_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z" = comdat any

$"?size@?$vector@EV?$allocator@E@std@@@std@@QEBA_KXZ" = comdat any

$"?data@?$vector@EV?$allocator@E@std@@@std@@QEBAPEBEXZ" = comdat any

$"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD_K@Z" = comdat any

$"?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z" = comdat any

$"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" = comdat any

$"??0?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAA@XZ" = comdat any

$"??0?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@XZ" = comdat any

$"?capacity@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ" = comdat any

$"?max_size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlength@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@CAXXZ" = comdat any

$"??$_Reallocate@$0A@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXAEA_K@Z" = comdat any

$"??$min@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SA_KAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@Z" = comdat any

$"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBAAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ" = comdat any

$"??$_Max_limit@_J@std@@YA_JXZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEBAAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ" = comdat any

$"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ" = comdat any

$"??$_Allocate_at_least_helper@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@AEA_K@Z" = comdat any

$"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z" = comdat any

$"?_Change_array@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K1@Z" = comdat any

$"??1_Simple_reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ" = comdat any

$"?allocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z" = comdat any

$"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"??$_Get_size_of_n@$0EA@@std@@YA_K_K@Z" = comdat any

$"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" = comdat any

$"?_Throw_bad_array_new_length@std@@YAXXZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@XZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" = comdat any

$"??0bad_alloc@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"??$_Get_unwrapped@AEBQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YA?A_TAEBQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z" = comdat any

$"??0?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@@Z" = comdat any

$"??$_Emplace_back@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAAX$$QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@@Z" = comdat any

$"?_Release@?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@XZ" = comdat any

$"??1?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@XZ" = comdat any

$"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAU31@@Z" = comdat any

$"??$_Unfancy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z" = comdat any

$"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAU10@@Z" = comdat any

$"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z" = comdat any

$"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

$"??$_Destroy_range@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z" = comdat any

$"??$destroy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@@Z" = comdat any

$"??$destroy_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z" = comdat any

$"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"?deallocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z" = comdat any

$"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??$?0V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@AEBV?$allocator@D@1@@Z" = comdat any

$"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ" = comdat any

$"?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ" = comdat any

$"??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z" = comdat any

$"??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z" = comdat any

$"??$_Convert_size@_K_K@std@@YA_K_K@Z" = comdat any

$"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z" = comdat any

$"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" = comdat any

$"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z" = comdat any

$"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$max@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z" = comdat any

$"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" = comdat any

$"??$_Get_size_of_n@$00@std@@YA_K_K@Z" = comdat any

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??$_Adl_verify_range@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@V12@@std@@YAXAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@0@Z" = comdat any

$"??$_Get_unwrapped@AEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@YA?A_TAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@@Z" = comdat any

$"??$_Get_unwrapped_n@AEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@_J@std@@YA?A_TAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@_J@Z" = comdat any

$"??$_Idl_distance@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@PEAD@std@@YA?A_PAEBQEAD0@Z" = comdat any

$"??$_Seek_wrapped@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@AEAPEAD@std@@YAXAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@AEAPEAD@Z" = comdat any

$"?_Unwrapped@?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAPEADXZ" = comdat any

$"??$_Unfancy_maybe_null@$$CBD@std@@YAPEBDPEBD@Z" = comdat any

$"?_Verify_offset@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAX_J@Z" = comdat any

$"?_Seek_to@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAXPEBD@Z" = comdat any

$"??$_Refancy_maybe_null@PEBD$0A@@std@@YAPEBDPEBD@Z" = comdat any

$"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" = comdat any

$"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"??0?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z" = comdat any

$"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"?_Equal@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_NV12@@Z" = comdat any

$"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z" = comdat any

$"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z" = comdat any

$"??$_Emplace_one_at_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z" = comdat any

$"??$_Emplace_back_with_unused_capacity@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z" = comdat any

$"??$_Emplace_reallocate@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@QEAU21@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@1@Z" = comdat any

$"??$_Construct_in_place@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@1@Z" = comdat any

$"?_Orphan_range@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@0@Z" = comdat any

$"??$?0V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V01@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z" = comdat any

$"?_Calculate_growth@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBA_K_K@Z" = comdat any

$"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@2@Z" = comdat any

$"??1_Reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ" = comdat any

$"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@1@Z" = comdat any

$"??A?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAAEBD_K@Z" = comdat any

$"?substr@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV12@_K_K@Z" = comdat any

$"?_Check_offset@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBAX_K@Z" = comdat any

$"?_Clamp_suffix_size@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBA_K_K0@Z" = comdat any

$"?_Xran@?$basic_string_view@DU?$char_traits@D@std@@@std@@CAXXZ" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z" = comdat any

$"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$"??$_Adl_verify_range@V?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@V12@@std@@YAXAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@0@Z" = comdat any

$"??$_Get_unwrapped@AEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@@std@@YA?A_TAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@@Z" = comdat any

$"?_Unwrapped@?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@XZ" = comdat any

$"??$_Unfancy_maybe_null@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z" = comdat any

$"??$_Move_backward_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@00@Z" = comdat any

$"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z" = comdat any

$"??Mstd@@YA_NUstrong_ordering@0@U_Literal_zero@0@@Z" = comdat any

$"??$?__MDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AUstrong_ordering@0@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z" = comdat any

$"?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAHAEBV12@@Z" = comdat any

$"??$_Traits_compare@U?$char_traits@D@std@@@std@@YAHQEBD_K01@Z" = comdat any

$"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z" = comdat any

$"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z" = comdat any

$"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z" = comdat any

$"??$_Next_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z" = comdat any

$"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z" = comdat any

$"??$?0AEAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@AEAPEAU01@$0A@@?$pair@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@std@@QEAA@AEAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@0@Z" = comdat any

$"?swap@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAXAEAU12@@Z" = comdat any

$"??$swap@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z" = comdat any

$"?swap@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@@Z" = comdat any

$"??$_Pocs@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z" = comdat any

$"?_Swap_data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@@Z" = comdat any

$"??0?$_Vector_const_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@PEBU_Container_base0@1@@Z" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??push_back@01@QEAAXD@Z@D@Z" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"??R<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@SA?A?<auto>@@QEADQEBD_KD@Z" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z" = comdat any

$"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@SA?A?<auto>@@QEAD0101@Z" = comdat any

$"?_Tidy@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXXZ" = comdat any

$"??$_Emplace_one_at_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z" = comdat any

$"??$_Emplace_back_with_unused_capacity@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z" = comdat any

$"??$_Emplace_reallocate@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@QEAU21@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z" = comdat any

$"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV32@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV41@@Z" = comdat any

$"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV32@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV20@@Z" = comdat any

$"??$?0V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV01@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV21@@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z" = comdat any

$"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z" = comdat any

$"??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z" = comdat any

$"??$_Unfancy_maybe_null@E@std@@YAPEAEPEAE@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@$$V@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??reserve@01@QEAAX0@Z@@Z" = comdat any

$"??R<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@SA?A?<auto>@@QEADQEBD0@Z" = comdat any

$"??$append@V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@@Z" = comdat any

$"?_Get_scary@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@IEBAPEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@XZ" = comdat any

$"??0?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z" = comdat any

$"??E?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAAAEAV01@XZ" = comdat any

$"?_Min@?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAPEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@2@PEAU32@@Z" = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"??_C@_0BA@FOIKENOD@vector?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA3?AVbad_array_new_length@std@@" = comdat any

$"_TI3?AVbad_array_new_length@std@@" = comdat any

$"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = comdat any

$"??_7bad_array_new_length@std@@6B@" = comdat any

$"??_7bad_alloc@std@@6B@" = comdat any

$"??_7exception@std@@6B@" = comdat any

$"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_C@_0BG@NCFIHKFD@x?9fleet?9authorization?$AA@" = comdat any

$"??_C@_0BN@OFDOGPDL@invalid?5string_view?5position?$AA@" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@"?kAuthHeader@?A0x594909C8@sdep@@3V?$basic_string_view@DU?$char_traits@D@std@@@std@@B" = internal constant %"class.std::basic_string_view" { ptr @"??_C@_0BG@NCFIHKFD@x?9fleet?9authorization?$AA@", i64 21 }, align 8
@"??_C@_0BA@FOIKENOD@vector?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"vector too long\00", comdat, align 1
@"??_7type_info@@6B@" = external constant ptr
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { ptr @"??_7type_info@@6B@", ptr null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 1
@"??_7bad_array_new_length@std@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_7bad_alloc@std@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_7exception@std@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_Gexception@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 1
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 1
@"??_C@_0BG@NCFIHKFD@x?9fleet?9authorization?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"x-fleet-authorization\00", comdat, align 1
@"??_C@_0BN@OFDOGPDL@invalid?5string_view?5position?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"invalid string_view position\00", comdat, align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@3@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::_Tree_const_iterator", align 8
  %8 = alloca %"class.std::_Tree_const_iterator", align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string_view", align 8
  %14 = alloca %"class.std::basic_string_view", align 8
  %15 = alloca %"class.std::basic_string_view", align 8
  %16 = alloca i32, align 4
  %17 = alloca %"class.std::basic_string", align 8
  %18 = alloca %"class.std::basic_string_view", align 8
  %19 = alloca %class.anon, align 1
  %20 = alloca %"class.std::_Vector_iterator", align 8
  %21 = alloca %"class.std::_Vector_iterator", align 8
  %22 = alloca i1, align 1
  %23 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %24 = call noundef ptr @"??0?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %25 = load ptr, ptr %4, align 8
  %26 = call noundef i64 @"?size@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %25) #11
  invoke void @"?reserve@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %26)
          to label %27 unwind label %101

27:                                               ; preds = %2
  %28 = load ptr, ptr %4, align 8
  store ptr %28, ptr %6, align 8
  %29 = load ptr, ptr %6, align 8
  call void @"?begin@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr dead_on_unwind writable sret(%"class.std::_Tree_const_iterator") align 8 %7) #11
  %30 = load ptr, ptr %6, align 8
  call void @"?end@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr dead_on_unwind writable sret(%"class.std::_Tree_const_iterator") align 8 %8) #11
  br label %31

31:                                               ; preds = %52, %27
  %32 = call noundef zeroext i1 @"??8?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = call noundef nonnull align 8 dereferenceable(64) ptr @"??D?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAAEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  store ptr %35, ptr %9, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$0A@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %36) #11
  store ptr %37, ptr %10, align 8
  %38 = load ptr, ptr %9, align 8
  %39 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$00$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %38) #11
  store ptr %39, ptr %11, align 8
  %40 = load ptr, ptr %10, align 8
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %13) #11
  invoke void @"?to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %12, ptr noundef %13)
          to label %41 unwind label %101

41:                                               ; preds = %34
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %14) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 @"?kAuthHeader@?A0x594909C8@sdep@@3V?$basic_string_view@DU?$char_traits@D@std@@@std@@B", i64 16, i1 false)
  %42 = call noundef zeroext i1 @"??$?8DU?$char_traits@D@std@@@std@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@0@0@Z"(ptr noundef %15, ptr noundef %14) #11
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  store i32 3, ptr %16, align 4
  br label %49

44:                                               ; preds = %41
  %45 = load ptr, ptr %11, align 8
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %18) #11
  invoke void @"?trim@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %17, ptr noundef %18)
          to label %46 unwind label %56

46:                                               ; preds = %44
  %47 = invoke noundef nonnull align 8 dereferenceable(64) ptr @"??$emplace_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %48 unwind label %54

48:                                               ; preds = %46
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #11
  store i32 0, ptr %16, align 4
  br label %49

49:                                               ; preds = %48, %43
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #11
  %50 = load i32, ptr %16, align 4
  switch i32 %50, label %103 [
    i32 0, label %51
    i32 3, label %52
  ]

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %49
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  br label %31

54:                                               ; preds = %46
  %55 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #11 [ "funclet"(token %55) ]
  cleanupret from %55 unwind label %56

56:                                               ; preds = %54, %44
  %57 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #11 [ "funclet"(token %57) ]
  cleanupret from %57 unwind label %101

58:                                               ; preds = %31
  call void @"?end@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA?AV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr dead_on_unwind writable sret(%"class.std::_Vector_iterator") align 8 %20) #11
  call void @"?begin@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA?AV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr dead_on_unwind writable sret(%"class.std::_Vector_iterator") align 8 %21) #11
  %59 = getelementptr inbounds nuw %"class.std::_Vector_iterator", ptr %21, i32 0, i32 0
  %60 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %61 to i64
  %63 = getelementptr inbounds nuw %"class.std::_Vector_iterator", ptr %20, i32 0, i32 0
  %64 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8
  %66 = ptrtoint ptr %65 to i64
  %67 = getelementptr inbounds nuw %class.anon, ptr %19, i32 0, i32 0
  %68 = load i8, ptr %67, align 1
  invoke void @"??$sort@V?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(i64 %62, i64 %66, i8 %68)
          to label %69 unwind label %101

69:                                               ; preds = %58
  store i1 false, ptr %22, align 1
  %70 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  store i64 0, ptr %23, align 8
  br label %71

71:                                               ; preds = %92, %69
  %72 = load i64, ptr %23, align 8
  %73 = call noundef i64 @"?size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i64, ptr %23, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  invoke void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef 10)
          to label %79 unwind label %99

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i64, ptr %23, align 8
  %82 = call noundef nonnull align 8 dereferenceable(64) ptr @"??A?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %81) #11
  %83 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %82, i32 0, i32 0
  %84 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %83)
          to label %85 unwind label %99

85:                                               ; preds = %80
  invoke void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef 58)
          to label %86 unwind label %99

86:                                               ; preds = %85
  %87 = load i64, ptr %23, align 8
  %88 = call noundef nonnull align 8 dereferenceable(64) ptr @"??A?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %87) #11
  %89 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %88, i32 0, i32 1
  %90 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %89)
          to label %91 unwind label %99

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91
  %93 = load i64, ptr %23, align 8
  %94 = add i64 %93, 1
  store i64 %94, ptr %23, align 8
  br label %71, !llvm.loop !13

95:                                               ; preds = %71
  store i1 true, ptr %22, align 1
  store i32 1, ptr %16, align 4
  %96 = load i1, ptr %22, align 1
  br i1 %96, label %98, label %97

97:                                               ; preds = %95
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br label %98

98:                                               ; preds = %97, %95
  call void @"??1?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  ret void

99:                                               ; preds = %86, %85, %80, %78
  %100 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11 [ "funclet"(token %100) ]
  cleanupret from %100 unwind label %101

101:                                              ; preds = %99, %58, %56, %34, %2
  %102 = cleanuppad within none []
  call void @"??1?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11 [ "funclet"(token %102) ]
  cleanupret from %102 unwind to caller

103:                                              ; preds = %49
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca %"struct.std::_Fake_allocator", align 1
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds nuw %"class.std::vector", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  %8 = load i8, ptr %7, align 1
  %9 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 %8) #11
  %10 = getelementptr inbounds nuw %"class.std::vector", ptr %5, i32 0, i32 0
  %11 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %10, i32 0, i32 0
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?reserve@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = call noundef i64 @"?capacity@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8
  %11 = call noundef i64 @"?max_size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @"?_Xlength@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@CAXXZ"() #12
  unreachable

14:                                               ; preds = %9
  call void @"??$_Reallocate@$0A@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %15

15:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Get_scary@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@IEBAPEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  %5 = getelementptr inbounds nuw %"class.std::_Tree_val", ptr %4, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  ret i64 %6
}

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Tree_const_iterator") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"?_Get_scary@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@IEBAPEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"class.std::_Tree_val", ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = call noundef ptr @"??0?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %13, ptr noundef %8) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?end@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Tree_const_iterator") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"?_Get_scary@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@IEBAPEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"class.std::_Tree_val", ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = call noundef ptr @"??0?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %11, ptr noundef %8) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??8?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??D?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAAEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %5, i32 0, i32 5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$0A@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::pair", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$00$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::pair", ptr %3, i32 0, i32 1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"?to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, ptr noundef %1) #0 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i1, align 1
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %class.anon.15, align 1
  %8 = alloca %"class.std::_String_iterator", align 8
  %9 = alloca %"class.std::_String_iterator", align 8
  %10 = alloca %"class.std::_String_iterator", align 8
  %11 = alloca %"class.std::_String_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i1 false, ptr %5, align 1
  %12 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %6) #11
  %13 = call noundef ptr @"??$?0V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@AEBV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind writable sret(%"class.std::_String_iterator") align 8 %8) #11
  call void @"?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind writable sret(%"class.std::_String_iterator") align 8 %9) #11
  call void @"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind writable sret(%"class.std::_String_iterator") align 8 %10) #11
  %14 = getelementptr inbounds nuw %"class.std::_String_iterator", ptr %10, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = getelementptr inbounds nuw %"class.std::_String_iterator", ptr %9, i32 0, i32 0
  %19 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i64
  %22 = getelementptr inbounds nuw %"class.std::_String_iterator", ptr %8, i32 0, i32 0
  %23 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %24 to i64
  %26 = getelementptr inbounds nuw %class.anon.15, ptr %7, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  invoke void @"??$transform@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@V12@V<lambda_0>@?0??to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@@std@@YA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@V10@0V10@V<lambda_0>@?0??to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@V?$basic_string_view@DU?$char_traits@D@std@@@0@@Z@@Z"(ptr dead_on_unwind writable sret(%"class.std::_String_iterator") align 8 %11, i64 %17, i64 %21, i64 %25, i8 %27)
          to label %28 unwind label %32

28:                                               ; preds = %2
  store i1 true, ptr %5, align 1
  %29 = load i1, ptr %5, align 1
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br label %31

31:                                               ; preds = %30, %28
  ret void

32:                                               ; preds = %2
  %33 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11 [ "funclet"(token %33) ]
  cleanupret from %33 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind noalias writable sret(%"class.std::basic_string_view") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %6, i32 0, i32 0
  %8 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  %9 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds nuw %"class.std::_String_val", ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = call noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %8, i64 noundef %12) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??$?8DU?$char_traits@D@std@@@std@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@0@0@Z"(ptr noundef %0, ptr noundef %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 16, i1 false)
  %6 = call noundef zeroext i1 @"?_Equal@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_NV12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %5) #11
  ret i1 %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??$emplace_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$_Emplace_one_at_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
  store ptr %11, ptr %7, align 8
  %12 = load ptr, ptr %7, align 8
  ret ptr %12
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"?trim@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::basic_string_view", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i64 0, ptr %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i64, ptr %5, align 8
  %11 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i64, ptr %5, align 8
  %15 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAAEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %14) #11
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 @isspace(i32 noundef %17) #13
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi i1 [ false, %9 ], [ %19, %13 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i64, ptr %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, ptr %5, align 8
  br label %9, !llvm.loop !15

25:                                               ; preds = %20
  %26 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  store i64 %26, ptr %6, align 8
  br label %27

27:                                               ; preds = %41, %25
  %28 = load i64, ptr %6, align 8
  %29 = load i64, ptr %5, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i64, ptr %6, align 8
  %33 = sub i64 %32, 1
  %34 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAAEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %33) #11
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 @isspace(i32 noundef %36) #13
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i1 [ false, %27 ], [ %38, %31 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i64, ptr %6, align 8
  %43 = add i64 %42, -1
  store i64 %43, ptr %6, align 8
  br label %27, !llvm.loop !16

44:                                               ; preds = %39
  %45 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %7) #11
  %46 = load i64, ptr %6, align 8
  %47 = load i64, ptr %5, align 8
  %48 = sub i64 %46, %47
  %49 = load i64, ptr %5, align 8
  call void @"?substr@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV12@_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %8, i64 noundef %49, i64 noundef %48)
  %50 = call noundef ptr @"??$?0V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@AEBV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$sort@V?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(i64 %0, i64 %1, i8 %2) #0 {
  %4 = alloca %"class.std::_Vector_iterator", align 8
  %5 = alloca %"class.std::_Vector_iterator", align 8
  %6 = alloca %class.anon, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %class.anon, align 1
  %10 = getelementptr inbounds nuw %"class.std::_Vector_iterator", ptr %4, i32 0, i32 0
  %11 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %10, i32 0, i32 0
  %12 = inttoptr i64 %0 to ptr
  store ptr %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw %"class.std::_Vector_iterator", ptr %5, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %13, i32 0, i32 0
  %15 = inttoptr i64 %1 to ptr
  store ptr %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw %class.anon, ptr %6, i32 0, i32 0
  store i8 %2, ptr %16, align 1
  call void @"??$_Adl_verify_range@V?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@V12@@std@@YAXAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %17 = call noundef ptr @"??$_Get_unwrapped@AEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@@std@@YA?A_TAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  store ptr %17, ptr %7, align 8
  %18 = call noundef ptr @"??$_Get_unwrapped@AEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@@std@@YA?A_TAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  store ptr %18, ptr %8, align 8
  %19 = call i8 @"??$_Pass_fn@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@5@@Z@@std@@YA?A_PAEAV<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6) #11
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 64
  %26 = load ptr, ptr %8, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds nuw %class.anon, ptr %9, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @"??$_Sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0_JV<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %27, ptr noundef %26, i64 noundef %25, i8 %29)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?end@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA?AV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Vector_iterator") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"class.std::vector", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %7, i32 0, i32 0
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef ptr @"??0?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@PEBU_Container_base0@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %12, ptr noundef %9) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA?AV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Vector_iterator") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"class.std::vector", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %7, i32 0, i32 0
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef ptr @"??0?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@PEBU_Container_base0@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %12, ptr noundef %9) #11
  ret void
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
  %8 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 %7) #11
  invoke void @"?_Construct_empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret ptr %4

10:                                               ; preds = %1
  %11 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %11) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.std::vector", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %5, i32 0, i32 0
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 64
  ret i64 %16
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef %1) #0 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca %class.anon.18, align 1
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
  %28 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %27) #11
  store ptr %28, ptr %6, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = load i64, ptr %5, align 8
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 %30
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  store i8 0, ptr %7, align 1
  %32 = load ptr, ptr %6, align 8
  %33 = load i64, ptr %5, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 %34
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %35, ptr noundef nonnull align 1 dereferenceable(1) %7) #11
  br label %41

36:                                               ; preds = %2
  %37 = load i8, ptr %3, align 1
  %38 = getelementptr inbounds nuw %class.anon.18, ptr %8, i32 0, i32 0
  %39 = load i8, ptr %38, align 1
  %40 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??push_back@01@QEAAXD@Z@D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1, i8 %39, i8 noundef %37)
  br label %41

41:                                               ; preds = %36, %20
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %"class.std::basic_string", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %12, i32 0, i32 0
  %14 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %13) #11
  %15 = call noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, i64 noundef %10)
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??A?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"class.std::vector", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %7, i32 0, i32 0
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = load i64, ptr %3, align 8
  %13 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %11, i64 %12
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"?_Tidy@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@3@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::_Tree_const_iterator", align 8
  %8 = alloca %"class.std::_Tree_const_iterator", align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string_view", align 8
  %14 = alloca %class.anon.8, align 1
  %15 = alloca %"class.std::_Vector_iterator", align 8
  %16 = alloca %"class.std::_Vector_iterator", align 8
  %17 = alloca i1, align 1
  %18 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %19 = call noundef ptr @"??0?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %20 = load ptr, ptr %4, align 8
  %21 = call noundef i64 @"?size@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %20) #11
  invoke void @"?reserve@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %21)
          to label %22 unwind label %87

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8
  store ptr %23, ptr %6, align 8
  %24 = load ptr, ptr %6, align 8
  call void @"?begin@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr dead_on_unwind writable sret(%"class.std::_Tree_const_iterator") align 8 %7) #11
  %25 = load ptr, ptr %6, align 8
  call void @"?end@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr dead_on_unwind writable sret(%"class.std::_Tree_const_iterator") align 8 %8) #11
  br label %26

26:                                               ; preds = %40, %22
  %27 = call noundef zeroext i1 @"??8?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = call noundef nonnull align 8 dereferenceable(64) ptr @"??D?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAAEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  store ptr %30, ptr %9, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$0A@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %31) #11
  store ptr %32, ptr %10, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$00$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %33) #11
  store ptr %34, ptr %11, align 8
  %35 = load ptr, ptr %11, align 8
  %36 = load ptr, ptr %10, align 8
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %13) #11
  invoke void @"?to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %12, ptr noundef %13)
          to label %37 unwind label %87

37:                                               ; preds = %29
  %38 = invoke noundef nonnull align 8 dereferenceable(64) ptr @"??$emplace_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %39 unwind label %42

39:                                               ; preds = %37
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #11
  br label %40

40:                                               ; preds = %39
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  br label %26

42:                                               ; preds = %37
  %43 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #11 [ "funclet"(token %43) ]
  cleanupret from %43 unwind label %87

44:                                               ; preds = %26
  call void @"?end@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA?AV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr dead_on_unwind writable sret(%"class.std::_Vector_iterator") align 8 %15) #11
  call void @"?begin@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA?AV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr dead_on_unwind writable sret(%"class.std::_Vector_iterator") align 8 %16) #11
  %45 = getelementptr inbounds nuw %"class.std::_Vector_iterator", ptr %16, i32 0, i32 0
  %46 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %45, i32 0, i32 0
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %47 to i64
  %49 = getelementptr inbounds nuw %"class.std::_Vector_iterator", ptr %15, i32 0, i32 0
  %50 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %49, i32 0, i32 0
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %51 to i64
  %53 = getelementptr inbounds nuw %class.anon.8, ptr %14, i32 0, i32 0
  %54 = load i8, ptr %53, align 1
  invoke void @"??$sort@V?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(i64 %48, i64 %52, i8 %54)
          to label %55 unwind label %87

55:                                               ; preds = %44
  store i1 false, ptr %17, align 1
  %56 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  store i64 0, ptr %18, align 8
  br label %57

57:                                               ; preds = %78, %55
  %58 = load i64, ptr %18, align 8
  %59 = call noundef i64 @"?size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load i64, ptr %18, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  invoke void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef 38)
          to label %65 unwind label %85

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i64, ptr %18, align 8
  %68 = call noundef nonnull align 8 dereferenceable(64) ptr @"??A?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %67) #11
  %69 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %68, i32 0, i32 0
  %70 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %69)
          to label %71 unwind label %85

71:                                               ; preds = %66
  invoke void @"?push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef 61)
          to label %72 unwind label %85

72:                                               ; preds = %71
  %73 = load i64, ptr %18, align 8
  %74 = call noundef nonnull align 8 dereferenceable(64) ptr @"??A?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %73) #11
  %75 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %74, i32 0, i32 1
  %76 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %75)
          to label %77 unwind label %85

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load i64, ptr %18, align 8
  %80 = add i64 %79, 1
  store i64 %80, ptr %18, align 8
  br label %57, !llvm.loop !17

81:                                               ; preds = %57
  store i1 true, ptr %17, align 1
  %82 = load i1, ptr %17, align 1
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br label %84

84:                                               ; preds = %83, %81
  call void @"??1?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  ret void

85:                                               ; preds = %72, %71, %66, %64
  %86 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11 [ "funclet"(token %86) ]
  cleanupret from %86 unwind label %87

87:                                               ; preds = %85, %44, %42, %29, %2
  %88 = cleanuppad within none []
  call void @"??1?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11 [ "funclet"(token %88) ]
  cleanupret from %88 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??$emplace_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$_Emplace_one_at_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
  store ptr %11, ptr %7, align 8
  %12 = load ptr, ptr %7, align 8
  ret ptr %12
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$sort@V?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(i64 %0, i64 %1, i8 %2) #0 {
  %4 = alloca %"class.std::_Vector_iterator", align 8
  %5 = alloca %"class.std::_Vector_iterator", align 8
  %6 = alloca %class.anon.8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %class.anon.8, align 1
  %10 = getelementptr inbounds nuw %"class.std::_Vector_iterator", ptr %4, i32 0, i32 0
  %11 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %10, i32 0, i32 0
  %12 = inttoptr i64 %0 to ptr
  store ptr %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw %"class.std::_Vector_iterator", ptr %5, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %13, i32 0, i32 0
  %15 = inttoptr i64 %1 to ptr
  store ptr %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw %class.anon.8, ptr %6, i32 0, i32 0
  store i8 %2, ptr %16, align 1
  call void @"??$_Adl_verify_range@V?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@V12@@std@@YAXAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %17 = call noundef ptr @"??$_Get_unwrapped@AEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@@std@@YA?A_TAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  store ptr %17, ptr %7, align 8
  %18 = call noundef ptr @"??$_Get_unwrapped@AEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@@std@@YA?A_TAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  store ptr %18, ptr %8, align 8
  %19 = call i8 @"??$_Pass_fn@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@5@@Z@@std@@YA?A_PAEAV<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6) #11
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 64
  %26 = load ptr, ptr %8, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds nuw %class.anon.8, ptr %9, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  call void @"??$_Sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0_JV<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %27, ptr noundef %26, i64 noundef %25, i8 %29)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?canonicalizePayload@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBUDeviceRequest@1@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) #0 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca i1, align 1
  %9 = alloca %"class.std::basic_string_view", align 8
  %10 = alloca %"class.std::basic_string_view", align 8
  %11 = alloca %"class.std::basic_string_view", align 8
  %12 = alloca %"class.std::basic_string_view", align 8
  %13 = alloca %"class.std::basic_string_view", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %14, i32 0, i32 4
  %16 = call noundef i64 @"?size@?$vector@EV?$allocator@E@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %15) #11
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %17, i32 0, i32 4
  %19 = call noundef ptr @"?data@?$vector@EV?$allocator@E@std@@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 8 dereferenceable(24) %18) #11
  %20 = call noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %19, i64 noundef %16) #11
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %21, i32 0, i32 2
  call void @"?canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %22)
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %23, i32 0, i32 3
  invoke void @"?canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %25 unwind label %58

25:                                               ; preds = %2
  store i1 false, ptr %8, align 1
  %26 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %27, i32 0, i32 0
  %29 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %28) #11
  %30 = add i64 40, %29
  %31 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  %32 = add i64 %30, %31
  %33 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  %34 = add i64 %32, %33
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %35, i32 0, i32 1
  %37 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %36) #11
  %38 = add i64 %34, %37
  %39 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  %40 = add i64 %38, %39
  invoke void @"?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %40)
          to label %41 unwind label %54

41:                                               ; preds = %25
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %42, i32 0, i32 0
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %9) #11
  invoke void @"?appendLengthPrefixed@?A0x594909C8@sdep@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9)
          to label %44 unwind label %54

44:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %5, i64 16, i1 false)
  invoke void @"?appendLengthPrefixed@?A0x594909C8@sdep@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10)
          to label %45 unwind label %54

45:                                               ; preds = %44
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %11) #11
  invoke void @"?appendLengthPrefixed@?A0x594909C8@sdep@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11)
          to label %46 unwind label %54

46:                                               ; preds = %45
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %47, i32 0, i32 1
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %12) #11
  invoke void @"?appendLengthPrefixed@?A0x594909C8@sdep@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %12)
          to label %49 unwind label %54

49:                                               ; preds = %46
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %13) #11
  invoke void @"?appendLengthPrefixed@?A0x594909C8@sdep@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %13)
          to label %50 unwind label %54

50:                                               ; preds = %49
  store i1 true, ptr %8, align 1
  %51 = load i1, ptr %8, align 1
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  br label %53

53:                                               ; preds = %52, %50
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  ret void

54:                                               ; preds = %49, %46, %45, %44, %41, %25
  %55 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #11 [ "funclet"(token %55) ]
  cleanupret from %55 unwind label %56

56:                                               ; preds = %54
  %57 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #11 [ "funclet"(token %57) ]
  cleanupret from %57 unwind label %58

58:                                               ; preds = %56, %2
  %59 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #11 [ "funclet"(token %59) ]
  cleanupret from %59 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$vector@EV?$allocator@E@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.std::vector.10", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_Compressed_pair.11", ptr %5, i32 0, i32 0
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Vector_val.14", ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %"class.std::_Vector_val.14", ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  ret i64 %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?data@?$vector@EV?$allocator@E@std@@@std@@QEBAPEBEXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::vector.10", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair.11", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_Vector_val.14", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??$_Unfancy_maybe_null@E@std@@YAPEAEPEAE@Z"(ptr noundef %7) #11
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %7, i32 0, i32 1
  %11 = load i64, ptr %4, align 8
  store i64 %11, ptr %10, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca %class.anon.22, align 1
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
  %23 = getelementptr inbounds nuw %class.anon.22, ptr %6, i32 0, i32 0
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"?appendLengthPrefixed@?A0x594909C8@sdep@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca [8 x i8], align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  store i64 %7, ptr %5, align 8
  %8 = load i64, ptr %5, align 8
  %9 = lshr i64 %8, 56
  %10 = and i64 %9, 255
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 0
  store i8 %11, ptr %12, align 1
  %13 = load i64, ptr %5, align 8
  %14 = lshr i64 %13, 48
  %15 = and i64 %14, 255
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 1
  store i8 %16, ptr %17, align 1
  %18 = load i64, ptr %5, align 8
  %19 = lshr i64 %18, 40
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 2
  store i8 %21, ptr %22, align 1
  %23 = load i64, ptr %5, align 8
  %24 = lshr i64 %23, 32
  %25 = and i64 %24, 255
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 3
  store i8 %26, ptr %27, align 1
  %28 = load i64, ptr %5, align 8
  %29 = lshr i64 %28, 24
  %30 = and i64 %29, 255
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 4
  store i8 %31, ptr %32, align 1
  %33 = load i64, ptr %5, align 8
  %34 = lshr i64 %33, 16
  %35 = and i64 %34, 255
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 5
  store i8 %36, ptr %37, align 1
  %38 = load i64, ptr %5, align 8
  %39 = lshr i64 %38, 8
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 6
  store i8 %41, ptr %42, align 1
  %43 = load i64, ptr %5, align 8
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 7
  store i8 %45, ptr %46, align 1
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 0
  %49 = call noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef %48, i64 noundef 8)
  %50 = load ptr, ptr %4, align 8
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$append@V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, i8 %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"??0?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %6) #11
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %6, i32 0, i32 0
  %9 = call noundef ptr @"??0?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %8) #11
  ret ptr %6
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
define linkonce_odr dso_local noundef ptr @"??0?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %3, i32 0, i32 1
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %3, i32 0, i32 2
  store ptr null, ptr %6, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?capacity@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.std::vector", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %5, i32 0, i32 0
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 64
  ret i64 %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBAAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %7 = call noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SA_KAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6) #11
  store i64 %7, ptr %3, align 8
  %8 = call noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #11
  store i64 %8, ptr %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %10 = load i64, ptr %9, align 8
  ret i64 %10
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xlength@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@CAXXZ"() #3 comdat align 2 {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BA@FOIKENOD@vector?5too?5long?$AA@") #12
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$_Reallocate@$0A@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %12) #11
  store ptr %13, ptr %5, align 8
  %14 = getelementptr inbounds nuw %"class.std::vector", ptr %12, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %14, i32 0, i32 0
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %16, i32 0, i32 0
  store ptr %17, ptr %7, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %18, i32 0, i32 1
  store ptr %19, ptr %8, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %21 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 64
  store i64 %27, ptr %9, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = call noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
  store ptr %30, ptr %10, align 8
  %31 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", ptr %11, i32 0, i32 0
  %32 = load ptr, ptr %5, align 8
  store ptr %32, ptr %31, align 8
  %33 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", ptr %11, i32 0, i32 1
  %34 = load ptr, ptr %10, align 8
  store ptr %34, ptr %33, align 8
  %35 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", ptr %11, i32 0, i32 2
  %36 = load ptr, ptr %3, align 8
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %35, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = load ptr, ptr %10, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr @"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %43, ptr noundef %41, ptr noundef %39, ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %45 unwind label %51

45:                                               ; preds = %2
  %46 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", ptr %11, i32 0, i32 1
  store ptr null, ptr %46, align 8
  %47 = load ptr, ptr %3, align 8
  %48 = load i64, ptr %47, align 8
  %49 = load i64, ptr %9, align 8
  %50 = load ptr, ptr %10, align 8
  call void @"?_Change_array@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K1@Z"(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %50, i64 noundef %49, i64 noundef %48) #11
  call void @"??1_Simple_reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %11) #11
  ret void

51:                                               ; preds = %2
  %52 = cleanuppad within none []
  call void @"??1_Simple_reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %11) #11 [ "funclet"(token %52) ]
  cleanupret from %52 unwind to caller
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
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SA_KAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret i64 288230376151711743
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBAAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::vector", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEBAAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #1 comdat {
  %1 = alloca i64, align 8
  store i64 -1, ptr %1, align 8
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEBAAEBV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::vector", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i64, ptr %6, align 8
  %8 = call noundef ptr @"?allocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %7)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat personality ptr @__CxxFrameHandler3 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"class.std::_Uninitialized_backout_al", align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %12 = call noundef ptr @"??$_Get_unwrapped@AEBQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YA?A_TAEBQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  store ptr %12, ptr %9, align 8
  %13 = call noundef ptr @"??$_Get_unwrapped@AEBQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YA?A_TAEBQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  store ptr %13, ptr %10, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = call noundef ptr @"??0?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  br label %17

17:                                               ; preds = %24, %4
  %18 = load ptr, ptr %9, align 8
  %19 = load ptr, ptr %10, align 8
  %20 = icmp ne ptr %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load ptr, ptr %9, align 8
  invoke void @"??$_Emplace_back@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAAX$$QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(64) %22)
          to label %23 unwind label %30

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %25, i32 1
  store ptr %26, ptr %9, align 8
  br label %17, !llvm.loop !18

27:                                               ; preds = %17
  %28 = invoke noundef ptr @"?_Release@?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %29 unwind label %30

29:                                               ; preds = %27
  call void @"??1?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %11) #11
  ret ptr %28

30:                                               ; preds = %27, %21
  %31 = cleanuppad within none []
  call void @"??1?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %11) #11 [ "funclet"(token %31) ]
  cleanupret from %31 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Change_array@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K1@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #1 comdat align 2 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i64 %3, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %14) #11
  store ptr %15, ptr %9, align 8
  %16 = getelementptr inbounds nuw %"class.std::vector", ptr %14, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %16, i32 0, i32 0
  store ptr %17, ptr %10, align 8
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %18, i32 0, i32 0
  store ptr %19, ptr %11, align 8
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %20, i32 0, i32 1
  store ptr %21, ptr %12, align 8
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %22, i32 0, i32 2
  store ptr %23, ptr %13, align 8
  %24 = load ptr, ptr %10, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %24) #11
  %25 = load ptr, ptr %11, align 8
  %26 = load ptr, ptr %25, align 8
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %4
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %12, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %11, align 8
  %33 = load ptr, ptr %32, align 8
  call void @"??$_Destroy_range@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %33, ptr noundef %31, ptr noundef nonnull align 1 dereferenceable(1) %29) #11
  %34 = load ptr, ptr %9, align 8
  %35 = load ptr, ptr %13, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %11, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = ptrtoint ptr %36 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 64
  %43 = load ptr, ptr %11, align 8
  %44 = load ptr, ptr %43, align 8
  call void @"?deallocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %34, ptr noundef %44, i64 noundef %42) #11
  br label %45

45:                                               ; preds = %28, %4
  %46 = load ptr, ptr %7, align 8
  %47 = load ptr, ptr %11, align 8
  store ptr %46, ptr %47, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = load i64, ptr %6, align 8
  %50 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %48, i64 %49
  %51 = load ptr, ptr %12, align 8
  store ptr %50, ptr %51, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = load i64, ptr %5, align 8
  %54 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %52, i64 %53
  %55 = load ptr, ptr %13, align 8
  store ptr %54, ptr %55, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Simple_reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", ptr %3, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Simple_reallocation_guard", ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @"?deallocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %13, i64 noundef %11) #11
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@$00@std@@QEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = call noundef i64 @"??$_Get_size_of_n@$0EA@@std@@YA_K_K@Z"(i64 noundef %6)
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

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$0EA@@std@@YA_K_K@Z"(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  store i8 1, ptr %3, align 1
  store i64 288230376151711743, ptr %4, align 8
  %5 = load i64, ptr %2, align 8
  %6 = icmp ugt i64 %5, 288230376151711743
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #12
  unreachable

8:                                                ; preds = %1
  %9 = load i64, ptr %2, align 8
  %10 = mul i64 %9, 64
  ret i64 %10
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
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #12
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
  call void @_invoke_watson(ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0) #12
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
  %4 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #3 comdat {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  call void @_CxxThrowException(ptr %1, ptr @"_TI3?AVbad_array_new_length@std@@") #12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @_invoke_watson(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #11
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
  %7 = call noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #11
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
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  store ptr @"??_7bad_alloc@std@@6B@", ptr %5, align 8
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
  call void @__std_terminate() #14 [ "funclet"(token %12) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, i32 noundef 1) #11
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
  call void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #16
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
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #16
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

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
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #16
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
  call void @__std_terminate() #14 [ "funclet"(token %7) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(ptr noundef, i64 noundef) #6

declare dso_local void @__std_exception_destroy(ptr noundef) #7

declare dso_local void @__std_terminate()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

declare dso_local void @__std_exception_copy(ptr noundef, ptr noundef) #7

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped@AEBQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YA?A_TAEBQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::pair.7", ptr %4, i64 0
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %10, align 8
  %12 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %4, align 8
  store ptr %13, ptr %12, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$_Emplace_back@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAAX$$QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef ptr @"??$_Unfancy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %8) #11
  %10 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  call void @"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAU31@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(64) %6)
  %12 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %13, i32 1
  store ptr %14, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Release@?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %3, i32 0, i32 0
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Uninitialized_backout_al@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Uninitialized_backout_al", ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  call void @"??$_Destroy_range@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %9, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %5) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAU31@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef ptr @"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAU10@@Z"(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAU10@@Z"(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %7, i32 0, i32 0
  %9 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  %10 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %11, i32 0, i32 1
  %13 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12) #11
  ret ptr %5
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
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %11 = getelementptr inbounds nuw %"struct.std::_One_then_variadic_args_t", ptr %5, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 %12, ptr noundef nonnull align 1 dereferenceable(1) %10) #11
  %14 = getelementptr inbounds nuw %"class.std::basic_string", ptr %7, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %14, i32 0, i32 0
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %6) #11
  %16 = load ptr, ptr %3, align 8
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  ret ptr %5
}

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
  %11 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #11
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
  call void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %29) #11
  store i8 0, ptr %9, align 1
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw %"class.std::_String_val", ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds [16 x i8], ptr %31, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %9) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
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
  %5 = call noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_range@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #1 comdat personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  br label %7

7:                                                ; preds = %16, %3
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %6, align 8
  %13 = call noundef ptr @"??$_Unfancy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %12) #11
  %14 = load ptr, ptr %4, align 8
  invoke void @"??$destroy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef %13)
          to label %15 unwind label %20

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %17, i32 1
  store ptr %18, ptr %6, align 8
  br label %7, !llvm.loop !19

19:                                               ; preds = %7
  ret void

20:                                               ; preds = %11
  %21 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %21) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$destroy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  call void @"??$destroy_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef %5) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$destroy_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %3, i32 0, i32 1
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %5 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %3, i32 0, i32 0
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = mul i64 64, %8
  %10 = load ptr, ptr %5, align 8
  call void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %10, i64 noundef %9) #11
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
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %11, i64 noundef %10) #11
  ret void

12:                                               ; preds = %7
  %13 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %13) ]
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
  call void @_invoke_watson(ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0) #12
  unreachable

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8
  %30 = inttoptr i64 %29 to ptr
  %31 = load ptr, ptr %4, align 8
  store ptr %30, ptr %31, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@AEBV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %8 = alloca %"class.std::basic_string_view", align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds nuw %"class.std::basic_string", ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds nuw %"struct.std::_One_then_variadic_args_t", ptr %7, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = call noundef ptr @"??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 %13, ptr noundef nonnull align 1 dereferenceable(1) %11) #11
  %15 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %15, i64 16, i1 false)
  %16 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #11
  %17 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %16) #11
  %18 = call noundef ptr @"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #11
  invoke void @"??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %18, i64 noundef %17)
          to label %19 unwind label %20

19:                                               ; preds = %3
  ret ptr %9

20:                                               ; preds = %3
  %21 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #11 [ "funclet"(token %21) ]
  cleanupret from %21 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$transform@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@V12@V<lambda_0>@?0??to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@@std@@YA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@V10@0V10@V<lambda_0>@?0??to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@V?$basic_string_view@DU?$char_traits@D@std@@@0@@Z@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::_String_iterator") align 8 %0, i64 %1, i64 %2, i64 %3, i8 %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::_String_iterator", align 8
  %8 = alloca %"class.std::_String_iterator", align 8
  %9 = alloca %"class.std::_String_iterator", align 8
  %10 = alloca %class.anon.15, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  %14 = getelementptr inbounds nuw %"class.std::_String_iterator", ptr %7, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %14, i32 0, i32 0
  %16 = inttoptr i64 %1 to ptr
  store ptr %16, ptr %15, align 8
  %17 = getelementptr inbounds nuw %"class.std::_String_iterator", ptr %8, i32 0, i32 0
  %18 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %17, i32 0, i32 0
  %19 = inttoptr i64 %2 to ptr
  store ptr %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw %"class.std::_String_iterator", ptr %9, i32 0, i32 0
  %21 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %20, i32 0, i32 0
  %22 = inttoptr i64 %3 to ptr
  store ptr %22, ptr %21, align 8
  %23 = getelementptr inbounds nuw %class.anon.15, ptr %10, i32 0, i32 0
  store i8 %4, ptr %23, align 1
  call void @"??$_Adl_verify_range@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@V12@@std@@YAXAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %24 = call noundef ptr @"??$_Get_unwrapped@AEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@YA?A_TAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  store ptr %24, ptr %11, align 8
  %25 = call noundef ptr @"??$_Get_unwrapped@AEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@YA?A_TAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  store ptr %25, ptr %12, align 8
  %26 = call noundef i64 @"??$_Idl_distance@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@PEAD@std@@YA?A_PAEBQEAD0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %27 = call noundef ptr @"??$_Get_unwrapped_n@AEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@_J@std@@YA?A_TAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %26)
  store ptr %27, ptr %13, align 8
  br label %28

28:                                               ; preds = %37, %5
  %29 = load ptr, ptr %11, align 8
  %30 = load ptr, ptr %12, align 8
  %31 = icmp ne ptr %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load ptr, ptr %11, align 8
  %34 = load i8, ptr %33, align 1
  %35 = call noundef i8 @"??R<lambda_0>@?0??to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@4@@Z@QEBA?A?<auto>@@E@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, i8 noundef %34)
  %36 = load ptr, ptr %13, align 8
  store i8 %35, ptr %36, align 1
  br label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds nuw i8, ptr %38, i32 1
  store ptr %39, ptr %11, align 8
  %40 = load ptr, ptr %13, align 8
  %41 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %41, ptr %13, align 8
  br label %28, !llvm.loop !20

42:                                               ; preds = %28
  call void @"??$_Seek_wrapped@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@AEAPEAD@std@@YAXAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@AEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %9, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_String_iterator") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %10 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %11 = call noundef ptr @"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z"(ptr noundef %10) #11
  %12 = call noundef ptr @"??0?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %11, ptr noundef %7) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_String_iterator") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %10 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %11 = call noundef ptr @"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z"(ptr noundef %10) #11
  %12 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %13 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"class.std::_String_val", ptr %13, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  %17 = call noundef ptr @"??0?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %16, ptr noundef %7) #11
  ret void
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
  %11 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #11
  ret ptr %8
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
  %20 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #11
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  call void @"?_Xlen_string@std@@YAXXZ"() #12
  unreachable

23:                                               ; preds = %3
  %24 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #11
  store ptr %24, ptr %8, align 8
  store ptr %10, ptr %9, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 1 dereferenceable(1) %25) #11
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
  %41 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %40, ptr noundef %37, i64 noundef %36) #11
  store i8 0, ptr %12, align 1
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds nuw %"class.std::_String_val", ptr %42, i32 0, i32 0
  %44 = load i64, ptr %4, align 8
  %45 = getelementptr inbounds nuw [16 x i8], ptr %43, i64 0, i64 %44
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 1 dereferenceable(1) %12) #11
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %11) #11
  br label %69

46:                                               ; preds = %23
  %47 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #11
  %48 = load i64, ptr %4, align 8
  %49 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %48, i64 noundef 15, i64 noundef %47) #11
  store i64 %49, ptr %13, align 8
  %50 = load ptr, ptr %8, align 8
  %51 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(8) %13)
  store ptr %51, ptr %14, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds nuw %"class.std::_String_val", ptr %52, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %14) #11
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
  %63 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %62) #11
  %64 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %63, ptr noundef %61, i64 noundef %60) #11
  store i8 0, ptr %15, align 1
  %65 = load ptr, ptr %14, align 8
  %66 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %65) #11
  %67 = load i64, ptr %4, align 8
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 %67
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %68, ptr noundef nonnull align 1 dereferenceable(1) %15) #11
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %11) #11
  br label %69

69:                                               ; preds = %46, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %0) #1 comdat {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %3, i32 0, i32 0
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  ret void
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
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  %10 = call noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9) #11
  store i64 %10, ptr %3, align 8
  store i64 16, ptr %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %4, align 8
  %13 = load i64, ptr %4, align 8
  %14 = sub i64 %13, 1
  store i64 %14, ptr %6, align 8
  %15 = call noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #11
  store i64 %15, ptr %7, align 8
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  %17 = load i64, ptr %16, align 8
  ret i64 %17
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #3 comdat {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@") #12
  unreachable
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

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
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  %32 = load i64, ptr %31, align 8
  store i64 %32, ptr %4, align 8
  br label %33

33:                                               ; preds = %26, %24, %15
  %34 = load i64, ptr %4, align 8
  ret i64 %34
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
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
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
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
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
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_val", ptr %3, i32 0, i32 0
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@V12@@std@@YAXAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped@AEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@YA?A_TAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Unwrapped@?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped_n@AEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@_J@std@@YA?A_TAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #1 comdat {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  store i64 %6, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %3, align 8
  call void @"?_Verify_offset@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAX_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %8) #11
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef ptr @"?_Unwrapped@?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Idl_distance@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@PEAD@std@@YA?A_PAEBQEAD0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
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
define internal noundef i8 @"??R<lambda_0>@?0??to_lower@?A0x594909C8@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@4@@Z@QEBA?A?<auto>@@E@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef %1) #1 align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %3, align 1
  %7 = zext i8 %6 to i32
  %8 = call i32 @tolower(i32 noundef %7) #13
  %9 = trunc i32 %8 to i8
  ret i8 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Seek_wrapped@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@AEAPEAD@std@@YAXAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@AEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  call void @"?_Seek_to@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAXPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %7) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Unwrapped@?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef ptr @"??$_Unfancy_maybe_null@$$CBD@std@@YAPEBDPEBD@Z"(ptr noundef %5) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy_maybe_null@$$CBD@std@@YAPEBDPEBD@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Verify_offset@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAX_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare dso_local i32 @tolower(i32 noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Seek_to@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAXPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??$_Refancy_maybe_null@PEBD$0A@@std@@YAPEBDPEBD@Z"(ptr noundef %6) #11
  %8 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %5, i32 0, i32 0
  store ptr %7, ptr %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Refancy_maybe_null@PEBD$0A@@std@@YAPEBDPEBD@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
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
  %7 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %10) #11
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @"??0?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef ptr @"??0?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, ptr noundef %9) #11
  ret ptr %7
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
define linkonce_odr dso_local noundef ptr @"??0?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  call void @"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z"(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %10) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
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
  %7 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %10) #11
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Equal@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_NV12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %1, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %1, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = call noundef zeroext i1 @"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z"(ptr noundef %13, i64 noundef %11, ptr noundef %9, i64 noundef %7) #11
  ret i1 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat {
  %5 = alloca i1, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store i64 %3, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  %10 = load i64, ptr %8, align 8
  %11 = load i64, ptr %6, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i1 false, ptr %5, align 1
  br label %24

14:                                               ; preds = %4
  %15 = load i64, ptr %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i1 true, ptr %5, align 1
  br label %24

18:                                               ; preds = %14
  %19 = load i64, ptr %8, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %9, align 8
  %22 = call noundef i32 @"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z"(ptr noundef %21, ptr noundef %20, i64 noundef %19) #11
  %23 = icmp eq i32 %22, 0
  store i1 %23, ptr %5, align 1
  br label %24

24:                                               ; preds = %18, %17, %13
  %25 = load i1, ptr %5, align 1
  ret i1 %25
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load i64, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call i32 @memcmp(ptr noundef %9, ptr noundef %8, i64 noundef %7) #11
  ret i32 %10
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??$_Emplace_one_at_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds nuw %"class.std::vector", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %11, i32 0, i32 0
  store ptr %12, ptr %8, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %13, i32 0, i32 1
  store ptr %14, ptr %9, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ne ptr %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$_Emplace_back_with_unused_capacity@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %22)
  store ptr %24, ptr %4, align 8
  br label %31

25:                                               ; preds = %3
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr @"??$_Emplace_reallocate@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@QEAU21@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@1@Z"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %29, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %26)
  store ptr %30, ptr %4, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = load ptr, ptr %4, align 8
  ret ptr %32
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??$_Emplace_back_with_unused_capacity@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds nuw %"class.std::vector", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %11, i32 0, i32 0
  store ptr %12, ptr %7, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %13, i32 0, i32 1
  store ptr %14, ptr %8, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = load ptr, ptr %17, align 8
  call void @"??$_Construct_in_place@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@1@Z"(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %15) #11
  %19 = load ptr, ptr %8, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = load ptr, ptr %21, align 8
  call void @"?_Orphan_range@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %22, ptr noundef %20)
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %9, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %26, i32 1
  store ptr %27, ptr %25, align 8
  %28 = load ptr, ptr %9, align 8
  ret ptr %28
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Emplace_reallocate@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@QEAU21@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@1@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", align 8
  %20 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %21) #11
  store ptr %22, ptr %9, align 8
  %23 = getelementptr inbounds nuw %"class.std::vector", ptr %21, i32 0, i32 0
  %24 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %23, i32 0, i32 0
  store ptr %24, ptr %10, align 8
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %25, i32 0, i32 0
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %27, i32 0, i32 1
  store ptr %28, ptr %12, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = load ptr, ptr %11, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %29 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 64
  store i64 %35, ptr %13, align 8
  %36 = load ptr, ptr %12, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %11, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %37 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 64
  store i64 %43, ptr %14, align 8
  %44 = load i64, ptr %14, align 8
  %45 = call noundef i64 @"?max_size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %21) #11
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  call void @"?_Xlength@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@CAXXZ"() #12
  unreachable

48:                                               ; preds = %4
  %49 = load i64, ptr %14, align 8
  %50 = add i64 %49, 1
  store i64 %50, ptr %15, align 8
  %51 = load i64, ptr %15, align 8
  %52 = call noundef i64 @"?_Calculate_growth@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %51)
  store i64 %52, ptr %16, align 8
  %53 = load ptr, ptr %9, align 8
  %54 = call noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(8) %16)
  store ptr %54, ptr %17, align 8
  %55 = load ptr, ptr %17, align 8
  %56 = load i64, ptr %13, align 8
  %57 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %55, i64 %56
  %58 = getelementptr inbounds %"struct.std::pair.7", ptr %57, i64 1
  store ptr %58, ptr %18, align 8
  %59 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 0
  %60 = load ptr, ptr %9, align 8
  store ptr %60, ptr %59, align 8
  %61 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 1
  %62 = load ptr, ptr %17, align 8
  store ptr %62, ptr %61, align 8
  %63 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 2
  %64 = load i64, ptr %16, align 8
  store i64 %64, ptr %63, align 8
  %65 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 3
  %66 = load ptr, ptr %18, align 8
  store ptr %66, ptr %65, align 8
  %67 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 4
  %68 = load ptr, ptr %18, align 8
  store ptr %68, ptr %67, align 8
  %69 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 3
  store ptr %69, ptr %20, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = load ptr, ptr %6, align 8
  %72 = load ptr, ptr %17, align 8
  %73 = load i64, ptr %13, align 8
  %74 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %72, i64 %73
  %75 = call noundef ptr @"??$_Unfancy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %74) #11
  %76 = load ptr, ptr %9, align 8
  invoke void @"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@2@Z"(ptr noundef nonnull align 1 dereferenceable(1) %76, ptr noundef %75, ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %77 unwind label %123

77:                                               ; preds = %48
  %78 = load ptr, ptr %17, align 8
  %79 = load i64, ptr %13, align 8
  %80 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %78, i64 %79
  %81 = load ptr, ptr %20, align 8
  store ptr %80, ptr %81, align 8
  %82 = load ptr, ptr %7, align 8
  %83 = load ptr, ptr %12, align 8
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load ptr, ptr %9, align 8
  %88 = load ptr, ptr %17, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = load ptr, ptr %89, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr @"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %92, ptr noundef %90, ptr noundef %88, ptr noundef nonnull align 1 dereferenceable(1) %87)
          to label %94 unwind label %123

94:                                               ; preds = %86
  br label %115

95:                                               ; preds = %77
  %96 = load ptr, ptr %9, align 8
  %97 = load ptr, ptr %17, align 8
  %98 = load ptr, ptr %7, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef ptr @"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %100, ptr noundef %98, ptr noundef %97, ptr noundef nonnull align 1 dereferenceable(1) %96)
          to label %102 unwind label %123

102:                                              ; preds = %95
  %103 = load ptr, ptr %17, align 8
  %104 = load ptr, ptr %20, align 8
  store ptr %103, ptr %104, align 8
  %105 = load ptr, ptr %9, align 8
  %106 = load ptr, ptr %17, align 8
  %107 = load i64, ptr %13, align 8
  %108 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %106, i64 %107
  %109 = getelementptr inbounds %"struct.std::pair.7", ptr %108, i64 1
  %110 = load ptr, ptr %12, align 8
  %111 = load ptr, ptr %110, align 8
  %112 = load ptr, ptr %7, align 8
  %113 = invoke noundef ptr @"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %112, ptr noundef %111, ptr noundef %109, ptr noundef nonnull align 1 dereferenceable(1) %105)
          to label %114 unwind label %123

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %94
  %116 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 1
  store ptr null, ptr %116, align 8
  %117 = load i64, ptr %16, align 8
  %118 = load i64, ptr %15, align 8
  %119 = load ptr, ptr %17, align 8
  call void @"?_Change_array@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K1@Z"(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef %119, i64 noundef %118, i64 noundef %117) #11
  %120 = load ptr, ptr %17, align 8
  %121 = load i64, ptr %13, align 8
  %122 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %120, i64 %121
  call void @"??1_Reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %19) #11
  ret ptr %122

123:                                              ; preds = %102, %95, %86, %48
  %124 = cleanuppad within none []
  call void @"??1_Reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %19) #11 [ "funclet"(token %124) ]
  cleanupret from %124 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@1@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #1 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @"??$?0V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V01@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Orphan_range@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V01@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull returned align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %11 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %4, align 8
  %13 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef i64 @"?capacity@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %9) #11
  store i64 %10, ptr %6, align 8
  %11 = call noundef i64 @"?max_size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %9) #11
  store i64 %11, ptr %7, align 8
  %12 = load i64, ptr %6, align 8
  %13 = load i64, ptr %7, align 8
  %14 = load i64, ptr %6, align 8
  %15 = udiv i64 %14, 2
  %16 = sub i64 %13, %15
  %17 = icmp ugt i64 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, ptr %7, align 8
  store i64 %19, ptr %3, align 8
  br label %32

20:                                               ; preds = %2
  %21 = load i64, ptr %6, align 8
  %22 = load i64, ptr %6, align 8
  %23 = udiv i64 %22, 2
  %24 = add i64 %21, %23
  store i64 %24, ptr %8, align 8
  %25 = load i64, ptr %8, align 8
  %26 = load i64, ptr %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, ptr %4, align 8
  store i64 %29, ptr %3, align 8
  br label %32

30:                                               ; preds = %20
  %31 = load i64, ptr %8, align 8
  store i64 %31, ptr %3, align 8
  br label %32

32:                                               ; preds = %30, %28, %18
  %33 = load i64, ptr %3, align 8
  ret i64 %33
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@2@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #1 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = call noundef ptr @"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@1@Z"(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  call void @"??$_Destroy_range@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %13, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %9) #11
  %14 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %3, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %3, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call void @"?deallocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef %19, i64 noundef %17) #11
  br label %20

20:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V32@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@1@Z"(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #1 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @"??$?0V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V01@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  ret ptr %7
}

; Function Attrs: nounwind willreturn memory(read)
declare dso_local i32 @isspace(i32 noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAAEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %3, align 8
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?substr@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV12@_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::basic_string_view") align 8 %1, i64 noundef %2, i64 noundef %3) #0 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8
  store i64 %3, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i64, ptr %7, align 8
  call void @"?_Check_offset@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %10)
  %11 = load i64, ptr %6, align 8
  %12 = load i64, ptr %7, align 8
  %13 = call noundef i64 @"?_Clamp_suffix_size@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBA_K_K0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %12, i64 noundef %11) #11
  store i64 %13, ptr %6, align 8
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %9, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = load i64, ptr %7, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  %19 = call noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %18, i64 noundef %14) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Check_offset@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %3, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @"?_Xran@?$basic_string_view@DU?$char_traits@D@std@@@std@@CAXXZ"() #12
  unreachable

11:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Clamp_suffix_size@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBA_K_K0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store i64 %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %5, align 8
  %12 = sub i64 %10, %11
  store i64 %12, ptr %7, align 8
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  %14 = load i64, ptr %13, align 8
  ret i64 %14
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xran@?$basic_string_view@DU?$char_traits@D@std@@@std@@CAXXZ"() #3 comdat align 2 {
  call void @"?_Xout_of_range@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BN@OFDOGPDL@invalid?5string_view?5position?$AA@") #12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @"?_Xout_of_range@std@@YAXPEBD@Z"(ptr noundef) #4

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
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %9) #11
  %10 = load ptr, ptr %3, align 8
  %11 = call noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #11
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  store ptr %13, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw %"class.std::_String_val", ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw %"class.std::_String_val", ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %4, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef %19, i64 noundef %16) #11
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %"class.std::_String_val", ptr %21, i32 0, i32 0
  call void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %22) #11
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
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %5) #11
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
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %10, i64 noundef %9) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  ret void
}

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
  call void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %10, i64 noundef %9) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@V?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@V12@@std@@YAXAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped@AEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@@std@@YA?A_TAEBV?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Unwrapped@?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0_JV<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 {
  %5 = alloca %class.anon, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %class.anon, align 1
  %10 = alloca %class.anon, align 1
  %11 = alloca %class.anon, align 1
  %12 = alloca %"struct.std::pair.17", align 8
  %13 = alloca %class.anon, align 1
  %14 = alloca %class.anon, align 1
  %15 = alloca %class.anon, align 1
  %16 = getelementptr inbounds nuw %class.anon, ptr %5, i32 0, i32 0
  store i8 %3, ptr %16, align 1
  store i64 %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  br label %17

17:                                               ; preds = %86, %4
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 64
  %24 = icmp sle i64 %23, 32
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds nuw %class.anon, ptr %9, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  %30 = call noundef ptr @"??$_Insertion_sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %27, ptr noundef %26, i8 %29)
  br label %87

31:                                               ; preds = %17
  %32 = load i64, ptr %6, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds nuw %class.anon, ptr %10, i32 0, i32 0
  %38 = load i8, ptr %37, align 1
  call void @"??$_Make_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %36, ptr noundef %35, i8 %38)
  %39 = load ptr, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds nuw %class.anon, ptr %11, i32 0, i32 0
  %42 = load i8, ptr %41, align 1
  call void @"??$_Sort_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %40, ptr noundef %39, i8 %42)
  br label %87

43:                                               ; preds = %31
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds nuw %class.anon, ptr %13, i32 0, i32 0
  %47 = load i8, ptr %46, align 1
  call void @"??$_Partition_by_median_guess_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YA?AU?$pair@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@0@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr dead_on_unwind writable sret(%"struct.std::pair.17") align 8 %12, ptr noundef %45, ptr noundef %44, i8 %47)
  %48 = load i64, ptr %6, align 8
  %49 = ashr i64 %48, 1
  %50 = load i64, ptr %6, align 8
  %51 = ashr i64 %50, 2
  %52 = add nsw i64 %49, %51
  store i64 %52, ptr %6, align 8
  %53 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %8, align 8
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 64
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = ptrtoint ptr %60 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 64
  %67 = icmp slt i64 %59, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %43
  %69 = load i64, ptr %6, align 8
  %70 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 0
  %71 = load ptr, ptr %70, align 8
  %72 = load ptr, ptr %8, align 8
  %73 = getelementptr inbounds nuw %class.anon, ptr %14, i32 0, i32 0
  %74 = load i8, ptr %73, align 1
  call void @"??$_Sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0_JV<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %72, ptr noundef %71, i64 noundef %69, i8 %74)
  %75 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  store ptr %76, ptr %8, align 8
  br label %86

77:                                               ; preds = %43
  %78 = load i64, ptr %6, align 8
  %79 = load ptr, ptr %7, align 8
  %80 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds nuw %class.anon, ptr %15, i32 0, i32 0
  %83 = load i8, ptr %82, align 1
  call void @"??$_Sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0_JV<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %81, ptr noundef %79, i64 noundef %78, i8 %83)
  %84 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8
  store ptr %85, ptr %7, align 8
  br label %86

86:                                               ; preds = %77, %68
  br label %17, !llvm.loop !21

87:                                               ; preds = %34, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal i8 @"??$_Pass_fn@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@5@@Z@@std@@YA?A_PAEAV<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 {
  %2 = alloca %class.anon, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store i8 1, ptr %4, align 1
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %class.anon, ptr %2, i32 0, i32 0
  %7 = load i8, ptr %6, align 1
  ret i8 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Unwrapped@?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef ptr @"??$_Unfancy_maybe_null@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %5) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy_maybe_null@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??$_Insertion_sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i8 %2) #0 personality ptr @__CxxFrameHandler3 {
  %4 = alloca %class.anon, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::pair.7", align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds nuw %class.anon, ptr %4, i32 0, i32 0
  store i8 %2, ptr %11, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = icmp ne ptr %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8
  store ptr %16, ptr %7, align 8
  br label %17

17:                                               ; preds = %54, %15
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %18, i32 1
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = icmp ne ptr %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load ptr, ptr %7, align 8
  store ptr %23, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef ptr @"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %24) #11
  %26 = load ptr, ptr %6, align 8
  %27 = invoke noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %26)
          to label %28 unwind label %55

28:                                               ; preds = %22
  br i1 %27, label %29, label %38

29:                                               ; preds = %28
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %30, i32 1
  store ptr %31, ptr %8, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = invoke noundef ptr @"??$_Move_backward_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@00@Z"(ptr noundef %33, ptr noundef %32, ptr noundef %31)
          to label %35 unwind label %55

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 8
  %37 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %36, ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  br label %54

38:                                               ; preds = %28
  %39 = load ptr, ptr %8, align 8
  store ptr %39, ptr %10, align 8
  br label %40

40:                                               ; preds = %49, %38
  %41 = load ptr, ptr %10, align 8
  %42 = getelementptr inbounds %"struct.std::pair.7", ptr %41, i32 -1
  store ptr %42, ptr %10, align 8
  %43 = invoke noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %42)
          to label %44 unwind label %55

44:                                               ; preds = %40
  br i1 %43, label %45, label %51

45:                                               ; preds = %44
  %46 = load ptr, ptr %10, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %47, ptr noundef nonnull align 8 dereferenceable(64) %46) #11
  br label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %10, align 8
  store ptr %50, ptr %8, align 8
  br label %40, !llvm.loop !22

51:                                               ; preds = %44
  %52 = load ptr, ptr %8, align 8
  %53 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  br label %54

54:                                               ; preds = %51, %35
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  br label %17, !llvm.loop !23

55:                                               ; preds = %40, %29, %22
  %56 = cleanuppad within none []
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %9) #11 [ "funclet"(token %56) ]
  cleanupret from %56 unwind to caller

57:                                               ; preds = %17
  br label %58

58:                                               ; preds = %57, %3
  %59 = load ptr, ptr %5, align 8
  ret ptr %59
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Make_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i8 %2) #0 personality ptr @__CxxFrameHandler3 {
  %4 = alloca %class.anon, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.std::pair.7", align 8
  %10 = alloca %class.anon, align 1
  %11 = getelementptr inbounds nuw %class.anon, ptr %4, i32 0, i32 0
  store i8 %2, ptr %11, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 64
  store i64 %17, ptr %7, align 8
  %18 = load i64, ptr %7, align 8
  %19 = ashr i64 %18, 1
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %35, %3
  %21 = load i64, ptr %8, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i64, ptr %8, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr %8, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load i64, ptr %8, align 8
  %28 = getelementptr inbounds %"struct.std::pair.7", ptr %26, i64 %27
  %29 = call noundef ptr @"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %28) #11
  %30 = load i64, ptr %7, align 8
  %31 = load i64, ptr %8, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds nuw %class.anon, ptr %10, i32 0, i32 0
  %34 = load i8, ptr %33, align 1
  invoke void @"??$_Pop_heap_hole_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %32, i64 noundef %31, i64 noundef %30, ptr noundef nonnull align 8 dereferenceable(64) %9, i8 %34)
          to label %35 unwind label %36

35:                                               ; preds = %23
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  br label %20, !llvm.loop !24

36:                                               ; preds = %23
  %37 = cleanuppad within none []
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %9) #11 [ "funclet"(token %37) ]
  cleanupret from %37 unwind to caller

38:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Sort_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i8 %2) #0 {
  %4 = alloca %class.anon, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %class.anon, align 1
  %8 = getelementptr inbounds nuw %class.anon, ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  br label %9

9:                                                ; preds = %22, %3
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 64
  %16 = icmp sge i64 %15, 2
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds nuw %class.anon, ptr %7, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  call void @"??$_Pop_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %19, ptr noundef %18, i8 %21)
  br label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::pair.7", ptr %23, i32 -1
  store ptr %24, ptr %5, align 8
  br label %9, !llvm.loop !25

25:                                               ; preds = %9
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Partition_by_median_guess_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YA?AU?$pair@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@0@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.17") align 8 %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %class.anon, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %class.anon, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  %16 = getelementptr inbounds nuw %class.anon, ptr %6, i32 0, i32 0
  store i8 %3, ptr %16, align 1
  store ptr %2, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 64
  %24 = ashr i64 %23, 1
  %25 = getelementptr inbounds %"struct.std::pair.7", ptr %17, i64 %24
  store ptr %25, ptr %9, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = call noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %26)
  %28 = load ptr, ptr %9, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds nuw %class.anon, ptr %10, i32 0, i32 0
  %31 = load i8, ptr %30, align 1
  call void @"??$_Guess_median_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %29, ptr noundef %28, ptr noundef %27, i8 %31)
  %32 = load ptr, ptr %9, align 8
  store ptr %32, ptr %11, align 8
  %33 = load ptr, ptr %11, align 8
  %34 = call noundef ptr @"??$_Next_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %33)
  store ptr %34, ptr %12, align 8
  br label %35

35:                                               ; preds = %52, %4
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %11, align 8
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load ptr, ptr %11, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = call noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %41)
  %43 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(64) %40)
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %11, align 8
  %46 = call noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %45)
  %47 = load ptr, ptr %11, align 8
  %48 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %47, ptr noundef nonnull align 8 dereferenceable(64) %46)
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %39, %35
  %51 = phi i1 [ false, %39 ], [ false, %35 ], [ %49, %44 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr inbounds %"struct.std::pair.7", ptr %53, i32 -1
  store ptr %54, ptr %11, align 8
  br label %35, !llvm.loop !26

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %71, %55
  %57 = load ptr, ptr %12, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = icmp ult ptr %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load ptr, ptr %11, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %62, ptr noundef nonnull align 8 dereferenceable(64) %61)
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %12, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %66, ptr noundef nonnull align 8 dereferenceable(64) %65)
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %64, %60, %56
  %70 = phi i1 [ false, %60 ], [ false, %56 ], [ %68, %64 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %72, i32 1
  store ptr %73, ptr %12, align 8
  br label %56, !llvm.loop !27

74:                                               ; preds = %69
  %75 = load ptr, ptr %12, align 8
  store ptr %75, ptr %13, align 8
  %76 = load ptr, ptr %11, align 8
  store ptr %76, ptr %14, align 8
  br label %77

77:                                               ; preds = %195, %74
  br label %78

78:                                               ; preds = %107, %77
  %79 = load ptr, ptr %13, align 8
  %80 = load ptr, ptr %7, align 8
  %81 = icmp ult ptr %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load ptr, ptr %13, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %84, ptr noundef nonnull align 8 dereferenceable(64) %83)
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %107

87:                                               ; preds = %82
  %88 = load ptr, ptr %11, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %89, ptr noundef nonnull align 8 dereferenceable(64) %88)
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %110

92:                                               ; preds = %87
  %93 = load ptr, ptr %12, align 8
  %94 = load ptr, ptr %13, align 8
  %95 = icmp ne ptr %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load ptr, ptr %13, align 8
  %98 = load ptr, ptr %12, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %98, ptr noundef nonnull align 8 dereferenceable(64) %97) #11
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %99, i32 1
  store ptr %100, ptr %12, align 8
  br label %104

101:                                              ; preds = %92
  %102 = load ptr, ptr %12, align 8
  %103 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %102, i32 1
  store ptr %103, ptr %12, align 8
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %86
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %108, i32 1
  store ptr %109, ptr %13, align 8
  br label %78, !llvm.loop !28

110:                                              ; preds = %91, %78
  br label %111

111:                                              ; preds = %138, %110
  %112 = load ptr, ptr %8, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = icmp ult ptr %112, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %111
  %116 = load ptr, ptr %14, align 8
  %117 = call noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %116)
  store ptr %117, ptr %15, align 8
  %118 = load ptr, ptr %11, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %119, ptr noundef nonnull align 8 dereferenceable(64) %118)
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %138

122:                                              ; preds = %115
  %123 = load ptr, ptr %15, align 8
  %124 = load ptr, ptr %11, align 8
  %125 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %124, ptr noundef nonnull align 8 dereferenceable(64) %123)
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %141

127:                                              ; preds = %122
  %128 = load ptr, ptr %11, align 8
  %129 = getelementptr inbounds %"struct.std::pair.7", ptr %128, i32 -1
  store ptr %129, ptr %11, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = icmp ne ptr %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load ptr, ptr %15, align 8
  %134 = load ptr, ptr %11, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %134, ptr noundef nonnull align 8 dereferenceable(64) %133) #11
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %121
  %139 = load ptr, ptr %14, align 8
  %140 = getelementptr inbounds %"struct.std::pair.7", ptr %139, i32 -1
  store ptr %140, ptr %14, align 8
  br label %111, !llvm.loop !29

141:                                              ; preds = %126, %111
  %142 = load ptr, ptr %14, align 8
  %143 = load ptr, ptr %8, align 8
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load ptr, ptr %13, align 8
  %147 = load ptr, ptr %7, align 8
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call noundef ptr @"??$?0AEAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@AEAPEAU01@$0A@@?$pair@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@std@@QEAA@AEAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  ret void

151:                                              ; preds = %145, %141
  %152 = load ptr, ptr %14, align 8
  %153 = load ptr, ptr %8, align 8
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %151
  %156 = load ptr, ptr %12, align 8
  %157 = load ptr, ptr %13, align 8
  %158 = icmp ne ptr %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load ptr, ptr %12, align 8
  %161 = load ptr, ptr %11, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %161, ptr noundef nonnull align 8 dereferenceable(64) %160) #11
  br label %162

162:                                              ; preds = %159, %155
  %163 = load ptr, ptr %12, align 8
  %164 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %163, i32 1
  store ptr %164, ptr %12, align 8
  %165 = load ptr, ptr %13, align 8
  %166 = load ptr, ptr %11, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %166, ptr noundef nonnull align 8 dereferenceable(64) %165) #11
  %167 = load ptr, ptr %11, align 8
  %168 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %167, i32 1
  store ptr %168, ptr %11, align 8
  %169 = load ptr, ptr %13, align 8
  %170 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %169, i32 1
  store ptr %170, ptr %13, align 8
  br label %195

171:                                              ; preds = %151
  %172 = load ptr, ptr %13, align 8
  %173 = load ptr, ptr %7, align 8
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load ptr, ptr %14, align 8
  %177 = getelementptr inbounds %"struct.std::pair.7", ptr %176, i32 -1
  store ptr %177, ptr %14, align 8
  %178 = load ptr, ptr %11, align 8
  %179 = getelementptr inbounds %"struct.std::pair.7", ptr %178, i32 -1
  store ptr %179, ptr %11, align 8
  %180 = icmp ne ptr %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load ptr, ptr %11, align 8
  %183 = load ptr, ptr %14, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %183, ptr noundef nonnull align 8 dereferenceable(64) %182) #11
  br label %184

184:                                              ; preds = %181, %175
  %185 = load ptr, ptr %12, align 8
  %186 = getelementptr inbounds %"struct.std::pair.7", ptr %185, i32 -1
  store ptr %186, ptr %12, align 8
  %187 = load ptr, ptr %11, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %187, ptr noundef nonnull align 8 dereferenceable(64) %186) #11
  br label %194

188:                                              ; preds = %171
  %189 = load ptr, ptr %14, align 8
  %190 = getelementptr inbounds %"struct.std::pair.7", ptr %189, i32 -1
  store ptr %190, ptr %14, align 8
  %191 = load ptr, ptr %13, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %191, ptr noundef nonnull align 8 dereferenceable(64) %190) #11
  %192 = load ptr, ptr %13, align 8
  %193 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %192, i32 1
  store ptr %193, ptr %13, align 8
  br label %194

194:                                              ; preds = %188, %184
  br label %195

195:                                              ; preds = %194, %162
  br label %77, !llvm.loop !30
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::_Literal_zero", align 1
  %8 = alloca %"struct.std::strong_ordering", align 1
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds nuw %"struct.std::_Literal_zero", ptr %7, i32 0, i32 0
  store i8 undef, ptr %10, align 1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %13, i32 0, i32 0
  %15 = call i8 @"??$?__MDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AUstrong_ordering@0@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %12) #11
  %16 = getelementptr inbounds nuw %"struct.std::strong_ordering", ptr %8, i32 0, i32 0
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds nuw %"struct.std::strong_ordering", ptr %8, i32 0, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds nuw %"struct.std::_Literal_zero", ptr %7, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  %21 = call noundef zeroext i1 @"??Mstd@@YA_NUstrong_ordering@0@U_Literal_zero@0@@Z"(i8 %18, i8 %20) #11
  ret i1 %21
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Move_backward_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@00@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  br label %7

7:                                                ; preds = %11, %3
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %"struct.std::pair.7", ptr %12, i32 -1
  store ptr %13, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %"struct.std::pair.7", ptr %14, i32 -1
  store ptr %15, ptr %4, align 8
  %16 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %13) #11
  br label %7, !llvm.loop !31

17:                                               ; preds = %7
  %18 = load ptr, ptr %4, align 8
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %5, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %5, i32 0, i32 1
  %13 = call noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %11) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??Mstd@@YA_NUstrong_ordering@0@U_Literal_zero@0@@Z"(i8 %0, i8 %1) #1 comdat {
  %3 = alloca %"struct.std::strong_ordering", align 1
  %4 = alloca %"struct.std::_Literal_zero", align 1
  %5 = getelementptr inbounds nuw %"struct.std::strong_ordering", ptr %3, i32 0, i32 0
  store i8 %0, ptr %5, align 1
  %6 = getelementptr inbounds nuw %"struct.std::_Literal_zero", ptr %4, i32 0, i32 0
  store i8 %1, ptr %6, align 1
  %7 = getelementptr inbounds nuw %"struct.std::strong_ordering", ptr %3, i32 0, i32 0
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp slt i32 %9, 0
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i8 @"??$?__MDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AUstrong_ordering@0@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat {
  %3 = alloca %"struct.std::strong_ordering", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef i32 @"?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAHAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  %9 = icmp slt i32 %8, 0
  %10 = select i1 %9, i8 -1, i8 1
  %11 = icmp eq i32 %8, 0
  %12 = select i1 %11, i8 0, i8 %10
  %13 = getelementptr inbounds nuw %"struct.std::strong_ordering", ptr %3, i32 0, i32 0
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds nuw %"struct.std::strong_ordering", ptr %3, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  ret i8 %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?compare@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAHAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %"class.std::basic_string", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %12, i32 0, i32 0
  %14 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %13) #11
  %15 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"class.std::_String_val", ptr %16, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %20 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %19, i32 0, i32 0
  %21 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %20) #11
  %22 = call noundef i32 @"??$_Traits_compare@U?$char_traits@D@std@@@std@@YAHQEBD_K01@Z"(ptr noundef %21, i64 noundef %18, ptr noundef %14, i64 noundef %10) #11
  ret i32 %22
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"??$_Traits_compare@U?$char_traits@D@std@@@std@@YAHQEBD_K01@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store i64 %3, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = call noundef i32 @"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z"(ptr noundef %14, ptr noundef %13, i64 noundef %12) #11
  store i32 %15, ptr %10, align 4
  %16 = load i32, ptr %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, ptr %10, align 4
  store i32 %19, ptr %5, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load i64, ptr %8, align 8
  %22 = load i64, ptr %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, ptr %5, align 4
  br label %31

25:                                               ; preds = %20
  %26 = load i64, ptr %8, align 8
  %27 = load i64, ptr %6, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, ptr %5, align 4
  br label %31

30:                                               ; preds = %25
  store i32 0, ptr %5, align 4
  br label %31

31:                                               ; preds = %30, %29, %24, %18
  %32 = load i32, ptr %5, align 4
  ret i32 %32
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store ptr %9, ptr %3, align 8
  br label %20

13:                                               ; preds = %2
  %14 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  store ptr %14, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #11
  store ptr %16, ptr %7, align 8
  store i32 0, ptr %8, align 4
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %6, align 8
  call void @"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %17) #11
  %19 = load ptr, ptr %4, align 8
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %19) #11
  store ptr %9, ptr %3, align 8
  br label %20

20:                                               ; preds = %13, %12
  %21 = load ptr, ptr %3, align 8
  ret ptr %21
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Pop_heap_hole_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 %4) #0 {
  %6 = alloca %class.anon, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %class.anon, align 1
  %15 = getelementptr inbounds nuw %class.anon, ptr %6, i32 0, i32 0
  store i8 %4, ptr %15, align 1
  store ptr %3, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %16 = load i64, ptr %9, align 8
  store i64 %16, ptr %11, align 8
  %17 = load i64, ptr %9, align 8
  store i64 %17, ptr %12, align 8
  %18 = load i64, ptr %8, align 8
  %19 = sub nsw i64 %18, 1
  %20 = ashr i64 %19, 1
  store i64 %20, ptr %13, align 8
  br label %21

21:                                               ; preds = %40, %5
  %22 = load i64, ptr %12, align 8
  %23 = load i64, ptr %13, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load i64, ptr %12, align 8
  %27 = mul nsw i64 2, %26
  %28 = add nsw i64 %27, 2
  store i64 %28, ptr %12, align 8
  %29 = load ptr, ptr %10, align 8
  %30 = load i64, ptr %12, align 8
  %31 = sub nsw i64 %30, 1
  %32 = getelementptr inbounds %"struct.std::pair.7", ptr %29, i64 %31
  %33 = load ptr, ptr %10, align 8
  %34 = load i64, ptr %12, align 8
  %35 = getelementptr inbounds %"struct.std::pair.7", ptr %33, i64 %34
  %36 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %35, ptr noundef nonnull align 8 dereferenceable(64) %32)
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i64, ptr %12, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, ptr %12, align 8
  br label %40

40:                                               ; preds = %37, %25
  %41 = load ptr, ptr %10, align 8
  %42 = load i64, ptr %12, align 8
  %43 = getelementptr inbounds %"struct.std::pair.7", ptr %41, i64 %42
  %44 = load ptr, ptr %10, align 8
  %45 = load i64, ptr %9, align 8
  %46 = getelementptr inbounds %"struct.std::pair.7", ptr %44, i64 %45
  %47 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef nonnull align 8 dereferenceable(64) %43) #11
  %48 = load i64, ptr %12, align 8
  store i64 %48, ptr %9, align 8
  br label %21, !llvm.loop !32

49:                                               ; preds = %21
  %50 = load i64, ptr %12, align 8
  %51 = load i64, ptr %13, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i64, ptr %8, align 8
  %55 = srem i64 %54, 2
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load ptr, ptr %10, align 8
  %59 = load i64, ptr %8, align 8
  %60 = sub nsw i64 %59, 1
  %61 = getelementptr inbounds %"struct.std::pair.7", ptr %58, i64 %60
  %62 = load ptr, ptr %10, align 8
  %63 = load i64, ptr %9, align 8
  %64 = getelementptr inbounds %"struct.std::pair.7", ptr %62, i64 %63
  %65 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %64, ptr noundef nonnull align 8 dereferenceable(64) %61) #11
  %66 = load i64, ptr %8, align 8
  %67 = sub nsw i64 %66, 1
  store i64 %67, ptr %9, align 8
  br label %68

68:                                               ; preds = %57, %53, %49
  %69 = load ptr, ptr %7, align 8
  %70 = load i64, ptr %11, align 8
  %71 = load i64, ptr %9, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds nuw %class.anon, ptr %14, i32 0, i32 0
  %74 = load i8, ptr %73, align 1
  call void @"??$_Push_heap_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %72, i64 noundef %71, i64 noundef %70, ptr noundef nonnull align 8 dereferenceable(64) %69, i8 %74)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"??$_Push_heap_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 %4) #1 {
  %6 = alloca %class.anon, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds nuw %class.anon, ptr %6, i32 0, i32 0
  store i8 %4, ptr %12, align 1
  store ptr %3, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %13 = load i64, ptr %9, align 8
  %14 = sub nsw i64 %13, 1
  %15 = ashr i64 %14, 1
  store i64 %15, ptr %11, align 8
  br label %16

16:                                               ; preds = %37, %5
  %17 = load i64, ptr %8, align 8
  %18 = load i64, ptr %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %10, align 8
  %23 = load i64, ptr %11, align 8
  %24 = getelementptr inbounds %"struct.std::pair.7", ptr %22, i64 %23
  %25 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %21)
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i1 [ false, %16 ], [ %25, %20 ]
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = load ptr, ptr %10, align 8
  %30 = load i64, ptr %11, align 8
  %31 = getelementptr inbounds %"struct.std::pair.7", ptr %29, i64 %30
  %32 = load ptr, ptr %10, align 8
  %33 = load i64, ptr %9, align 8
  %34 = getelementptr inbounds %"struct.std::pair.7", ptr %32, i64 %33
  %35 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %34, ptr noundef nonnull align 8 dereferenceable(64) %31) #11
  %36 = load i64, ptr %11, align 8
  store i64 %36, ptr %9, align 8
  br label %37

37:                                               ; preds = %28
  %38 = load i64, ptr %9, align 8
  %39 = sub nsw i64 %38, 1
  %40 = ashr i64 %39, 1
  store i64 %40, ptr %11, align 8
  br label %16, !llvm.loop !33

41:                                               ; preds = %26
  %42 = load ptr, ptr %7, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = load i64, ptr %9, align 8
  %45 = getelementptr inbounds %"struct.std::pair.7", ptr %43, i64 %44
  %46 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %45, ptr noundef nonnull align 8 dereferenceable(64) %42) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Pop_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i8 %2) #0 personality ptr @__CxxFrameHandler3 {
  %4 = alloca %class.anon, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::pair.7", align 8
  %8 = alloca %class.anon, align 1
  %9 = getelementptr inbounds nuw %class.anon, ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 64
  %16 = icmp sle i64 2, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %"struct.std::pair.7", ptr %18, i32 -1
  store ptr %19, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = call noundef ptr @"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %20) #11
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %class.anon, ptr %8, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  invoke void @"??$_Pop_heap_hole_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00$$QEAU10@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %24, ptr noundef %23, ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(64) %7, i8 %26)
          to label %27 unwind label %28

27:                                               ; preds = %17
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  br label %30

28:                                               ; preds = %17
  %29 = cleanuppad within none []
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %7) #11 [ "funclet"(token %29) ]
  cleanupret from %29 unwind to caller

30:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Pop_heap_hole_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00$$QEAU10@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 %4) #0 {
  %6 = alloca %class.anon, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %class.anon, align 1
  %12 = getelementptr inbounds nuw %class.anon, ptr %6, i32 0, i32 0
  store i8 %4, ptr %12, align 1
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %13 = load ptr, ptr %10, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %13) #11
  %16 = load ptr, ptr %7, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = load ptr, ptr %10, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 64
  %23 = load ptr, ptr %10, align 8
  %24 = getelementptr inbounds nuw %class.anon, ptr %11, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @"??$_Pop_heap_hole_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %23, i64 noundef 0, i64 noundef %22, ptr noundef nonnull align 8 dereferenceable(64) %16, i8 %25)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Guess_median_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 {
  %5 = alloca %class.anon, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %class.anon, align 1
  %13 = alloca %class.anon, align 1
  %14 = alloca %class.anon, align 1
  %15 = alloca %class.anon, align 1
  %16 = alloca %class.anon, align 1
  %17 = getelementptr inbounds nuw %class.anon, ptr %5, i32 0, i32 0
  store i8 %3, ptr %17, align 1
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 64
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %9, align 8
  %25 = icmp slt i64 40, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %4
  %27 = load i64, ptr %9, align 8
  %28 = add nsw i64 %27, 1
  %29 = ashr i64 %28, 3
  store i64 %29, ptr %10, align 8
  %30 = load i64, ptr %10, align 8
  %31 = shl i64 %30, 1
  store i64 %31, ptr %11, align 8
  %32 = load ptr, ptr %8, align 8
  %33 = load i64, ptr %11, align 8
  %34 = getelementptr inbounds %"struct.std::pair.7", ptr %32, i64 %33
  %35 = load ptr, ptr %8, align 8
  %36 = load i64, ptr %10, align 8
  %37 = getelementptr inbounds %"struct.std::pair.7", ptr %35, i64 %36
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds nuw %class.anon, ptr %12, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %38, ptr noundef %37, ptr noundef %34, i8 %40)
  %41 = load ptr, ptr %7, align 8
  %42 = load i64, ptr %10, align 8
  %43 = getelementptr inbounds %"struct.std::pair.7", ptr %41, i64 %42
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = load i64, ptr %10, align 8
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds %"struct.std::pair.7", ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %class.anon, ptr %13, i32 0, i32 0
  %50 = load i8, ptr %49, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %48, ptr noundef %44, ptr noundef %43, i8 %50)
  %51 = load ptr, ptr %6, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = load i64, ptr %10, align 8
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds %"struct.std::pair.7", ptr %52, i64 %54
  %56 = load ptr, ptr %6, align 8
  %57 = load i64, ptr %11, align 8
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds %"struct.std::pair.7", ptr %56, i64 %58
  %60 = getelementptr inbounds nuw %class.anon, ptr %14, i32 0, i32 0
  %61 = load i8, ptr %60, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %59, ptr noundef %55, ptr noundef %51, i8 %61)
  %62 = load ptr, ptr %6, align 8
  %63 = load i64, ptr %10, align 8
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds %"struct.std::pair.7", ptr %62, i64 %64
  %66 = load ptr, ptr %7, align 8
  %67 = load ptr, ptr %8, align 8
  %68 = load i64, ptr %10, align 8
  %69 = getelementptr inbounds %"struct.std::pair.7", ptr %67, i64 %68
  %70 = getelementptr inbounds nuw %class.anon, ptr %15, i32 0, i32 0
  %71 = load i8, ptr %70, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %69, ptr noundef %66, ptr noundef %65, i8 %71)
  br label %78

72:                                               ; preds = %4
  %73 = load ptr, ptr %6, align 8
  %74 = load ptr, ptr %7, align 8
  %75 = load ptr, ptr %8, align 8
  %76 = getelementptr inbounds nuw %class.anon, ptr %16, i32 0, i32 0
  %77 = load i8, ptr %76, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %75, ptr noundef %74, ptr noundef %73, i8 %77)
  br label %78

78:                                               ; preds = %72, %26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::pair.7", ptr %3, i32 -1
  store ptr %4, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Next_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %3, i32 1
  store ptr %4, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  call void @"?swap@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAXAEAU12@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0AEAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@AEAPEAU01@$0A@@?$pair@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@std@@QEAA@AEAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@0@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #1 {
  %5 = alloca %class.anon, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds nuw %class.anon, ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %10)
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %7, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %14) #11
  br label %16

16:                                               ; preds = %13, %4
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull align 8 dereferenceable(64) %17)
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %6, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull align 8 dereferenceable(64) %21) #11
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_1>@?0??canonicalizeHeaders@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %23)
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load ptr, ptr %8, align 8
  %28 = load ptr, ptr %7, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %27) #11
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?swap@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAXAEAU12@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %5, i32 0, i32 0
  call void @"??$swap@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %5, i32 0, i32 1
  call void @"??$swap@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$swap@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  call void @"?swap@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?swap@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp ne ptr %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %11 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @"??$_Pocs@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %10) #11
  %12 = load ptr, ptr %3, align 8
  call void @"?_Swap_data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %12) #11
  br label %13

13:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Pocs@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Swap_data@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXAEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw %"class.std::basic_string", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %13, i32 0, i32 0
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %"class.std::basic_string", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %16, i32 0, i32 0
  store ptr %17, ptr %6, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 0
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 0
  store ptr %21, ptr %8, align 8
  %22 = getelementptr inbounds [32 x i8], ptr %9, i64 0, i64 0
  %23 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %22, ptr align 1 %23, i64 32, i1 false)
  %24 = load ptr, ptr %7, align 8
  %25 = load ptr, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %25, i64 32, i1 false)
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds [32 x i8], ptr %9, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 16 %27, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @"??0?$_Vector_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@PEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef ptr @"??0?$_Vector_const_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@PEBU_Container_base0@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, ptr noundef %9) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Vector_const_iterator@V?$_Vector_val@U?$_Simple_types@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@PEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Vector_const_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  call void @"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z"(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %10) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %6) #11
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %6, i32 0, i32 0
  %9 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #11
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
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %"class.std::_String_val", ptr %10, i32 0, i32 1
  store i64 0, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %"class.std::_String_val", ptr %12, i32 0, i32 2
  store i64 15, ptr %13, align 8
  %14 = load ptr, ptr %3, align 8
  call void @"?_Activate_SSO_buffer@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  store i8 0, ptr %5, align 1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %"class.std::_String_val", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??push_back@01@QEAAXD@Z@D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, i8 noundef %3) #0 comdat align 2 {
  %5 = alloca %class.anon.18, align 1
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
  %18 = getelementptr inbounds nuw %class.anon.18, ptr %5, i32 0, i32 0
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
  %25 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %19) #11
  %26 = load i64, ptr %10, align 8
  %27 = sub i64 %25, %26
  %28 = load i64, ptr %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #12
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
  %39 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %38) #11
  store i64 %39, ptr %13, align 8
  %40 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %19) #11
  store ptr %40, ptr %14, align 8
  %41 = load ptr, ptr %14, align 8
  %42 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %41, ptr noundef nonnull align 8 dereferenceable(8) %13)
  store ptr %42, ptr %15, align 8
  %43 = load ptr, ptr %9, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %43) #11
  %44 = load i64, ptr %11, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw %"class.std::_String_val", ptr %45, i32 0, i32 1
  store i64 %44, ptr %46, align 8
  %47 = load i64, ptr %13, align 8
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds nuw %"class.std::_String_val", ptr %48, i32 0, i32 2
  store i64 %47, ptr %49, align 8
  %50 = load ptr, ptr %15, align 8
  %51 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %50) #11
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
  %61 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %60) #11
  %62 = load ptr, ptr %16, align 8
  call void @"??R<lambda_1>@?0??push_back@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAXD@Z@SA?A?<auto>@@QEADQEBD_KD@Z"(ptr noundef %62, ptr noundef %61, i64 noundef %59, i8 noundef %58)
  %63 = load i64, ptr %12, align 8
  %64 = load ptr, ptr %17, align 8
  %65 = load ptr, ptr %14, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %65, ptr noundef %64, i64 noundef %63) #11
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
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull align 8 dereferenceable(8) %15) #11
  br label %78

78:                                               ; preds = %69, %54
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  %7 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds nuw %"class.std::_String_val", ptr %8, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %3, align 8
  %12 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %11, i64 noundef %10, i64 noundef %6) #11
  ret i64 %12
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
  %13 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %12, ptr noundef %11, i64 noundef %10) #11
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %6, align 8
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 %15
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %5) #11
  store i8 0, ptr %9, align 1
  %17 = load ptr, ptr %8, align 8
  %18 = load i64, ptr %6, align 8
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 %19
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %9) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca %class.anon.20, align 1
  store i64 %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds nuw %"class.std::basic_string", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_String_val", ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %8, align 8
  %17 = load i64, ptr %5, align 8
  %18 = getelementptr inbounds nuw %"class.std::basic_string", ptr %12, i32 0, i32 0
  %19 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds nuw %"class.std::_String_val", ptr %19, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %8, align 8
  %23 = sub i64 %21, %22
  %24 = icmp ule i64 %17, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  %26 = load i64, ptr %8, align 8
  %27 = load i64, ptr %5, align 8
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds nuw %"class.std::basic_string", ptr %12, i32 0, i32 0
  %30 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds nuw %"class.std::_String_val", ptr %30, i32 0, i32 1
  store i64 %28, ptr %31, align 8
  %32 = getelementptr inbounds nuw %"class.std::basic_string", ptr %12, i32 0, i32 0
  %33 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %32, i32 0, i32 0
  %34 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %33) #11
  store ptr %34, ptr %9, align 8
  %35 = load i64, ptr %5, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = load i64, ptr %8, align 8
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %40 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %39, ptr noundef %36, i64 noundef %35) #11
  store i8 0, ptr %10, align 1
  %41 = load ptr, ptr %9, align 8
  %42 = load i64, ptr %8, align 8
  %43 = load i64, ptr %5, align 8
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %44
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 1 dereferenceable(1) %10) #11
  store ptr %12, ptr %4, align 8
  br label %53

46:                                               ; preds = %3
  %47 = load i64, ptr %5, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = load i64, ptr %5, align 8
  %50 = getelementptr inbounds nuw %class.anon.20, ptr %11, i32 0, i32 0
  %51 = load i8, ptr %50, align 1
  %52 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %49, i8 %51, ptr noundef %48, i64 noundef %47)
  store ptr %52, ptr %4, align 8
  br label %53

53:                                               ; preds = %46, %25
  %54 = load ptr, ptr %4, align 8
  ret ptr %54
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
  %6 = alloca %class.anon.20, align 1
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = getelementptr inbounds nuw %class.anon.20, ptr %6, i32 0, i32 0
  store i8 %2, ptr %20, align 1
  store i64 %4, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds nuw %"class.std::basic_string", ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %22, i32 0, i32 0
  store ptr %23, ptr %11, align 8
  %24 = load ptr, ptr %11, align 8
  %25 = getelementptr inbounds nuw %"class.std::_String_val", ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %12, align 8
  %27 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #11
  %28 = load i64, ptr %12, align 8
  %29 = sub i64 %27, %28
  %30 = load i64, ptr %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  call void @"?_Xlen_string@std@@YAXXZ"() #12
  unreachable

33:                                               ; preds = %5
  %34 = load i64, ptr %12, align 8
  %35 = load i64, ptr %9, align 8
  %36 = add i64 %34, %35
  store i64 %36, ptr %13, align 8
  %37 = load ptr, ptr %11, align 8
  %38 = getelementptr inbounds nuw %"class.std::_String_val", ptr %37, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %14, align 8
  %40 = load i64, ptr %13, align 8
  %41 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %40) #11
  store i64 %41, ptr %15, align 8
  %42 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #11
  store ptr %42, ptr %16, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %43, ptr noundef nonnull align 8 dereferenceable(8) %15)
  store ptr %44, ptr %17, align 8
  %45 = load ptr, ptr %11, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %45) #11
  %46 = load i64, ptr %13, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = getelementptr inbounds nuw %"class.std::_String_val", ptr %47, i32 0, i32 1
  store i64 %46, ptr %48, align 8
  %49 = load i64, ptr %15, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = getelementptr inbounds nuw %"class.std::_String_val", ptr %50, i32 0, i32 2
  store i64 %49, ptr %51, align 8
  %52 = load ptr, ptr %17, align 8
  %53 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %52) #11
  store ptr %53, ptr %18, align 8
  %54 = load i64, ptr %14, align 8
  %55 = icmp ugt i64 %54, 15
  br i1 %55, label %56, label %72

56:                                               ; preds = %33
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds nuw %"class.std::_String_val", ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %19, align 8
  %60 = load i64, ptr %7, align 8
  %61 = load ptr, ptr %8, align 8
  %62 = load i64, ptr %12, align 8
  %63 = load ptr, ptr %19, align 8
  %64 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %63) #11
  %65 = load ptr, ptr %18, align 8
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@SA?A?<auto>@@QEAD0101@Z"(ptr noundef %65, ptr noundef %64, i64 noundef %62, ptr noundef %61, i64 noundef %60)
  %66 = load i64, ptr %14, align 8
  %67 = load ptr, ptr %19, align 8
  %68 = load ptr, ptr %16, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %68, ptr noundef %67, i64 noundef %66) #11
  %69 = load ptr, ptr %17, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = getelementptr inbounds nuw %"class.std::_String_val", ptr %70, i32 0, i32 0
  store ptr %69, ptr %71, align 8
  br label %82

72:                                               ; preds = %33
  %73 = load i64, ptr %7, align 8
  %74 = load ptr, ptr %8, align 8
  %75 = load i64, ptr %12, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds nuw %"class.std::_String_val", ptr %76, i32 0, i32 0
  %78 = getelementptr inbounds [16 x i8], ptr %77, i64 0, i64 0
  %79 = load ptr, ptr %18, align 8
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@SA?A?<auto>@@QEAD0101@Z"(ptr noundef %79, ptr noundef %78, i64 noundef %75, ptr noundef %74, i64 noundef %73)
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds nuw %"class.std::_String_val", ptr %80, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef nonnull align 8 dereferenceable(8) %17) #11
  br label %82

82:                                               ; preds = %72, %56
  ret ptr %21
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@SA?A?<auto>@@QEAD0101@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #1 comdat align 2 {
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  store i64 %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %12 = load i64, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %14, ptr noundef %13, i64 noundef %12) #11
  %16 = load i64, ptr %6, align 8
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %10, align 8
  %19 = load i64, ptr %8, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  %21 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %20, ptr noundef %17, i64 noundef %16) #11
  store i8 0, ptr %11, align 1
  %22 = load ptr, ptr %10, align 8
  %23 = load i64, ptr %8, align 8
  %24 = load i64, ptr %6, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 1 dereferenceable(1) %11) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %8) #11
  store ptr %9, ptr %3, align 8
  %10 = getelementptr inbounds nuw %"class.std::vector", ptr %8, i32 0, i32 0
  %11 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %10, i32 0, i32 0
  store ptr %11, ptr %4, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %12, i32 0, i32 0
  store ptr %13, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %14, i32 0, i32 1
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %16, i32 0, i32 2
  store ptr %17, ptr %7, align 8
  %18 = load ptr, ptr %4, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %18) #11
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load ptr, ptr %3, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %26, align 8
  call void @"??$_Destroy_range@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %27, ptr noundef %25, ptr noundef nonnull align 1 dereferenceable(1) %23) #11
  %28 = load ptr, ptr %3, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 64
  %37 = load ptr, ptr %5, align 8
  %38 = load ptr, ptr %37, align 8
  call void @"?deallocate@?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@QEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef %38, i64 noundef %36) #11
  %39 = load ptr, ptr %5, align 8
  store ptr null, ptr %39, align 8
  %40 = load ptr, ptr %6, align 8
  store ptr null, ptr %40, align 8
  %41 = load ptr, ptr %7, align 8
  store ptr null, ptr %41, align 8
  br label %42

42:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??$_Emplace_one_at_back@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds nuw %"class.std::vector", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %11, i32 0, i32 0
  store ptr %12, ptr %8, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %13, i32 0, i32 1
  store ptr %14, ptr %9, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ne ptr %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$_Emplace_back_with_unused_capacity@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %22)
  store ptr %24, ptr %4, align 8
  br label %31

25:                                               ; preds = %3
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr @"??$_Emplace_reallocate@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@QEAU21@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %29, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %26)
  store ptr %30, ptr %4, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = load ptr, ptr %4, align 8
  ret ptr %32
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??$_Emplace_back_with_unused_capacity@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds nuw %"class.std::vector", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %11, i32 0, i32 0
  store ptr %12, ptr %7, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %13, i32 0, i32 1
  store ptr %14, ptr %8, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr @"??$_Unfancy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %18) #11
  %20 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %10) #11
  call void @"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV32@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV41@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %21 = load ptr, ptr %8, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %23, align 8
  call void @"?_Orphan_range@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@0@Z"(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %24, ptr noundef %22)
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %9, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %28, i32 1
  store ptr %29, ptr %27, align 8
  %30 = load ptr, ptr %9, align 8
  ret ptr %30
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Emplace_reallocate@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV12@@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@QEAU21@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV31@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", align 8
  %20 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %21) #11
  store ptr %22, ptr %9, align 8
  %23 = getelementptr inbounds nuw %"class.std::vector", ptr %21, i32 0, i32 0
  %24 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %23, i32 0, i32 0
  store ptr %24, ptr %10, align 8
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %25, i32 0, i32 0
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr inbounds nuw %"class.std::_Vector_val", ptr %27, i32 0, i32 1
  store ptr %28, ptr %12, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = load ptr, ptr %11, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %29 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 64
  store i64 %35, ptr %13, align 8
  %36 = load ptr, ptr %12, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %11, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %37 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 64
  store i64 %43, ptr %14, align 8
  %44 = load i64, ptr %14, align 8
  %45 = call noundef i64 @"?max_size@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(24) %21) #11
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  call void @"?_Xlength@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@CAXXZ"() #12
  unreachable

48:                                               ; preds = %4
  %49 = load i64, ptr %14, align 8
  %50 = add i64 %49, 1
  store i64 %50, ptr %15, align 8
  %51 = load i64, ptr %15, align 8
  %52 = call noundef i64 @"?_Calculate_growth@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %51)
  store i64 %52, ptr %16, align 8
  %53 = load ptr, ptr %9, align 8
  %54 = call noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(8) %16)
  store ptr %54, ptr %17, align 8
  %55 = load ptr, ptr %17, align 8
  %56 = load i64, ptr %13, align 8
  %57 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %55, i64 %56
  %58 = getelementptr inbounds %"struct.std::pair.7", ptr %57, i64 1
  store ptr %58, ptr %18, align 8
  %59 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 0
  %60 = load ptr, ptr %9, align 8
  store ptr %60, ptr %59, align 8
  %61 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 1
  %62 = load ptr, ptr %17, align 8
  store ptr %62, ptr %61, align 8
  %63 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 2
  %64 = load i64, ptr %16, align 8
  store i64 %64, ptr %63, align 8
  %65 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 3
  %66 = load ptr, ptr %18, align 8
  store ptr %66, ptr %65, align 8
  %67 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 4
  %68 = load ptr, ptr %18, align 8
  store ptr %68, ptr %67, align 8
  %69 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 3
  store ptr %69, ptr %20, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = load ptr, ptr %6, align 8
  %72 = load ptr, ptr %17, align 8
  %73 = load i64, ptr %13, align 8
  %74 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %72, i64 %73
  %75 = call noundef ptr @"??$_Unfancy@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %74) #11
  %76 = load ptr, ptr %9, align 8
  invoke void @"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV32@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV41@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %76, ptr noundef %75, ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %77 unwind label %123

77:                                               ; preds = %48
  %78 = load ptr, ptr %17, align 8
  %79 = load i64, ptr %13, align 8
  %80 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %78, i64 %79
  %81 = load ptr, ptr %20, align 8
  store ptr %80, ptr %81, align 8
  %82 = load ptr, ptr %7, align 8
  %83 = load ptr, ptr %12, align 8
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load ptr, ptr %9, align 8
  %88 = load ptr, ptr %17, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = load ptr, ptr %89, align 8
  %91 = load ptr, ptr %11, align 8
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr @"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %92, ptr noundef %90, ptr noundef %88, ptr noundef nonnull align 1 dereferenceable(1) %87)
          to label %94 unwind label %123

94:                                               ; preds = %86
  br label %115

95:                                               ; preds = %77
  %96 = load ptr, ptr %9, align 8
  %97 = load ptr, ptr %17, align 8
  %98 = load ptr, ptr %7, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef ptr @"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %100, ptr noundef %98, ptr noundef %97, ptr noundef nonnull align 1 dereferenceable(1) %96)
          to label %102 unwind label %123

102:                                              ; preds = %95
  %103 = load ptr, ptr %17, align 8
  %104 = load ptr, ptr %20, align 8
  store ptr %103, ptr %104, align 8
  %105 = load ptr, ptr %9, align 8
  %106 = load ptr, ptr %17, align 8
  %107 = load i64, ptr %13, align 8
  %108 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %106, i64 %107
  %109 = getelementptr inbounds %"struct.std::pair.7", ptr %108, i64 1
  %110 = load ptr, ptr %12, align 8
  %111 = load ptr, ptr %110, align 8
  %112 = load ptr, ptr %7, align 8
  %113 = invoke noundef ptr @"??$_Uninitialized_move@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0PEAU10@AEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@0@@Z"(ptr noundef %112, ptr noundef %111, ptr noundef %109, ptr noundef nonnull align 1 dereferenceable(1) %105)
          to label %114 unwind label %123

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %94
  %116 = getelementptr inbounds nuw %"struct.std::vector<std::pair<std::basic_string<char>, std::basic_string<char>>>::_Reallocation_guard", ptr %19, i32 0, i32 1
  store ptr null, ptr %116, align 8
  %117 = load i64, ptr %16, align 8
  %118 = load i64, ptr %15, align 8
  %119 = load ptr, ptr %17, align 8
  call void @"?_Change_array@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@AEAAXQEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@2@_K1@Z"(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef %119, i64 noundef %118, i64 noundef %117) #11
  %120 = load ptr, ptr %17, align 8
  %121 = load i64, ptr %13, align 8
  %122 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %120, i64 %121
  call void @"??1_Reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %19) #11
  ret ptr %122

123:                                              ; preds = %102, %95, %86, %48
  %124 = cleanuppad within none []
  call void @"??1_Reallocation_guard@?$vector@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %19) #11 [ "funclet"(token %124) ]
  cleanupret from %124 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$construct@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV32@@?$_Default_allocator_traits@V?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAXAEAV?$allocator@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@1@QEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV41@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #0 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = call noundef ptr @"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV32@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV20@@Z"(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$construct_at@U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV32@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV20@@Z"(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @"??$?0V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV01@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV21@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV01@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@AEBV21@@Z"(ptr noundef nonnull returned align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %11 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %4, align 8
  %13 = invoke noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %14 unwind label %15

14:                                               ; preds = %3
  ret ptr %7

15:                                               ; preds = %3
  %16 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #11 [ "funclet"(token %16) ]
  cleanupret from %16 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds nuw %"class.std::basic_string", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  call void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %5, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %11 = getelementptr inbounds nuw %"struct.std::_One_then_variadic_args_t", ptr %6, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 %12, ptr noundef nonnull align 1 dereferenceable(1) %5) #11
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds nuw %"class.std::_String_val", ptr %16, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %"class.std::basic_string", ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %20, i32 0, i32 0
  %22 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #11
  invoke void @"??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %22, i64 noundef %18)
          to label %23 unwind label %24

23:                                               ; preds = %2
  ret ptr %7

24:                                               ; preds = %2
  %25 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #11 [ "funclet"(token %25) ]
  cleanupret from %25 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"struct.std::_Fake_allocator", align 1
  %11 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %15, i32 0, i32 0
  store ptr %16, ptr %7, align 8
  %17 = load i64, ptr %4, align 8
  %18 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  call void @"?_Xlen_string@std@@YAXXZ"() #12
  unreachable

21:                                               ; preds = %3
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  store ptr %22, ptr %8, align 8
  store ptr %10, ptr %9, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull align 1 dereferenceable(1) %23) #11
  %26 = load i64, ptr %4, align 8
  %27 = icmp ule i64 %26, 15
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i64, ptr %4, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds nuw %"class.std::_String_val", ptr %30, i32 0, i32 1
  store i64 %29, ptr %31, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds nuw %"class.std::_String_val", ptr %32, i32 0, i32 2
  store i64 15, ptr %33, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw %"class.std::_String_val", ptr %35, i32 0, i32 0
  %37 = getelementptr inbounds [16 x i8], ptr %36, i64 0, i64 0
  %38 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %37, ptr noundef %34, i64 noundef 16) #11
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %11) #11
  br label %59

39:                                               ; preds = %21
  %40 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  %41 = load i64, ptr %4, align 8
  %42 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %41, i64 noundef 15, i64 noundef %40) #11
  store i64 %42, ptr %12, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %43, ptr noundef nonnull align 8 dereferenceable(8) %12)
  store ptr %44, ptr %13, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds nuw %"class.std::_String_val", ptr %45, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  %47 = load i64, ptr %4, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr inbounds nuw %"class.std::_String_val", ptr %48, i32 0, i32 1
  store i64 %47, ptr %49, align 8
  %50 = load i64, ptr %12, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds nuw %"class.std::_String_val", ptr %51, i32 0, i32 2
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %4, align 8
  %54 = add i64 %53, 1
  %55 = load ptr, ptr %5, align 8
  %56 = load ptr, ptr %13, align 8
  %57 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %56) #11
  %58 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %57, ptr noundef %55, i64 noundef %54) #11
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %11) #11
  br label %59

59:                                               ; preds = %39, %28
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0_JV<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 %3) #0 {
  %5 = alloca %class.anon.8, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %class.anon.8, align 1
  %10 = alloca %class.anon.8, align 1
  %11 = alloca %class.anon.8, align 1
  %12 = alloca %"struct.std::pair.17", align 8
  %13 = alloca %class.anon.8, align 1
  %14 = alloca %class.anon.8, align 1
  %15 = alloca %class.anon.8, align 1
  %16 = getelementptr inbounds nuw %class.anon.8, ptr %5, i32 0, i32 0
  store i8 %3, ptr %16, align 1
  store i64 %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  br label %17

17:                                               ; preds = %86, %4
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 64
  %24 = icmp sle i64 %23, 32
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load ptr, ptr %7, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds nuw %class.anon.8, ptr %9, i32 0, i32 0
  %29 = load i8, ptr %28, align 1
  %30 = call noundef ptr @"??$_Insertion_sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %27, ptr noundef %26, i8 %29)
  br label %87

31:                                               ; preds = %17
  %32 = load i64, ptr %6, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds nuw %class.anon.8, ptr %10, i32 0, i32 0
  %38 = load i8, ptr %37, align 1
  call void @"??$_Make_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %36, ptr noundef %35, i8 %38)
  %39 = load ptr, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds nuw %class.anon.8, ptr %11, i32 0, i32 0
  %42 = load i8, ptr %41, align 1
  call void @"??$_Sort_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %40, ptr noundef %39, i8 %42)
  br label %87

43:                                               ; preds = %31
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds nuw %class.anon.8, ptr %13, i32 0, i32 0
  %47 = load i8, ptr %46, align 1
  call void @"??$_Partition_by_median_guess_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YA?AU?$pair@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@0@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr dead_on_unwind writable sret(%"struct.std::pair.17") align 8 %12, ptr noundef %45, ptr noundef %44, i8 %47)
  %48 = load i64, ptr %6, align 8
  %49 = ashr i64 %48, 1
  %50 = load i64, ptr %6, align 8
  %51 = ashr i64 %50, 2
  %52 = add nsw i64 %49, %51
  store i64 %52, ptr %6, align 8
  %53 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %8, align 8
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 64
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = ptrtoint ptr %60 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 64
  %67 = icmp slt i64 %59, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %43
  %69 = load i64, ptr %6, align 8
  %70 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 0
  %71 = load ptr, ptr %70, align 8
  %72 = load ptr, ptr %8, align 8
  %73 = getelementptr inbounds nuw %class.anon.8, ptr %14, i32 0, i32 0
  %74 = load i8, ptr %73, align 1
  call void @"??$_Sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0_JV<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %72, ptr noundef %71, i64 noundef %69, i8 %74)
  %75 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  store ptr %76, ptr %8, align 8
  br label %86

77:                                               ; preds = %43
  %78 = load i64, ptr %6, align 8
  %79 = load ptr, ptr %7, align 8
  %80 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds nuw %class.anon.8, ptr %15, i32 0, i32 0
  %83 = load i8, ptr %82, align 1
  call void @"??$_Sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0_JV<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %81, ptr noundef %79, i64 noundef %78, i8 %83)
  %84 = getelementptr inbounds nuw %"struct.std::pair.17", ptr %12, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8
  store ptr %85, ptr %7, align 8
  br label %86

86:                                               ; preds = %77, %68
  br label %17, !llvm.loop !34

87:                                               ; preds = %34, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal i8 @"??$_Pass_fn@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@5@@Z@@std@@YA?A_PAEAV<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #1 {
  %2 = alloca %class.anon.8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store i8 1, ptr %4, align 1
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %class.anon.8, ptr %2, i32 0, i32 0
  %7 = load i8, ptr %6, align 1
  ret i8 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??$_Insertion_sort_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@QEAU10@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i8 %2) #0 personality ptr @__CxxFrameHandler3 {
  %4 = alloca %class.anon.8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::pair.7", align 8
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds nuw %class.anon.8, ptr %4, i32 0, i32 0
  store i8 %2, ptr %11, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = icmp ne ptr %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8
  store ptr %16, ptr %7, align 8
  br label %17

17:                                               ; preds = %53, %15
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %18, i32 1
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = icmp ne ptr %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = load ptr, ptr %7, align 8
  store ptr %23, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef ptr @"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %24) #11
  %26 = load ptr, ptr %6, align 8
  %27 = invoke noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %26)
          to label %28 unwind label %54

28:                                               ; preds = %22
  br i1 %27, label %29, label %37

29:                                               ; preds = %28
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %30, i32 1
  store ptr %31, ptr %8, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = call noundef ptr @"??$_Move_backward_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@00@Z"(ptr noundef %33, ptr noundef %32, ptr noundef %31)
  %35 = load ptr, ptr %6, align 8
  %36 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %35, ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  br label %53

37:                                               ; preds = %28
  %38 = load ptr, ptr %8, align 8
  store ptr %38, ptr %10, align 8
  br label %39

39:                                               ; preds = %48, %37
  %40 = load ptr, ptr %10, align 8
  %41 = getelementptr inbounds %"struct.std::pair.7", ptr %40, i32 -1
  store ptr %41, ptr %10, align 8
  %42 = invoke noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %41)
          to label %43 unwind label %54

43:                                               ; preds = %39
  br i1 %42, label %44, label %50

44:                                               ; preds = %43
  %45 = load ptr, ptr %10, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef nonnull align 8 dereferenceable(64) %45) #11
  br label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %10, align 8
  store ptr %49, ptr %8, align 8
  br label %39, !llvm.loop !35

50:                                               ; preds = %43
  %51 = load ptr, ptr %8, align 8
  %52 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  br label %53

53:                                               ; preds = %50, %29
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  br label %17, !llvm.loop !36

54:                                               ; preds = %39, %22
  %55 = cleanuppad within none []
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %9) #11 [ "funclet"(token %55) ]
  cleanupret from %55 unwind to caller

56:                                               ; preds = %17
  br label %57

57:                                               ; preds = %56, %3
  %58 = load ptr, ptr %5, align 8
  ret ptr %58
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Make_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i8 %2) #0 personality ptr @__CxxFrameHandler3 {
  %4 = alloca %class.anon.8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.std::pair.7", align 8
  %10 = alloca %class.anon.8, align 1
  %11 = getelementptr inbounds nuw %class.anon.8, ptr %4, i32 0, i32 0
  store i8 %2, ptr %11, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 64
  store i64 %17, ptr %7, align 8
  %18 = load i64, ptr %7, align 8
  %19 = ashr i64 %18, 1
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %35, %3
  %21 = load i64, ptr %8, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i64, ptr %8, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr %8, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = load i64, ptr %8, align 8
  %28 = getelementptr inbounds %"struct.std::pair.7", ptr %26, i64 %27
  %29 = call noundef ptr @"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %28) #11
  %30 = load i64, ptr %7, align 8
  %31 = load i64, ptr %8, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds nuw %class.anon.8, ptr %10, i32 0, i32 0
  %34 = load i8, ptr %33, align 1
  invoke void @"??$_Pop_heap_hole_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %32, i64 noundef %31, i64 noundef %30, ptr noundef nonnull align 8 dereferenceable(64) %9, i8 %34)
          to label %35 unwind label %36

35:                                               ; preds = %23
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %9) #11
  br label %20, !llvm.loop !37

36:                                               ; preds = %23
  %37 = cleanuppad within none []
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %9) #11 [ "funclet"(token %37) ]
  cleanupret from %37 unwind to caller

38:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Sort_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i8 %2) #0 {
  %4 = alloca %class.anon.8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %class.anon.8, align 1
  %8 = getelementptr inbounds nuw %class.anon.8, ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  br label %9

9:                                                ; preds = %22, %3
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 64
  %16 = icmp sge i64 %15, 2
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds nuw %class.anon.8, ptr %7, i32 0, i32 0
  %21 = load i8, ptr %20, align 1
  call void @"??$_Pop_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %19, ptr noundef %18, i8 %21)
  br label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::pair.7", ptr %23, i32 -1
  store ptr %24, ptr %5, align 8
  br label %9, !llvm.loop !38

25:                                               ; preds = %9
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Partition_by_median_guess_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YA?AU?$pair@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@0@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.17") align 8 %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %class.anon.8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %class.anon.8, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  %16 = getelementptr inbounds nuw %class.anon.8, ptr %6, i32 0, i32 0
  store i8 %3, ptr %16, align 1
  store ptr %2, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 64
  %24 = ashr i64 %23, 1
  %25 = getelementptr inbounds %"struct.std::pair.7", ptr %17, i64 %24
  store ptr %25, ptr %9, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = call noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %26)
  %28 = load ptr, ptr %9, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds nuw %class.anon.8, ptr %10, i32 0, i32 0
  %31 = load i8, ptr %30, align 1
  call void @"??$_Guess_median_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %29, ptr noundef %28, ptr noundef %27, i8 %31)
  %32 = load ptr, ptr %9, align 8
  store ptr %32, ptr %11, align 8
  %33 = load ptr, ptr %11, align 8
  %34 = call noundef ptr @"??$_Next_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %33)
  store ptr %34, ptr %12, align 8
  br label %35

35:                                               ; preds = %52, %4
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %11, align 8
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load ptr, ptr %11, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = call noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %41)
  %43 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(64) %40)
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %11, align 8
  %46 = call noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %45)
  %47 = load ptr, ptr %11, align 8
  %48 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %47, ptr noundef nonnull align 8 dereferenceable(64) %46)
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %39, %35
  %51 = phi i1 [ false, %39 ], [ false, %35 ], [ %49, %44 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr inbounds %"struct.std::pair.7", ptr %53, i32 -1
  store ptr %54, ptr %11, align 8
  br label %35, !llvm.loop !39

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %71, %55
  %57 = load ptr, ptr %12, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = icmp ult ptr %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load ptr, ptr %11, align 8
  %62 = load ptr, ptr %12, align 8
  %63 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %62, ptr noundef nonnull align 8 dereferenceable(64) %61)
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %12, align 8
  %66 = load ptr, ptr %11, align 8
  %67 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %66, ptr noundef nonnull align 8 dereferenceable(64) %65)
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %64, %60, %56
  %70 = phi i1 [ false, %60 ], [ false, %56 ], [ %68, %64 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load ptr, ptr %12, align 8
  %73 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %72, i32 1
  store ptr %73, ptr %12, align 8
  br label %56, !llvm.loop !40

74:                                               ; preds = %69
  %75 = load ptr, ptr %12, align 8
  store ptr %75, ptr %13, align 8
  %76 = load ptr, ptr %11, align 8
  store ptr %76, ptr %14, align 8
  br label %77

77:                                               ; preds = %195, %74
  br label %78

78:                                               ; preds = %107, %77
  %79 = load ptr, ptr %13, align 8
  %80 = load ptr, ptr %7, align 8
  %81 = icmp ult ptr %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load ptr, ptr %13, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %84, ptr noundef nonnull align 8 dereferenceable(64) %83)
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %107

87:                                               ; preds = %82
  %88 = load ptr, ptr %11, align 8
  %89 = load ptr, ptr %13, align 8
  %90 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %89, ptr noundef nonnull align 8 dereferenceable(64) %88)
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %110

92:                                               ; preds = %87
  %93 = load ptr, ptr %12, align 8
  %94 = load ptr, ptr %13, align 8
  %95 = icmp ne ptr %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load ptr, ptr %13, align 8
  %98 = load ptr, ptr %12, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %98, ptr noundef nonnull align 8 dereferenceable(64) %97) #11
  %99 = load ptr, ptr %12, align 8
  %100 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %99, i32 1
  store ptr %100, ptr %12, align 8
  br label %104

101:                                              ; preds = %92
  %102 = load ptr, ptr %12, align 8
  %103 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %102, i32 1
  store ptr %103, ptr %12, align 8
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %86
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %108, i32 1
  store ptr %109, ptr %13, align 8
  br label %78, !llvm.loop !41

110:                                              ; preds = %91, %78
  br label %111

111:                                              ; preds = %138, %110
  %112 = load ptr, ptr %8, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = icmp ult ptr %112, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %111
  %116 = load ptr, ptr %14, align 8
  %117 = call noundef ptr @"??$_Prev_iter@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@YAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@PEAU10@@Z"(ptr noundef %116)
  store ptr %117, ptr %15, align 8
  %118 = load ptr, ptr %11, align 8
  %119 = load ptr, ptr %15, align 8
  %120 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %119, ptr noundef nonnull align 8 dereferenceable(64) %118)
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %138

122:                                              ; preds = %115
  %123 = load ptr, ptr %15, align 8
  %124 = load ptr, ptr %11, align 8
  %125 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %124, ptr noundef nonnull align 8 dereferenceable(64) %123)
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %141

127:                                              ; preds = %122
  %128 = load ptr, ptr %11, align 8
  %129 = getelementptr inbounds %"struct.std::pair.7", ptr %128, i32 -1
  store ptr %129, ptr %11, align 8
  %130 = load ptr, ptr %15, align 8
  %131 = icmp ne ptr %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load ptr, ptr %15, align 8
  %134 = load ptr, ptr %11, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %134, ptr noundef nonnull align 8 dereferenceable(64) %133) #11
  br label %135

135:                                              ; preds = %132, %127
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %121
  %139 = load ptr, ptr %14, align 8
  %140 = getelementptr inbounds %"struct.std::pair.7", ptr %139, i32 -1
  store ptr %140, ptr %14, align 8
  br label %111, !llvm.loop !42

141:                                              ; preds = %126, %111
  %142 = load ptr, ptr %14, align 8
  %143 = load ptr, ptr %8, align 8
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load ptr, ptr %13, align 8
  %147 = load ptr, ptr %7, align 8
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call noundef ptr @"??$?0AEAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@AEAPEAU01@$0A@@?$pair@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAU12@@std@@QEAA@AEAPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  ret void

151:                                              ; preds = %145, %141
  %152 = load ptr, ptr %14, align 8
  %153 = load ptr, ptr %8, align 8
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %151
  %156 = load ptr, ptr %12, align 8
  %157 = load ptr, ptr %13, align 8
  %158 = icmp ne ptr %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load ptr, ptr %12, align 8
  %161 = load ptr, ptr %11, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %161, ptr noundef nonnull align 8 dereferenceable(64) %160) #11
  br label %162

162:                                              ; preds = %159, %155
  %163 = load ptr, ptr %12, align 8
  %164 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %163, i32 1
  store ptr %164, ptr %12, align 8
  %165 = load ptr, ptr %13, align 8
  %166 = load ptr, ptr %11, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %166, ptr noundef nonnull align 8 dereferenceable(64) %165) #11
  %167 = load ptr, ptr %11, align 8
  %168 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %167, i32 1
  store ptr %168, ptr %11, align 8
  %169 = load ptr, ptr %13, align 8
  %170 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %169, i32 1
  store ptr %170, ptr %13, align 8
  br label %195

171:                                              ; preds = %151
  %172 = load ptr, ptr %13, align 8
  %173 = load ptr, ptr %7, align 8
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load ptr, ptr %14, align 8
  %177 = getelementptr inbounds %"struct.std::pair.7", ptr %176, i32 -1
  store ptr %177, ptr %14, align 8
  %178 = load ptr, ptr %11, align 8
  %179 = getelementptr inbounds %"struct.std::pair.7", ptr %178, i32 -1
  store ptr %179, ptr %11, align 8
  %180 = icmp ne ptr %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load ptr, ptr %11, align 8
  %183 = load ptr, ptr %14, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %183, ptr noundef nonnull align 8 dereferenceable(64) %182) #11
  br label %184

184:                                              ; preds = %181, %175
  %185 = load ptr, ptr %12, align 8
  %186 = getelementptr inbounds %"struct.std::pair.7", ptr %185, i32 -1
  store ptr %186, ptr %12, align 8
  %187 = load ptr, ptr %11, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %187, ptr noundef nonnull align 8 dereferenceable(64) %186) #11
  br label %194

188:                                              ; preds = %171
  %189 = load ptr, ptr %14, align 8
  %190 = getelementptr inbounds %"struct.std::pair.7", ptr %189, i32 -1
  store ptr %190, ptr %14, align 8
  %191 = load ptr, ptr %13, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %191, ptr noundef nonnull align 8 dereferenceable(64) %190) #11
  %192 = load ptr, ptr %13, align 8
  %193 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %192, i32 1
  store ptr %193, ptr %13, align 8
  br label %194

194:                                              ; preds = %188, %184
  br label %195

195:                                              ; preds = %194, %162
  br label %77, !llvm.loop !43
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::_Literal_zero", align 1
  %8 = alloca %"struct.std::strong_ordering", align 1
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds nuw %"struct.std::_Literal_zero", ptr %7, i32 0, i32 0
  store i8 undef, ptr %10, align 1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %"struct.std::pair.7", ptr %13, i32 0, i32 0
  %15 = call i8 @"??$?__MDU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA?AUstrong_ordering@0@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %12) #11
  %16 = getelementptr inbounds nuw %"struct.std::strong_ordering", ptr %8, i32 0, i32 0
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds nuw %"struct.std::strong_ordering", ptr %8, i32 0, i32 0
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds nuw %"struct.std::_Literal_zero", ptr %7, i32 0, i32 0
  %20 = load i8, ptr %19, align 1
  %21 = call noundef zeroext i1 @"??Mstd@@YA_NUstrong_ordering@0@U_Literal_zero@0@@Z"(i8 %18, i8 %20) #11
  ret i1 %21
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Pop_heap_hole_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 %4) #0 {
  %6 = alloca %class.anon.8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %class.anon.8, align 1
  %15 = getelementptr inbounds nuw %class.anon.8, ptr %6, i32 0, i32 0
  store i8 %4, ptr %15, align 1
  store ptr %3, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %16 = load i64, ptr %9, align 8
  store i64 %16, ptr %11, align 8
  %17 = load i64, ptr %9, align 8
  store i64 %17, ptr %12, align 8
  %18 = load i64, ptr %8, align 8
  %19 = sub nsw i64 %18, 1
  %20 = ashr i64 %19, 1
  store i64 %20, ptr %13, align 8
  br label %21

21:                                               ; preds = %40, %5
  %22 = load i64, ptr %12, align 8
  %23 = load i64, ptr %13, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load i64, ptr %12, align 8
  %27 = mul nsw i64 2, %26
  %28 = add nsw i64 %27, 2
  store i64 %28, ptr %12, align 8
  %29 = load ptr, ptr %10, align 8
  %30 = load i64, ptr %12, align 8
  %31 = sub nsw i64 %30, 1
  %32 = getelementptr inbounds %"struct.std::pair.7", ptr %29, i64 %31
  %33 = load ptr, ptr %10, align 8
  %34 = load i64, ptr %12, align 8
  %35 = getelementptr inbounds %"struct.std::pair.7", ptr %33, i64 %34
  %36 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %35, ptr noundef nonnull align 8 dereferenceable(64) %32)
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i64, ptr %12, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, ptr %12, align 8
  br label %40

40:                                               ; preds = %37, %25
  %41 = load ptr, ptr %10, align 8
  %42 = load i64, ptr %12, align 8
  %43 = getelementptr inbounds %"struct.std::pair.7", ptr %41, i64 %42
  %44 = load ptr, ptr %10, align 8
  %45 = load i64, ptr %9, align 8
  %46 = getelementptr inbounds %"struct.std::pair.7", ptr %44, i64 %45
  %47 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef nonnull align 8 dereferenceable(64) %43) #11
  %48 = load i64, ptr %12, align 8
  store i64 %48, ptr %9, align 8
  br label %21, !llvm.loop !44

49:                                               ; preds = %21
  %50 = load i64, ptr %12, align 8
  %51 = load i64, ptr %13, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i64, ptr %8, align 8
  %55 = srem i64 %54, 2
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load ptr, ptr %10, align 8
  %59 = load i64, ptr %8, align 8
  %60 = sub nsw i64 %59, 1
  %61 = getelementptr inbounds %"struct.std::pair.7", ptr %58, i64 %60
  %62 = load ptr, ptr %10, align 8
  %63 = load i64, ptr %9, align 8
  %64 = getelementptr inbounds %"struct.std::pair.7", ptr %62, i64 %63
  %65 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %64, ptr noundef nonnull align 8 dereferenceable(64) %61) #11
  %66 = load i64, ptr %8, align 8
  %67 = sub nsw i64 %66, 1
  store i64 %67, ptr %9, align 8
  br label %68

68:                                               ; preds = %57, %53, %49
  %69 = load ptr, ptr %7, align 8
  %70 = load i64, ptr %11, align 8
  %71 = load i64, ptr %9, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = getelementptr inbounds nuw %class.anon.8, ptr %14, i32 0, i32 0
  %74 = load i8, ptr %73, align 1
  call void @"??$_Push_heap_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %72, i64 noundef %71, i64 noundef %70, ptr noundef nonnull align 8 dereferenceable(64) %69, i8 %74)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"??$_Push_heap_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 %4) #1 {
  %6 = alloca %class.anon.8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds nuw %class.anon.8, ptr %6, i32 0, i32 0
  store i8 %4, ptr %12, align 1
  store ptr %3, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %13 = load i64, ptr %9, align 8
  %14 = sub nsw i64 %13, 1
  %15 = ashr i64 %14, 1
  store i64 %15, ptr %11, align 8
  br label %16

16:                                               ; preds = %37, %5
  %17 = load i64, ptr %8, align 8
  %18 = load i64, ptr %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %10, align 8
  %23 = load i64, ptr %11, align 8
  %24 = getelementptr inbounds %"struct.std::pair.7", ptr %22, i64 %23
  %25 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %21)
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i1 [ false, %16 ], [ %25, %20 ]
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = load ptr, ptr %10, align 8
  %30 = load i64, ptr %11, align 8
  %31 = getelementptr inbounds %"struct.std::pair.7", ptr %29, i64 %30
  %32 = load ptr, ptr %10, align 8
  %33 = load i64, ptr %9, align 8
  %34 = getelementptr inbounds %"struct.std::pair.7", ptr %32, i64 %33
  %35 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %34, ptr noundef nonnull align 8 dereferenceable(64) %31) #11
  %36 = load i64, ptr %11, align 8
  store i64 %36, ptr %9, align 8
  br label %37

37:                                               ; preds = %28
  %38 = load i64, ptr %9, align 8
  %39 = sub nsw i64 %38, 1
  %40 = ashr i64 %39, 1
  store i64 %40, ptr %11, align 8
  br label %16, !llvm.loop !45

41:                                               ; preds = %26
  %42 = load ptr, ptr %7, align 8
  %43 = load ptr, ptr %10, align 8
  %44 = load i64, ptr %9, align 8
  %45 = getelementptr inbounds %"struct.std::pair.7", ptr %43, i64 %44
  %46 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %45, ptr noundef nonnull align 8 dereferenceable(64) %42) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Pop_heap_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, i8 %2) #0 personality ptr @__CxxFrameHandler3 {
  %4 = alloca %class.anon.8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::pair.7", align 8
  %8 = alloca %class.anon.8, align 1
  %9 = getelementptr inbounds nuw %class.anon.8, ptr %4, i32 0, i32 0
  store i8 %2, ptr %9, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 64
  %16 = icmp sle i64 2, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %"struct.std::pair.7", ptr %18, i32 -1
  store ptr %19, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = call noundef ptr @"??0?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %20) #11
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %class.anon.8, ptr %8, i32 0, i32 0
  %26 = load i8, ptr %25, align 1
  invoke void @"??$_Pop_heap_hole_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00$$QEAU10@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %24, ptr noundef %23, ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(64) %7, i8 %26)
          to label %27 unwind label %28

27:                                               ; preds = %17
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  br label %30

28:                                               ; preds = %17
  %29 = cleanuppad within none []
  call void @"??1?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(64) %7) #11 [ "funclet"(token %29) ]
  cleanupret from %29 unwind to caller

30:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Pop_heap_hole_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00$$QEAU10@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 %4) #0 {
  %6 = alloca %class.anon.8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %class.anon.8, align 1
  %12 = getelementptr inbounds nuw %class.anon.8, ptr %6, i32 0, i32 0
  store i8 %4, ptr %12, align 1
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %13 = load ptr, ptr %10, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = call noundef nonnull align 8 dereferenceable(64) ptr @"??$?4U?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@$0A@@?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@QEAAAEAU01@$$QEAU01@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %13) #11
  %16 = load ptr, ptr %7, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = load ptr, ptr %10, align 8
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 64
  %23 = load ptr, ptr %10, align 8
  %24 = getelementptr inbounds nuw %class.anon.8, ptr %11, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  call void @"??$_Pop_heap_hole_by_index@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U12@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@_J1$$QEAU10@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %23, i64 noundef 0, i64 noundef %22, ptr noundef nonnull align 8 dereferenceable(64) %16, i8 %25)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"??$_Guess_median_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #0 {
  %5 = alloca %class.anon.8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %class.anon.8, align 1
  %13 = alloca %class.anon.8, align 1
  %14 = alloca %class.anon.8, align 1
  %15 = alloca %class.anon.8, align 1
  %16 = alloca %class.anon.8, align 1
  %17 = getelementptr inbounds nuw %class.anon.8, ptr %5, i32 0, i32 0
  store i8 %3, ptr %17, align 1
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 64
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %9, align 8
  %25 = icmp slt i64 40, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %4
  %27 = load i64, ptr %9, align 8
  %28 = add nsw i64 %27, 1
  %29 = ashr i64 %28, 3
  store i64 %29, ptr %10, align 8
  %30 = load i64, ptr %10, align 8
  %31 = shl i64 %30, 1
  store i64 %31, ptr %11, align 8
  %32 = load ptr, ptr %8, align 8
  %33 = load i64, ptr %11, align 8
  %34 = getelementptr inbounds %"struct.std::pair.7", ptr %32, i64 %33
  %35 = load ptr, ptr %8, align 8
  %36 = load i64, ptr %10, align 8
  %37 = getelementptr inbounds %"struct.std::pair.7", ptr %35, i64 %36
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds nuw %class.anon.8, ptr %12, i32 0, i32 0
  %40 = load i8, ptr %39, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %38, ptr noundef %37, ptr noundef %34, i8 %40)
  %41 = load ptr, ptr %7, align 8
  %42 = load i64, ptr %10, align 8
  %43 = getelementptr inbounds %"struct.std::pair.7", ptr %41, i64 %42
  %44 = load ptr, ptr %7, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = load i64, ptr %10, align 8
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds %"struct.std::pair.7", ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %class.anon.8, ptr %13, i32 0, i32 0
  %50 = load i8, ptr %49, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %48, ptr noundef %44, ptr noundef %43, i8 %50)
  %51 = load ptr, ptr %6, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = load i64, ptr %10, align 8
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds %"struct.std::pair.7", ptr %52, i64 %54
  %56 = load ptr, ptr %6, align 8
  %57 = load i64, ptr %11, align 8
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds %"struct.std::pair.7", ptr %56, i64 %58
  %60 = getelementptr inbounds nuw %class.anon.8, ptr %14, i32 0, i32 0
  %61 = load i8, ptr %60, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %59, ptr noundef %55, ptr noundef %51, i8 %61)
  %62 = load ptr, ptr %6, align 8
  %63 = load i64, ptr %10, align 8
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds %"struct.std::pair.7", ptr %62, i64 %64
  %66 = load ptr, ptr %7, align 8
  %67 = load ptr, ptr %8, align 8
  %68 = load i64, ptr %10, align 8
  %69 = getelementptr inbounds %"struct.std::pair.7", ptr %67, i64 %68
  %70 = getelementptr inbounds nuw %class.anon.8, ptr %15, i32 0, i32 0
  %71 = load i8, ptr %70, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %69, ptr noundef %66, ptr noundef %65, i8 %71)
  br label %78

72:                                               ; preds = %4
  %73 = load ptr, ptr %6, align 8
  %74 = load ptr, ptr %7, align 8
  %75 = load ptr, ptr %8, align 8
  %76 = getelementptr inbounds nuw %class.anon.8, ptr %16, i32 0, i32 0
  %77 = load i8, ptr %76, align 1
  call void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %75, ptr noundef %74, ptr noundef %73, i8 %77)
  br label %78

78:                                               ; preds = %72, %26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"??$_Med3_unchecked@PEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@2@@Z@@std@@YAXPEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@00V<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@0@@Z@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 %3) #1 {
  %5 = alloca %class.anon.8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds nuw %class.anon.8, ptr %5, i32 0, i32 0
  store i8 %3, ptr %9, align 1
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %10)
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %7, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %14) #11
  br label %16

16:                                               ; preds = %13, %4
  %17 = load ptr, ptr %7, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull align 8 dereferenceable(64) %17)
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  %22 = load ptr, ptr %6, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull align 8 dereferenceable(64) %21) #11
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = call noundef zeroext i1 @"??$?RU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@U01@@<lambda_2>@?0??canonicalizeQuery@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBV?$map@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@@4@@Z@QEBA?A?<auto>@@AEBU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@4@1@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull align 8 dereferenceable(64) %23)
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load ptr, ptr %8, align 8
  %28 = load ptr, ptr %7, align 8
  call void @"??$swap@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@$0A@@std@@YAXAEAU?$pair@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %27) #11
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy_maybe_null@E@std@@YAPEAEPEAE@Z"(ptr noundef %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@$$V@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??reserve@01@QEAAX0@Z@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2) #0 comdat align 2 {
  %4 = alloca %class.anon.22, align 1
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
  %16 = getelementptr inbounds nuw %class.anon.22, ptr %4, i32 0, i32 0
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
  %23 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #11
  %24 = load i64, ptr %8, align 8
  %25 = sub i64 %23, %24
  %26 = load i64, ptr %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  call void @"?_Xlen_string@std@@YAXXZ"() #12
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
  %37 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %36) #11
  store i64 %37, ptr %11, align 8
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #11
  store ptr %38, ptr %12, align 8
  %39 = load ptr, ptr %12, align 8
  %40 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 8 dereferenceable(8) %11)
  store ptr %40, ptr %13, align 8
  %41 = load ptr, ptr %7, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %41) #11
  %42 = load i64, ptr %9, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw %"class.std::_String_val", ptr %43, i32 0, i32 1
  store i64 %42, ptr %44, align 8
  %45 = load i64, ptr %11, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds nuw %"class.std::_String_val", ptr %46, i32 0, i32 2
  store i64 %45, ptr %47, align 8
  %48 = load ptr, ptr %13, align 8
  %49 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %48) #11
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
  %58 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %57) #11
  %59 = load ptr, ptr %14, align 8
  call void @"??R<lambda_1>@?0??reserve@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_K@Z@SA?A?<auto>@@QEADQEBD0@Z"(ptr noundef %59, ptr noundef %58, i64 noundef %56)
  %60 = load i64, ptr %10, align 8
  %61 = load ptr, ptr %15, align 8
  %62 = load ptr, ptr %12, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %62, ptr noundef %61, i64 noundef %60) #11
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
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  br label %74

74:                                               ; preds = %66, %52
  ret ptr %17
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
  %11 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %10, ptr noundef %9, i64 noundef %8) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$append@V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %7, i64 16, i1 false)
  %8 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  %9 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %8) #11
  %10 = call noundef ptr @"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %10, i64 noundef %9)
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Get_scary@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@IEBAPEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Tree", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair.3", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_Compressed_pair.4", ptr %5, i32 0, i32 0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @"??0?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef ptr @"??0?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, ptr noundef %9) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  call void @"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z"(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %10) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %8, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %30, %12
  %14 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %4, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %3, align 8
  %18 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %17, i32 0, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %4, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %23, %26
  br label %28

28:                                               ; preds = %21, %13
  %29 = phi i1 [ false, %13 ], [ %27, %21 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %4, i32 0, i32 0
  store ptr %31, ptr %32, align 8
  br label %13, !llvm.loop !46

33:                                               ; preds = %28
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %4, i32 0, i32 0
  store ptr %34, ptr %35, align 8
  br label %43

36:                                               ; preds = %1
  %37 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %4, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = call noundef ptr @"?_Min@?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAPEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@2@PEAU32@@Z"(ptr noundef %40) #11
  %42 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %4, i32 0, i32 0
  store ptr %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %36, %33
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Min@?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAPEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@2@PEAU32@@Z"(ptr noundef %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %11, %1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %2, align 8
  br label %3, !llvm.loop !47

15:                                               ; preds = %3
  %16 = load ptr, ptr %2, align 8
  ret ptr %16
}

attributes #0 = { mustprogress noinline optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline noreturn optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }
attributes #15 = { allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.linker.options = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!1 = !{!"/alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"}
!2 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!3 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!4 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!5 = !{!"/DEFAULTLIB:libcpmt.lib"}
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
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
