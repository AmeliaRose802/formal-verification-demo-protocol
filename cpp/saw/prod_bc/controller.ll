; ModuleID = 'src\controller.cpp'
source_filename = "src\\controller.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.44.35227"

%"class.std::basic_string_view" = type { ptr, i64 }
%rtti.TypeDescriptor28 = type { ptr, ptr, [29 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor24 = type { ptr, ptr, [25 x i8] }
%rtti.TypeDescriptor23 = type { ptr, ptr, [24 x i8] }
%rtti.TypeDescriptor19 = type { ptr, ptr, [20 x i8] }
%eh.CatchableTypeArray.4 = type { i32, [4 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%"struct.std::nullopt_t" = type { i8 }
%"struct.std::in_place_t" = type { i8 }
%rtti.TypeDescriptor30 = type { ptr, ptr, [31 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%"class.std::optional" = type { %"struct.std::_Non_trivial_move_assign" }
%"struct.std::_Non_trivial_move_assign" = type { %"struct.std::_Non_trivial_copy_assign" }
%"struct.std::_Non_trivial_copy_assign" = type { %"struct.std::_Non_trivial_move" }
%"struct.std::_Non_trivial_move" = type { %"struct.std::_Non_trivial_copy" }
%"struct.std::_Non_trivial_copy" = type { %"struct.std::_Optional_construct_base" }
%"struct.std::_Optional_construct_base" = type { %"struct.std::_Optional_destruct_base" }
%"struct.std::_Optional_destruct_base" = type { %union.anon, i8 }
%union.anon = type { %"class.std::basic_string" }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { ptr, [8 x i8] }
%"class.std::_Tree_const_iterator" = type { %"class.std::_Tree_unchecked_const_iterator" }
%"class.std::_Tree_unchecked_const_iterator" = type { ptr }
%"struct.sdep::DeviceRequest" = type { %"class.std::basic_string", %"class.std::basic_string", %"class.std::map", %"class.std::map", %"class.std::vector" }
%"class.std::map" = type { %"class.std::_Tree" }
%"class.std::_Tree" = type { %"class.std::_Compressed_pair.0" }
%"class.std::_Compressed_pair.0" = type { %"class.std::_Compressed_pair.1" }
%"class.std::_Compressed_pair.1" = type { %"class.std::_Tree_val" }
%"class.std::_Tree_val" = type { ptr, i64 }
%"class.std::vector" = type { %"class.std::_Compressed_pair.4" }
%"class.std::_Compressed_pair.4" = type { %"class.std::_Vector_val" }
%"class.std::_Vector_val" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%class.anon = type { i8 }
%"class.std::_String_iterator" = type { %"class.std::_String_const_iterator" }
%"class.std::_String_const_iterator" = type { ptr }
%"struct.sdep::Uuid" = type { %"class.std::array" }
%"class.std::array" = type { [16 x i8] }
%"class.sdep::InvalidRouteError" = type { %"class.sdep::ProtocolError" }
%"class.sdep::ProtocolError" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"struct.sdep::EnrollmentKey" = type { %"struct.sdep::Uuid", %"class.std::array.7", i8, i64 }
%"class.std::array.7" = type { [32 x i8] }
%"class.std::optional.14" = type { %"struct.std::_Optional_construct_base.15" }
%"struct.std::_Optional_construct_base.15" = type { %"struct.std::_Optional_destruct_base.16" }
%"struct.std::_Optional_destruct_base.16" = type { %union.anon.17, i8 }
%union.anon.17 = type { %"struct.sdep::EnrollmentKey" }
%"class.sdep::FleetController" = type { i8, %"class.std::vector", %"class.std::vector.8", ptr, i64, %"class.sdep::KeyStore" }
%"class.std::vector.8" = type { %"class.std::_Compressed_pair.9" }
%"class.std::_Compressed_pair.9" = type { %"class.std::_Vector_val.12" }
%"class.std::_Vector_val.12" = type { ptr, ptr, ptr }
%"class.sdep::KeyStore" = type { %"class.std::mutex", %"class.std::optional.14" }
%"class.std::mutex" = type { %"class.std::_Mutex_base" }
%"class.std::_Mutex_base" = type { %struct._Mtx_internal_imp_t }
%struct._Mtx_internal_imp_t = type { i32, %union.anon.13, i32, i32 }
%union.anon.13 = type { %"union.std::_Align_type" }
%"union.std::_Align_type" = type { double, [56 x i8] }
%"struct.sdep::ActivateResponse" = type { i8, %"class.std::optional" }
%"struct.sdep::EnrollmentStatus" = type { i8, i8, %"class.std::optional.18", i8 }
%"class.std::optional.18" = type { %"struct.std::_Optional_construct_base.19" }
%"struct.std::_Optional_construct_base.19" = type { %"struct.std::_Optional_destruct_base.20" }
%"struct.std::_Optional_destruct_base.20" = type { %union.anon.21, i8 }
%union.anon.21 = type { %"struct.sdep::Uuid" }
%"struct.std::_Tree_node" = type { ptr, ptr, ptr, i8, i8, %"struct.std::pair" }
%"struct.std::pair" = type { %"class.std::basic_string", %"class.std::basic_string" }
%"struct.std::_One_then_variadic_args_t" = type { i8 }
%"struct.std::_Fake_allocator" = type { i8 }
%"struct.std::_Fake_proxy_ptr_impl" = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%class.anon.22 = type { i8 }

$"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD@Z" = comdat any

$"?has_value@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEBA_NXZ" = comdat any

$"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z" = comdat any

$"??D?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEGBAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@XZ" = comdat any

$"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"??1?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z" = comdat any

$"??0InvalidRouteError@sdep@@QEAA@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z" = comdat any

$"??0InvalidRouteError@sdep@@QEAA@AEBV01@@Z" = comdat any

$"??0ProtocolError@sdep@@QEAA@AEBV01@@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1InvalidRouteError@sdep@@UEAA@XZ" = comdat any

$"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ" = comdat any

$"?substr@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV12@_K_K@Z" = comdat any

$"?provisionKey@sdep@@YA?AW4ProvisionResult@1@_N0W4KeyVaultResult@1@0@Z" = comdat any

$"??0?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ" = comdat any

$"??$?4PEBD$0A@@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAAEAV01@$$QEAPEBD@Z" = comdat any

$"?isValidRequestDate@sdep@@YA_N_J00@Z" = comdat any

$"?authenticate@sdep@@YA_N_N00@Z" = comdat any

$"?enrollDevice@sdep@@YA?AW4EnrollmentResult@1@_N0W4AuthResult@1@W4ActivationResult@1@@Z" = comdat any

$"??1ActivateResponse@sdep@@QEAA@XZ" = comdat any

$"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ" = comdat any

$"??C?$optional@UEnrollmentKey@sdep@@@std@@QEBAPEBUEnrollmentKey@sdep@@XZ" = comdat any

$"?getStatus@sdep@@YA?AUEnrollmentStatus@1@_N00AEBUUuid@1@@Z" = comdat any

$"?begin@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ" = comdat any

$"?end@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ" = comdat any

$"??8?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBA_NAEBV01@@Z" = comdat any

$"??D?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAAEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@XZ" = comdat any

$"??$get@$0A@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z" = comdat any

$"??$get@$00$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z" = comdat any

$"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z" = comdat any

$"??$?0AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z" = comdat any

$"??E?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAAAEAV01@XZ" = comdat any

$"??0?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@Unullopt_t@1@@Z" = comdat any

$"?_Get_scary@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@IEBAPEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@XZ" = comdat any

$"??0?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z" = comdat any

$"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z" = comdat any

$"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NAEBV12@@Z" = comdat any

$"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z" = comdat any

$"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"??$?0AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z" = comdat any

$"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z" = comdat any

$"??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z" = comdat any

$"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" = comdat any

$"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z" = comdat any

$"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" = comdat any

$"??$max@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$min@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$_Max_limit@_J@std@@YA_JXZ" = comdat any

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

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??E?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAAAEAV01@XZ" = comdat any

$"?_Min@?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAPEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@2@PEAU32@@Z" = comdat any

$"??0?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ" = comdat any

$"??0?$_Non_trivial_copy_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ" = comdat any

$"??0?$_Non_trivial_move@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ" = comdat any

$"??0?$_Non_trivial_copy@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@@std@@QEAA@XZ" = comdat any

$"??0?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ" = comdat any

$"??0?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@XZ" = comdat any

$"??0_Nontrivial_dummy_type@std@@QEAA@XZ" = comdat any

$"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" = comdat any

$"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??$?0V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@AEBV?$allocator@D@1@@Z" = comdat any

$"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ" = comdat any

$"?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ" = comdat any

$"??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z" = comdat any

$"??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z" = comdat any

$"??$_Convert_size@_K_K@std@@YA_K_K@Z" = comdat any

$"?data@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

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

$"??0?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z" = comdat any

$"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD_K@Z" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z" = comdat any

$"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ" = comdat any

$"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" = comdat any

$"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$"??1?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ" = comdat any

$"??1?$_Non_trivial_copy_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ" = comdat any

$"??1?$_Non_trivial_move@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ" = comdat any

$"??1?$_Non_trivial_copy@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@@std@@QEAA@XZ" = comdat any

$"??1?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ" = comdat any

$"??1?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@XZ" = comdat any

$"?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAH_K0V12@@Z" = comdat any

$"?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAHV12@@Z" = comdat any

$"??$_Traits_compare@U?$char_traits@D@std@@@std@@YAHQEBD_K01@Z" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"??_GInvalidRouteError@sdep@@UEAAPEAXI@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z" = comdat any

$"??_GProtocolError@sdep@@UEAAPEAXI@Z" = comdat any

$"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBD@Z" = comdat any

$"??_Gruntime_error@std@@UEAAPEAXI@Z" = comdat any

$"??1runtime_error@std@@UEAA@XZ" = comdat any

$"??1ProtocolError@sdep@@UEAA@XZ" = comdat any

$"?_Check_offset@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBAX_K@Z" = comdat any

$"?_Clamp_suffix_size@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBA_K_K0@Z" = comdat any

$"?_Xran@?$basic_string_view@DU?$char_traits@D@std@@@std@@CAXXZ" = comdat any

$"??$_Assign@PEBD@?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAX$$QEAPEBD@Z" = comdat any

$"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z" = comdat any

$"??$_Construct@PEBD@?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@$$QEAPEBD@Z" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z" = comdat any

$"??$_Construct_in_place@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@PEBD@std@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAPEBD@Z" = comdat any

$"??$?0AEBUUuid@sdep@@$0A@@?$optional@UUuid@sdep@@@std@@QEAA@AEBUUuid@sdep@@@Z" = comdat any

$"??0?$optional@UUuid@sdep@@@std@@QEAA@Unullopt_t@1@@Z" = comdat any

$"??$?0AEBUUuid@sdep@@@?$_Optional_destruct_base@UUuid@sdep@@$00@std@@QEAA@Uin_place_t@1@AEBUUuid@sdep@@@Z" = comdat any

$"??0?$_Optional_construct_base@UUuid@sdep@@@std@@QEAA@XZ" = comdat any

$"??0?$_Optional_destruct_base@UUuid@sdep@@$00@std@@QEAA@XZ" = comdat any

$_Avx2WmemEnabledWeakValue = comdat any

$"??_C@_0BB@DBFBFHHH@X?9Fleet?9Metadata?$AA@" = comdat any

$"??_C@_04LOAJBDKD@true?$AA@" = comdat any

$"??_C@_0BE@PBOHBGEL@X?9Fleet?9Auth?9Scheme?$AA@" = comdat any

$"??_C@_0M@GEGHMCKJ@hmac?9sha256?$AA@" = comdat any

$"??_C@_0N@DBDOJEBC@?1enroll?1key?1?$AA@" = comdat any

$"??_C@_09DOPJINKG@?1activate?$AA@" = comdat any

$"??_C@_0DI@JEJBMFNE@activate?3?5path?5does?5not?5match?5?1e@" = comdat any

$"??_R0?AVInvalidRouteError@sdep@@@8" = comdat any

$"_CT??_R0?AVInvalidRouteError@sdep@@@8??0InvalidRouteError@sdep@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVProtocolError@sdep@@@8" = comdat any

$"_CT??_R0?AVProtocolError@sdep@@@8??0ProtocolError@sdep@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVruntime_error@std@@@8" = comdat any

$"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA4?AVInvalidRouteError@sdep@@" = comdat any

$"_TI4?AVInvalidRouteError@sdep@@" = comdat any

$"??_C@_0BP@DAMOHCMK@activate?3?5empty?5key?5id?5segment?$AA@" = comdat any

$"??_C@_0P@FGFHJHDG@X?9Fleet?9Claims?$AA@" = comdat any

$"?nullopt@std@@3Unullopt_t@1@B" = comdat any

$"?in_place@std@@3Uin_place_t@1@B" = comdat any

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

$"??_7InvalidRouteError@sdep@@6B@" = comdat any

$"??_7ProtocolError@sdep@@6B@" = comdat any

$"??_7runtime_error@std@@6B@" = comdat any

$"??_C@_0BN@OFDOGPDL@invalid?5string_view?5position?$AA@" = comdat any

@_Avx2WmemEnabledWeakValue = weak_odr dso_local global i32 0, comdat, align 4
@"??_C@_0BB@DBFBFHHH@X?9Fleet?9Metadata?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"X-Fleet-Metadata\00", comdat, align 1
@"??_C@_04LOAJBDKD@true?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"true\00", comdat, align 1
@"??_C@_0BE@PBOHBGEL@X?9Fleet?9Auth?9Scheme?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"X-Fleet-Auth-Scheme\00", comdat, align 1
@"??_C@_0M@GEGHMCKJ@hmac?9sha256?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"hmac-sha256\00", comdat, align 1
@"??_C@_0N@DBDOJEBC@?1enroll?1key?1?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"/enroll/key/\00", comdat, align 1
@"__const.?parse_activate_path@FleetController@sdep@@CA?AUUuid@2@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z.kPrefix" = private unnamed_addr constant %"class.std::basic_string_view" { ptr @"??_C@_0N@DBDOJEBC@?1enroll?1key?1?$AA@", i64 12 }, align 8
@"??_C@_09DOPJINKG@?1activate?$AA@" = linkonce_odr dso_local unnamed_addr constant [10 x i8] c"/activate\00", comdat, align 1
@"__const.?parse_activate_path@FleetController@sdep@@CA?AUUuid@2@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z.kSuffix" = private unnamed_addr constant %"class.std::basic_string_view" { ptr @"??_C@_09DOPJINKG@?1activate?$AA@", i64 9 }, align 8
@"??_C@_0DI@JEJBMFNE@activate?3?5path?5does?5not?5match?5?1e@" = linkonce_odr dso_local unnamed_addr constant [56 x i8] c"activate: path does not match /enroll/key/{id}/activate\00", comdat, align 1
@"??_7type_info@@6B@" = external constant ptr
@"??_R0?AVInvalidRouteError@sdep@@@8" = linkonce_odr global %rtti.TypeDescriptor28 { ptr @"??_7type_info@@6B@", ptr null, [29 x i8] c".?AVInvalidRouteError@sdep@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVInvalidRouteError@sdep@@@8??0InvalidRouteError@sdep@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVInvalidRouteError@sdep@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0InvalidRouteError@sdep@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVProtocolError@sdep@@@8" = linkonce_odr global %rtti.TypeDescriptor24 { ptr @"??_7type_info@@6B@", ptr null, [25 x i8] c".?AVProtocolError@sdep@@\00" }, comdat
@"_CT??_R0?AVProtocolError@sdep@@@8??0ProtocolError@sdep@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVProtocolError@sdep@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0ProtocolError@sdep@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVruntime_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor23 { ptr @"??_7type_info@@6B@", ptr null, [24 x i8] c".?AVruntime_error@std@@\00" }, comdat
@"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA4?AVInvalidRouteError@sdep@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.4 { i32 4, [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVInvalidRouteError@sdep@@@8??0InvalidRouteError@sdep@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVProtocolError@sdep@@@8??0ProtocolError@sdep@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI4?AVInvalidRouteError@sdep@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1InvalidRouteError@sdep@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA4?AVInvalidRouteError@sdep@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BP@DAMOHCMK@activate?3?5empty?5key?5id?5segment?$AA@" = linkonce_odr dso_local unnamed_addr constant [31 x i8] c"activate: empty key id segment\00", comdat, align 1
@"??_C@_0P@FGFHJHDG@X?9Fleet?9Claims?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"X-Fleet-Claims\00", comdat, align 1
@"?nullopt@std@@3Unullopt_t@1@B" = linkonce_odr dso_local constant %"struct.std::nullopt_t" undef, comdat, align 1
@"?in_place@std@@3Uin_place_t@1@B" = linkonce_odr dso_local constant %"struct.std::in_place_t" zeroinitializer, comdat, align 1
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
@"??_7InvalidRouteError@sdep@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_GInvalidRouteError@sdep@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_7ProtocolError@sdep@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_GProtocolError@sdep@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_7runtime_error@std@@6B@" = linkonce_odr unnamed_addr constant { [2 x ptr] } { [2 x ptr] [ptr @"??_Gruntime_error@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat
@"??_C@_0BN@OFDOGPDL@invalid?5string_view?5position?$AA@" = linkonce_odr dso_local unnamed_addr constant [29 x i8] c"invalid string_view position\00", comdat, align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @"?has_metadata_header@FleetController@sdep@@CA_NAEBUDeviceRequest@2@@Z"(ptr noundef nonnull align 8 dereferenceable(120) %0) #0 align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca %"class.std::optional", align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string_view", align 8
  %8 = alloca i1, align 1
  store ptr %0, ptr %3, align 8
  %9 = call noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef @"??_C@_0BB@DBFBFHHH@X?9Fleet?9Metadata?$AA@") #11
  %10 = load ptr, ptr %3, align 8
  invoke void @"?lookup_header@?A0xD8295218@sdep@@YA?AV?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@AEBUDeviceRequest@1@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %10, ptr noundef %5)
          to label %11 unwind label %23

11:                                               ; preds = %1
  %12 = call noundef zeroext i1 @"?has_value@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(40) %4) #11
  store i1 false, ptr %8, align 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = call noundef nonnull align 8 dereferenceable(32) ptr @"??D?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEGBAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %4) #11
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %7) #11
  invoke void @"?to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %6, ptr noundef %7)
          to label %15 unwind label %23

15:                                               ; preds = %13
  store i1 true, ptr %8, align 1
  %16 = call noundef zeroext i1 @"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef @"??_C@_04LOAJBDKD@true?$AA@") #11
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i1 [ false, %11 ], [ %16, %15 ]
  store i1 %18, ptr %2, align 1
  %19 = load i1, ptr %8, align 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  br label %21

21:                                               ; preds = %20, %17
  call void @"??1?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %4) #11
  %22 = load i1, ptr %2, align 1
  ret i1 %22

23:                                               ; preds = %13, %1
  %24 = cleanuppad within none []
  call void @__std_terminate() #12 [ "funclet"(token %24) ]
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"?lookup_header@?A0xD8295218@sdep@@YA?AV?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@AEBUDeviceRequest@1@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %2) #1 personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string_view", align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"class.std::_Tree_const_iterator", align 8
  %11 = alloca %"class.std::_Tree_const_iterator", align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %"class.std::basic_string", align 8
  %16 = alloca %"class.std::basic_string_view", align 8
  %17 = alloca i32, align 4
  %18 = alloca %"struct.std::nullopt_t", align 1
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %2, i64 16, i1 false)
  call void @"?to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %7, ptr noundef %8)
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %19, i32 0, i32 2
  store ptr %20, ptr %9, align 8
  %21 = load ptr, ptr %9, align 8
  call void @"?begin@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr dead_on_unwind writable sret(%"class.std::_Tree_const_iterator") align 8 %10) #11
  %22 = load ptr, ptr %9, align 8
  call void @"?end@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr dead_on_unwind writable sret(%"class.std::_Tree_const_iterator") align 8 %11) #11
  br label %23

23:                                               ; preds = %40, %3
  %24 = call noundef zeroext i1 @"??8?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = call noundef nonnull align 8 dereferenceable(64) ptr @"??D?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAAEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  store ptr %27, ptr %12, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$0A@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %28) #11
  store ptr %29, ptr %13, align 8
  %30 = load ptr, ptr %12, align 8
  %31 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$00$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %30) #11
  store ptr %31, ptr %14, align 8
  %32 = load ptr, ptr %13, align 8
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %16) #11
  invoke void @"?to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %15, ptr noundef %16)
          to label %33 unwind label %47

33:                                               ; preds = %26
  %34 = call noundef zeroext i1 @"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #11
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load ptr, ptr %14, align 8
  %37 = invoke noundef ptr @"??$?0AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %38 unwind label %47

38:                                               ; preds = %35
  store i32 1, ptr %17, align 4
  br label %46

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  br label %23

42:                                               ; preds = %23
  %43 = getelementptr inbounds nuw %"struct.std::nullopt_t", ptr %18, i32 0, i32 0
  %44 = load i8, ptr %43, align 1
  %45 = call noundef ptr @"??0?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@Unullopt_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 %44) #11
  store i32 1, ptr %17, align 4
  br label %46

46:                                               ; preds = %42, %38
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  ret void

47:                                               ; preds = %35, %26
  %48 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #11 [ "funclet"(token %48) ]
  cleanupret from %48 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %3, align 8
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %9) #11
  store i64 %10, ptr %8, align 8
  ret ptr %5
}

declare dso_local i32 @__CxxFrameHandler3(...)

declare dso_local void @__std_terminate()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?has_value@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef zeroext i1 @"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6) #11
  ret i1 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"?to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::basic_string") align 8 %0, ptr noundef %1) #1 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i1, align 1
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %class.anon, align 1
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
  %26 = getelementptr inbounds nuw %class.anon, ptr %7, i32 0, i32 0
  %27 = load i8, ptr %26, align 1
  invoke void @"??$transform@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@V12@V<lambda_0>@?0??to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@@std@@YA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@V10@0V10@V<lambda_0>@?0??to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@V?$basic_string_view@DU?$char_traits@D@std@@@0@@Z@@Z"(ptr dead_on_unwind writable sret(%"class.std::_String_iterator") align 8 %11, i64 %17, i64 %21, i64 %25, i8 %27)
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??D?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEGBAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind noalias writable sret(%"class.std::basic_string_view") align 8 %1) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @"?has_provision_scheme@FleetController@sdep@@CA_NAEBUDeviceRequest@2@@Z"(ptr noundef nonnull align 8 dereferenceable(120) %0) #0 align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca %"class.std::optional", align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string_view", align 8
  %8 = alloca i1, align 1
  store ptr %0, ptr %3, align 8
  %9 = call noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef @"??_C@_0BE@PBOHBGEL@X?9Fleet?9Auth?9Scheme?$AA@") #11
  %10 = load ptr, ptr %3, align 8
  invoke void @"?lookup_header@?A0xD8295218@sdep@@YA?AV?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@AEBUDeviceRequest@1@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %10, ptr noundef %5)
          to label %11 unwind label %23

11:                                               ; preds = %1
  %12 = call noundef zeroext i1 @"?has_value@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(40) %4) #11
  store i1 false, ptr %8, align 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = call noundef nonnull align 8 dereferenceable(32) ptr @"??D?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEGBAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %4) #11
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %7) #11
  invoke void @"?to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::basic_string") align 8 %6, ptr noundef %7)
          to label %15 unwind label %23

15:                                               ; preds = %13
  store i1 true, ptr %8, align 1
  %16 = call noundef zeroext i1 @"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef @"??_C@_0M@GEGHMCKJ@hmac?9sha256?$AA@") #11
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i1 [ false, %11 ], [ %16, %15 ]
  store i1 %18, ptr %2, align 1
  %19 = load i1, ptr %8, align 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  br label %21

21:                                               ; preds = %20, %17
  call void @"??1?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %4) #11
  %22 = load i1, ptr %2, align 1
  ret i1 %22

23:                                               ; preds = %13, %1
  %24 = cleanuppad within none []
  call void @__std_terminate() #12 [ "funclet"(token %24) ]
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?parse_activate_path@FleetController@sdep@@CA?AUUuid@2@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr dead_on_unwind noalias writable sret(%"struct.sdep::Uuid") align 1 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string_view", align 8
  %7 = alloca %"class.std::basic_string_view", align 8
  %8 = alloca %"class.std::basic_string_view", align 8
  %9 = alloca %"class.std::basic_string_view", align 8
  %10 = alloca %"class.std::basic_string_view", align 8
  %11 = alloca %"class.sdep::InvalidRouteError", align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %"class.sdep::InvalidRouteError", align 8
  %16 = alloca %"class.std::basic_string", align 8
  %17 = alloca %"class.std::basic_string_view", align 8
  %18 = alloca %"class.std::basic_string_view", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 @"__const.?parse_activate_path@FleetController@sdep@@CA?AUUuid@2@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z.kPrefix", i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 @"__const.?parse_activate_path@FleetController@sdep@@CA?AUUuid@2@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z.kSuffix", i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 16, i1 false)
  %19 = load ptr, ptr %4, align 8
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %8) #11
  %20 = call noundef zeroext i1 @"?starts_with@?A0xD8295218@sdep@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@std@@0@Z"(ptr noundef %8, ptr noundef %7)
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  %22 = load ptr, ptr %4, align 8
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %10) #11
  %23 = call noundef zeroext i1 @"?ends_with@?A0xD8295218@sdep@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@std@@0@Z"(ptr noundef %10, ptr noundef %9)
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %2
  %25 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef @"??_C@_0DI@JEJBMFNE@activate?3?5path?5does?5not?5match?5?1e@")
  %26 = call noundef ptr @"??0InvalidRouteError@sdep@@QEAA@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %12)
  call void @_CxxThrowException(ptr %11, ptr @"_TI4?AVInvalidRouteError@sdep@@") #13
  unreachable

27:                                               ; preds = %21
  store i64 12, ptr %13, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %28) #11
  %30 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  %31 = sub i64 %29, %30
  store i64 %31, ptr %14, align 8
  %32 = load i64, ptr %14, align 8
  %33 = icmp ule i64 %32, 12
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef @"??_C@_0BP@DAMOHCMK@activate?3?5empty?5key?5id?5segment?$AA@")
  %36 = call noundef ptr @"??0InvalidRouteError@sdep@@QEAA@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %16)
  call void @_CxxThrowException(ptr %15, ptr @"_TI4?AVInvalidRouteError@sdep@@") #13
  unreachable

37:                                               ; preds = %27
  %38 = load ptr, ptr %4, align 8
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %18) #11
  %39 = load i64, ptr %14, align 8
  %40 = sub i64 %39, 12
  call void @"?substr@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV12@_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %17, i64 noundef 12, i64 noundef %40)
  call void @"?from_string@Uuid@sdep@@SA?AU12@V?$basic_string_view@DU?$char_traits@D@std@@@std@@@Z"(ptr dead_on_unwind writable sret(%"struct.sdep::Uuid") align 1 %0, ptr noundef %17)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @"?starts_with@?A0xD8295218@sdep@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@std@@0@Z"(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %7 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 16, i1 false)
  %10 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  %11 = call noundef i32 @"?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAH_K0V12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef %10, ptr noundef %5)
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @"?ends_with@?A0xD8295218@sdep@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@std@@0@Z"(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %7 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 16, i1 false)
  %10 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  %11 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %12 = call noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  %13 = sub i64 %11, %12
  %14 = call noundef i32 @"?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAH_K0V12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %13, i64 noundef %10, ptr noundef %5)
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i1 [ false, %2 ], [ %15, %9 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds nuw %"struct.std::_Zero_then_variadic_args_t", ptr %5, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 %9) #11
  %11 = load ptr, ptr %3, align 8
  %12 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %11) #11
  %13 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %12) #11
  %14 = load ptr, ptr %3, align 8
  invoke void @"??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %14, i64 noundef %13)
          to label %15 unwind label %16

15:                                               ; preds = %2
  ret ptr %6

16:                                               ; preds = %2
  %17 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #11 [ "funclet"(token %17) ]
  cleanupret from %17 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0InvalidRouteError@sdep@@QEAA@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr @"??0ProtocolError@sdep@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %7 unwind label %8

7:                                                ; preds = %2
  store ptr @"??_7InvalidRouteError@sdep@@6B@", ptr %5, align 8
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %1) #11
  ret ptr %5

8:                                                ; preds = %2
  %9 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %1) #11 [ "funclet"(token %9) ]
  cleanupret from %9 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0InvalidRouteError@sdep@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0ProtocolError@sdep@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  store ptr @"??_7InvalidRouteError@sdep@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0ProtocolError@sdep@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  store ptr @"??_7ProtocolError@sdep@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  store ptr @"??_7runtime_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
define linkonce_odr dso_local void @"??1InvalidRouteError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1ProtocolError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef i64 @"?size@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string_view", ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

declare dso_local void @"?from_string@Uuid@sdep@@SA?AU12@V?$basic_string_view@DU?$char_traits@D@std@@@std@@@Z"(ptr dead_on_unwind writable sret(%"struct.sdep::Uuid") align 1, ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?substr@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV12@_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::basic_string_view") align 8 %1, i64 noundef %2, i64 noundef %3) #1 comdat align 2 {
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
define dso_local noundef i8 @"?handle_provision@FleetController@sdep@@QEAA?AW4ProvisionResult@2@AEBUDeviceRequest@2@W4KeyVaultResult@2@UEnrollmentKey@2@@Z"(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i8 noundef %2, ptr noundef %3) #1 align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %"struct.sdep::EnrollmentKey", align 8
  %13 = alloca %"class.std::optional.14", align 8
  store ptr %3, ptr %5, align 8
  store i8 %2, ptr %6, align 1
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = call noundef zeroext i1 @"?has_metadata_header@FleetController@sdep@@CA_NAEBUDeviceRequest@2@@Z"(ptr noundef nonnull align 8 dereferenceable(120) %15) #11
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load ptr, ptr %7, align 8
  %19 = call noundef zeroext i1 @"?has_provision_scheme@FleetController@sdep@@CA_NAEBUDeviceRequest@2@@Z"(ptr noundef nonnull align 8 dereferenceable(120) %18) #11
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ false, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i8
  store i8 %22, ptr %9, align 1
  %23 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %14, i32 0, i32 5
  %24 = call noundef zeroext i1 @"?isActive@KeyStore@sdep@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(152) %23) #11
  %25 = zext i1 %24 to i8
  store i8 %25, ptr %10, align 1
  %26 = load i8, ptr %10, align 1
  %27 = trunc i8 %26 to i1
  %28 = load i8, ptr %6, align 1
  %29 = load i8, ptr %9, align 1
  %30 = trunc i8 %29 to i1
  %31 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %14, i32 0, i32 0
  %32 = load i8, ptr %31, align 8
  %33 = trunc i8 %32 to i1
  %34 = call noundef i8 @"?provisionKey@sdep@@YA?AW4ProvisionResult@1@_N0W4KeyVaultResult@1@0@Z"(i1 noundef zeroext %33, i1 noundef zeroext %30, i8 noundef %28, i1 noundef zeroext %27) #11
  store i8 %34, ptr %11, align 1
  %35 = load i8, ptr %11, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %3, i32 0, i32 2
  store i8 0, ptr %38, align 8
  %39 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %14, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %3, i64 64, i1 false)
  call void @"?provision@KeyStore@sdep@@QEAA?AV?$optional@UEnrollmentKey@sdep@@@std@@UEnrollmentKey@2@@Z"(ptr noundef nonnull align 8 dereferenceable(152) %39, ptr dead_on_unwind writable sret(%"class.std::optional.14") align 8 %13, ptr noundef %12)
  br label %40

40:                                               ; preds = %37, %20
  %41 = load i8, ptr %11, align 1
  ret i8 %41
}

; Function Attrs: nounwind
declare dso_local noundef zeroext i1 @"?isActive@KeyStore@sdep@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(152)) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"?provisionKey@sdep@@YA?AW4ProvisionResult@1@_N0W4KeyVaultResult@1@0@Z"(i1 noundef zeroext %0, i1 noundef zeroext %1, i8 noundef %2, i1 noundef zeroext %3) #0 comdat {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = zext i1 %3 to i8
  store i8 %10, ptr %6, align 1
  store i8 %2, ptr %7, align 1
  %11 = zext i1 %1 to i8
  store i8 %11, ptr %8, align 1
  %12 = zext i1 %0 to i8
  store i8 %12, ptr %9, align 1
  %13 = load i8, ptr %9, align 1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i8 3, ptr %5, align 1
  br label %29

16:                                               ; preds = %4
  %17 = load i8, ptr %8, align 1
  %18 = trunc i8 %17 to i1
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i8 2, ptr %5, align 1
  br label %29

20:                                               ; preds = %16
  %21 = load i8, ptr %7, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8 4, ptr %5, align 1
  br label %29

24:                                               ; preds = %20
  %25 = load i8, ptr %6, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8 1, ptr %5, align 1
  br label %29

28:                                               ; preds = %24
  store i8 0, ptr %5, align 1
  br label %29

29:                                               ; preds = %28, %27, %23, %19, %15
  %30 = load i8, ptr %5, align 1
  ret i8 %30
}

declare dso_local void @"?provision@KeyStore@sdep@@QEAA?AV?$optional@UEnrollmentKey@sdep@@@std@@UEnrollmentKey@2@@Z"(ptr noundef nonnull align 8 dereferenceable(152), ptr dead_on_unwind writable sret(%"class.std::optional.14") align 8, ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?handle_activate@FleetController@sdep@@QEAA?AUActivateResponse@2@AEBUDeviceRequest@2@_N_J@Z"(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr dead_on_unwind noalias writable sret(%"struct.sdep::ActivateResponse") align 8 %1, ptr noundef nonnull align 8 dereferenceable(120) %2, i1 noundef zeroext %3, i64 noundef %4) #1 align 2 personality ptr @__CxxFrameHandler3 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i1, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %"struct.sdep::Uuid", align 1
  %15 = alloca %"struct.sdep::Uuid", align 1
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca %"class.std::optional", align 8
  %21 = alloca %"class.std::basic_string_view", align 8
  %22 = alloca i8, align 1
  %23 = alloca %"class.std::basic_string_view", align 8
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  store ptr %1, ptr %6, align 8
  store i64 %4, ptr %7, align 8
  %27 = zext i1 %3 to i8
  store i8 %27, ptr %8, align 1
  store ptr %2, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %28 = load ptr, ptr %10, align 8
  store i1 false, ptr %11, align 1
  %29 = getelementptr inbounds nuw %"struct.sdep::ActivateResponse", ptr %1, i32 0, i32 0
  store i8 1, ptr %29, align 8
  %30 = getelementptr inbounds nuw %"struct.sdep::ActivateResponse", ptr %1, i32 0, i32 1
  %31 = call noundef ptr @"??0?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %30) #11
  %32 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %28, i32 0, i32 0
  %33 = load i8, ptr %32, align 8
  %34 = trunc i8 %33 to i1
  br i1 %34, label %37, label %35

35:                                               ; preds = %5
  %36 = getelementptr inbounds nuw %"struct.sdep::ActivateResponse", ptr %1, i32 0, i32 0
  store i8 2, ptr %36, align 8
  store i1 true, ptr %11, align 1
  store i32 1, ptr %12, align 4
  br label %136

37:                                               ; preds = %5
  %38 = load ptr, ptr %9, align 8
  %39 = call noundef zeroext i1 @"?has_metadata_header@FleetController@sdep@@CA_NAEBUDeviceRequest@2@@Z"(ptr noundef nonnull align 8 dereferenceable(120) %38) #11
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %13, align 1
  %41 = load i8, ptr %13, align 1
  %42 = trunc i8 %41 to i1
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds nuw %"struct.sdep::ActivateResponse", ptr %1, i32 0, i32 0
  store i8 1, ptr %44, align 8
  store i1 true, ptr %11, align 1
  store i32 1, ptr %12, align 4
  br label %136

45:                                               ; preds = %37
  %46 = getelementptr inbounds nuw %"struct.sdep::Uuid", ptr %14, i32 0, i32 0
  %47 = getelementptr inbounds nuw %"class.std::array", ptr %46, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %47, i8 0, i64 16, i1 false)
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds nuw %"struct.sdep::DeviceRequest", ptr %48, i32 0, i32 1
  invoke void @"?parse_activate_path@FleetController@sdep@@CA?AUUuid@2@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr dead_on_unwind writable sret(%"struct.sdep::Uuid") align 1 %15, ptr noundef nonnull align 8 dereferenceable(32) %49)
          to label %64 unwind label %50

50:                                               ; preds = %45
  %51 = catchswitch within none [label %52] unwind label %140

52:                                               ; preds = %50
  %53 = catchpad within %51 [ptr @"??_R0?AVProtocolError@sdep@@@8", i32 8, ptr %16]
  %54 = getelementptr inbounds nuw %"struct.sdep::ActivateResponse", ptr %1, i32 0, i32 0
  store i8 1, ptr %54, align 8
  %55 = load ptr, ptr %16, align 8
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(24) %55) [ "funclet"(token %53) ]
          to label %60 unwind label %140

60:                                               ; preds = %52
  store ptr %59, ptr %17, align 8
  %61 = getelementptr inbounds nuw %"struct.sdep::ActivateResponse", ptr %1, i32 0, i32 1
  %62 = invoke noundef nonnull align 8 dereferenceable(40) ptr @"??$?4PEBD$0A@@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAAEAV01@$$QEAPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull align 8 dereferenceable(8) %17) [ "funclet"(token %53) ]
          to label %63 unwind label %140

63:                                               ; preds = %60
  store i1 true, ptr %11, align 1
  store i32 1, ptr %12, align 4
  catchret from %53 to label %65

64:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %15, i64 16, i1 false)
  br label %66

65:                                               ; preds = %63
  br label %136

66:                                               ; preds = %64
  %67 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %28, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = icmp ne ptr %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %28, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds ptr, ptr %73, i64 1
  %75 = load ptr, ptr %74, align 8
  %76 = call noundef i64 %75(ptr noundef nonnull align 8 dereferenceable(8) %72) #11
  br label %78

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %70
  %79 = phi i64 [ %76, %70 ], [ 0, %77 ]
  store i64 %79, ptr %18, align 8
  %80 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %28, i32 0, i32 4
  %81 = load i64, ptr %80, align 8
  %82 = load i64, ptr %18, align 8
  %83 = load i64, ptr %7, align 8
  %84 = call noundef zeroext i1 @"?isValidRequestDate@sdep@@YA_N_J00@Z"(i64 noundef %83, i64 noundef %82, i64 noundef %81) #11
  %85 = zext i1 %84 to i8
  store i8 %85, ptr %19, align 1
  %86 = call noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef @"??_C@_0P@FGFHJHDG@X?9Fleet?9Claims?$AA@") #11
  %87 = load ptr, ptr %9, align 8
  invoke void @"?lookup_header@?A0xD8295218@sdep@@YA?AV?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@AEBUDeviceRequest@1@V?$basic_string_view@DU?$char_traits@D@std@@@3@@Z"(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %20, ptr noundef nonnull align 8 dereferenceable(120) %87, ptr noundef %21)
          to label %88 unwind label %140

88:                                               ; preds = %78
  %89 = call noundef zeroext i1 @"?has_value@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(40) %20) #11
  br i1 %89, label %90, label %95

90:                                               ; preds = %88
  %91 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %28, i32 0, i32 2
  %92 = call noundef nonnull align 8 dereferenceable(32) ptr @"??D?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEGBAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %20) #11
  call void @"??B?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA?AV?$basic_string_view@DU?$char_traits@D@std@@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %23) #11
  %93 = invoke noundef zeroext i1 @"?isValidClaims@sdep@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBV?$vector@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$allocator@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@@3@@Z"(ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(24) %91)
          to label %94 unwind label %134

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %88
  %96 = phi i1 [ false, %88 ], [ %93, %94 ]
  %97 = zext i1 %96 to i8
  store i8 %97, ptr %22, align 1
  %98 = load i8, ptr %22, align 1
  %99 = trunc i8 %98 to i1
  %100 = load i8, ptr %8, align 1
  %101 = trunc i8 %100 to i1
  %102 = load i8, ptr %19, align 1
  %103 = trunc i8 %102 to i1
  %104 = call noundef zeroext i1 @"?authenticate@sdep@@YA_N_N00@Z"(i1 noundef zeroext %103, i1 noundef zeroext %101, i1 noundef zeroext %99) #11
  %105 = zext i1 %104 to i8
  store i8 %105, ptr %24, align 1
  %106 = load i8, ptr %24, align 1
  %107 = trunc i8 %106 to i1
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  store i8 0, ptr %25, align 1
  br label %115

109:                                              ; preds = %95
  %110 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %28, i32 0, i32 5
  %111 = call noundef zeroext i1 @"?hasKey@KeyStore@sdep@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(152) %110) #11
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  store i8 2, ptr %25, align 1
  br label %114

113:                                              ; preds = %109
  store i8 1, ptr %25, align 1
  br label %114

114:                                              ; preds = %113, %112
  br label %115

115:                                              ; preds = %114, %108
  %116 = load i8, ptr %24, align 1
  %117 = trunc i8 %116 to i1
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %28, i32 0, i32 5
  %120 = invoke noundef i8 @"?activate@KeyStore@sdep@@QEAA?AW4ActivationResult@2@AEBUUuid@2@@Z"(ptr noundef nonnull align 8 dereferenceable(152) %119, ptr noundef nonnull align 1 dereferenceable(16) %14)
          to label %121 unwind label %134

121:                                              ; preds = %118
  br label %123

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %121
  %124 = phi i8 [ %120, %121 ], [ 2, %122 ]
  store i8 %124, ptr %26, align 1
  %125 = load i8, ptr %26, align 1
  %126 = load i8, ptr %25, align 1
  %127 = load i8, ptr %13, align 1
  %128 = trunc i8 %127 to i1
  %129 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %28, i32 0, i32 0
  %130 = load i8, ptr %129, align 8
  %131 = trunc i8 %130 to i1
  %132 = call noundef i8 @"?enrollDevice@sdep@@YA?AW4EnrollmentResult@1@_N0W4AuthResult@1@W4ActivationResult@1@@Z"(i1 noundef zeroext %131, i1 noundef zeroext %128, i8 noundef %126, i8 noundef %125) #11
  %133 = getelementptr inbounds nuw %"struct.sdep::ActivateResponse", ptr %1, i32 0, i32 0
  store i8 %132, ptr %133, align 8
  store i1 true, ptr %11, align 1
  store i32 1, ptr %12, align 4
  call void @"??1?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %20) #11
  br label %136

134:                                              ; preds = %118, %90
  %135 = cleanuppad within none []
  call void @"??1?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %20) #11 [ "funclet"(token %135) ]
  cleanupret from %135 unwind label %140

136:                                              ; preds = %123, %65, %43, %35
  %137 = load i1, ptr %11, align 1
  br i1 %137, label %139, label %138

138:                                              ; preds = %136
  call void @"??1ActivateResponse@sdep@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  br label %139

139:                                              ; preds = %138, %136
  ret void

140:                                              ; preds = %134, %78, %60, %52, %50
  %141 = cleanuppad within none []
  call void @"??1ActivateResponse@sdep@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %1) #11 [ "funclet"(token %141) ]
  cleanupret from %141 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret ptr %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @"??$?4PEBD$0A@@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAAEAV01@$$QEAPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  call void @"??$_Assign@PEBD@?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAX$$QEAPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?isValidRequestDate@sdep@@YA_N_J00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 comdat {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %0, ptr %6, align 8
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i64, ptr %5, align 8
  %12 = load i64, ptr %6, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64, ptr %4, align 8
  %15 = icmp sle i64 %13, %14
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i1 [ false, %3 ], [ %15, %10 ]
  ret i1 %17
}

declare dso_local noundef zeroext i1 @"?isValidClaims@sdep@@YA_NV?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBV?$vector@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$allocator@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@@3@@Z"(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?authenticate@sdep@@YA_N_N00@Z"(i1 noundef zeroext %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 comdat {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = zext i1 %2 to i8
  store i8 %7, ptr %4, align 1
  %8 = zext i1 %1 to i8
  store i8 %8, ptr %5, align 1
  %9 = zext i1 %0 to i8
  store i8 %9, ptr %6, align 1
  %10 = load i8, ptr %6, align 1
  %11 = trunc i8 %10 to i1
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i8, ptr %5, align 1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8, ptr %4, align 1
  %17 = trunc i8 %16 to i1
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = phi i1 [ false, %12 ], [ false, %3 ], [ %17, %15 ]
  ret i1 %19
}

; Function Attrs: nounwind
declare dso_local noundef zeroext i1 @"?hasKey@KeyStore@sdep@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(152)) #4

declare dso_local noundef i8 @"?activate@KeyStore@sdep@@QEAA?AW4ActivationResult@2@AEBUUuid@2@@Z"(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 1 dereferenceable(16)) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"?enrollDevice@sdep@@YA?AW4EnrollmentResult@1@_N0W4AuthResult@1@W4ActivationResult@1@@Z"(i1 noundef zeroext %0, i1 noundef zeroext %1, i8 noundef %2, i8 noundef %3) #0 comdat {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8 %3, ptr %6, align 1
  store i8 %2, ptr %7, align 1
  %10 = zext i1 %1 to i8
  store i8 %10, ptr %8, align 1
  %11 = zext i1 %0 to i8
  store i8 %11, ptr %9, align 1
  %12 = load i8, ptr %9, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i8 2, ptr %5, align 1
  br label %30

15:                                               ; preds = %4
  %16 = load i8, ptr %8, align 1
  %17 = trunc i8 %16 to i1
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i8 1, ptr %5, align 1
  br label %30

19:                                               ; preds = %15
  %20 = load i8, ptr %7, align 1
  switch i8 %20, label %29 [
    i8 0, label %21
    i8 2, label %27
    i8 1, label %28
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %6, align 1
  switch i8 %22, label %26 [
    i8 0, label %23
    i8 1, label %24
    i8 2, label %25
  ]

23:                                               ; preds = %21
  store i8 0, ptr %5, align 1
  br label %30

24:                                               ; preds = %21
  store i8 1, ptr %5, align 1
  br label %30

25:                                               ; preds = %21
  store i8 3, ptr %5, align 1
  br label %30

26:                                               ; preds = %21
  store i8 3, ptr %5, align 1
  br label %30

27:                                               ; preds = %19
  store i8 3, ptr %5, align 1
  br label %30

28:                                               ; preds = %19
  store i8 1, ptr %5, align 1
  br label %30

29:                                               ; preds = %19
  store i8 1, ptr %5, align 1
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %18, %14
  %31 = load i8, ptr %5, align 1
  ret i8 %31
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1ActivateResponse@sdep@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.sdep::ActivateResponse", ptr %3, i32 0, i32 1
  call void @"??1?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?handle_status@FleetController@sdep@@QEBA?AUEnrollmentStatus@2@AEBUDeviceRequest@2@@Z"(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr dead_on_unwind noalias writable sret(%"struct.sdep::EnrollmentStatus") align 1 %1, ptr noundef nonnull align 8 dereferenceable(120) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::optional.14", align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %"struct.sdep::Uuid", align 1
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %11, i32 0, i32 5
  call void @"?current@KeyStore@sdep@@QEBA?AV?$optional@UEnrollmentKey@sdep@@@std@@XZ"(ptr noundef nonnull align 8 dereferenceable(152) %12, ptr dead_on_unwind writable sret(%"class.std::optional.14") align 8 %7)
  %13 = call noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %7) #11
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %8, align 1
  %15 = call noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %7) #11
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = call noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEBAPEBUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %7) #11
  %18 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = trunc i8 %19 to i1
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ false, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i8
  store i8 %23, ptr %9, align 1
  %24 = call noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %7) #11
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEBAPEBUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %7) #11
  %27 = getelementptr inbounds nuw %"struct.sdep::EnrollmentKey", ptr %26, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 8 %27, i64 16, i1 false)
  br label %31

28:                                               ; preds = %21
  %29 = getelementptr inbounds nuw %"struct.sdep::Uuid", ptr %10, i32 0, i32 0
  %30 = getelementptr inbounds nuw %"class.std::array", ptr %29, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %30, i8 0, i64 16, i1 false)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8, ptr %9, align 1
  %33 = trunc i8 %32 to i1
  %34 = load i8, ptr %8, align 1
  %35 = trunc i8 %34 to i1
  %36 = getelementptr inbounds nuw %"class.sdep::FleetController", ptr %11, i32 0, i32 0
  %37 = load i8, ptr %36, align 8
  %38 = trunc i8 %37 to i1
  call void @"?getStatus@sdep@@YA?AUEnrollmentStatus@1@_N00AEBUUuid@1@@Z"(ptr dead_on_unwind writable sret(%"struct.sdep::EnrollmentStatus") align 1 %1, i1 noundef zeroext %38, i1 noundef zeroext %35, i1 noundef zeroext %33, ptr noundef nonnull align 1 dereferenceable(16) %10) #11
  ret void
}

declare dso_local void @"?current@KeyStore@sdep@@QEBA?AV?$optional@UEnrollmentKey@sdep@@@std@@XZ"(ptr noundef nonnull align 8 dereferenceable(152), ptr dead_on_unwind writable sret(%"class.std::optional.14") align 8) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base.16", ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??C?$optional@UEnrollmentKey@sdep@@@std@@QEBAPEBUEnrollmentKey@sdep@@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base.16", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?getStatus@sdep@@YA?AUEnrollmentStatus@1@_N00AEBUUuid@1@@Z"(ptr dead_on_unwind noalias writable sret(%"struct.sdep::EnrollmentStatus") align 1 %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 1 dereferenceable(16) %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %"struct.std::nullopt_t", align 1
  store ptr %0, ptr %6, align 8
  store ptr %4, ptr %7, align 8
  %12 = zext i1 %3 to i8
  store i8 %12, ptr %8, align 1
  %13 = zext i1 %2 to i8
  store i8 %13, ptr %9, align 1
  %14 = zext i1 %1 to i8
  store i8 %14, ptr %10, align 1
  %15 = getelementptr inbounds nuw %"struct.sdep::EnrollmentStatus", ptr %0, i32 0, i32 0
  %16 = load i8, ptr %10, align 1
  %17 = trunc i8 %16 to i1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8 1, i8 0
  store i8 %19, ptr %15, align 1
  %20 = getelementptr inbounds nuw %"struct.sdep::EnrollmentStatus", ptr %0, i32 0, i32 1
  %21 = load i8, ptr %9, align 1
  %22 = trunc i8 %21 to i1
  %23 = zext i1 %22 to i8
  store i8 %23, ptr %20, align 1
  %24 = getelementptr inbounds nuw %"struct.sdep::EnrollmentStatus", ptr %0, i32 0, i32 2
  %25 = load i8, ptr %8, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load ptr, ptr %7, align 8
  %29 = call noundef ptr @"??$?0AEBUUuid@sdep@@$0A@@?$optional@UUuid@sdep@@@std@@QEAA@AEBUUuid@sdep@@@Z"(ptr noundef nonnull align 1 dereferenceable(17) %24, ptr noundef nonnull align 1 dereferenceable(16) %28) #11
  br label %34

30:                                               ; preds = %5
  %31 = getelementptr inbounds nuw %"struct.std::nullopt_t", ptr %11, i32 0, i32 0
  %32 = load i8, ptr %31, align 1
  %33 = call noundef ptr @"??0?$optional@UUuid@sdep@@@std@@QEAA@Unullopt_t@1@@Z"(ptr noundef nonnull align 1 dereferenceable(17) %24, i8 %32) #11
  br label %34

34:                                               ; preds = %30, %27
  %35 = getelementptr inbounds nuw %"struct.sdep::EnrollmentStatus", ptr %0, i32 0, i32 3
  %36 = load i8, ptr %8, align 1
  %37 = trunc i8 %36 to i1
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %35, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Tree_const_iterator") align 8 %1) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?end@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@QEBA?AV?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_Tree_const_iterator") align 8 %1) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef zeroext i1 @"??8?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @"??D?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEBAAEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@1@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Tree_unchecked_const_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"struct.std::_Tree_node", ptr %5, i32 0, i32 5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$0A@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::pair", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$get@$00$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@YAAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@AEBU?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::pair", ptr %3, i32 0, i32 1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??$?8DU?$char_traits@D@std@@V?$allocator@D@1@@std@@YA_NAEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef zeroext i1 @"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  ret i1 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::in_place_t", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %5, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = call noundef ptr @"??0?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$optional@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@Unullopt_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, i8 %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::nullopt_t", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %"struct.std::nullopt_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"??0?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %6) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Get_scary@?$_Tree@V?$_Tmap_traits@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@U?$less@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@2@V?$allocator@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@2@$0A@@std@@@std@@IEBAPEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Tree", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair.0", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %"class.std::_Compressed_pair.1", ptr %5, i32 0, i32 0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @"??0?$_Tree_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAA@PEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@1@PEBV?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
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
  %22 = call noundef zeroext i1 @"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z"(ptr noundef %21, i64 noundef %18, ptr noundef %14, i64 noundef %10) #11
  ret i1 %22
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef i32 @"?compare@?$_Narrow_char_traits@DH@std@@SAHQEBD0_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
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
declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Large_mode_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_val", ptr %3, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = icmp ugt i64 %5, 15
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??0?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call noundef ptr @"??0?$_Non_trivial_copy_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??0?$_Non_trivial_copy_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call noundef ptr @"??0?$_Non_trivial_move@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??0?$_Non_trivial_move@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call noundef ptr @"??0?$_Non_trivial_copy@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??0?$_Non_trivial_copy@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call noundef ptr @"??0?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??0?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call noundef ptr @"??$?0AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@Uin_place_t@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %5, align 8
  %11 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %12 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %8, i32 0, i32 1
  store i8 1, ptr %12, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
define linkonce_odr dso_local void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local void @"??$_Construct@$01PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
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
  call void @"?_Xlen_string@std@@YAXXZ"() #13
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %3, i32 0, i32 0
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 16, i1 false)
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #6 comdat {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@") #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
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
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef i64 @"??$_Max_limit@_J@std@@YA_JXZ"() #0 comdat {
  %1 = alloca i64, align 8
  store i64 -1, ptr %1, align 8
  ret i64 9223372036854775807
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_at_least_helper@V?$allocator@D@std@@@std@@YAPEADAEAV?$allocator@D@0@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
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
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #1 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #1 comdat {
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
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, ptr %2, align 8
  store i8 0, ptr %3, align 1
  %4 = load i64, ptr %2, align 8
  %5 = mul i64 %4, 1
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #1 comdat {
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
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #13
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
  call void @_invoke_watson(ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0) #13
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
define linkonce_odr dso_local noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0) #1 comdat align 2 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #6 comdat {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  call void @_CxxThrowException(ptr %1, ptr @"_TI3?AVbad_array_new_length@std@@") #13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @_invoke_watson(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #11
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %3, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
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
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?what@exception@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
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
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gexception@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
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
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
declare dso_local void @"??3@YAXPEAX_K@Z"(ptr noundef, i64 noundef) #8

declare dso_local void @__std_exception_destroy(ptr noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_val", ptr %3, i32 0, i32 0
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??E?$_Tree_unchecked_const_iterator@V?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@U_Iterator_base0@2@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
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
  br label %13, !llvm.loop !13

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
define linkonce_odr dso_local noundef ptr @"?_Min@?$_Tree_val@U?$_Tree_simple_types@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@@std@@@std@@SAPEAU?$_Tree_node@U?$pair@$$CBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V12@@std@@PEAX@2@PEAU32@@Z"(ptr noundef %0) #0 comdat align 2 {
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
  br label %3, !llvm.loop !15

15:                                               ; preds = %3
  %16 = load ptr, ptr %2, align 8
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0?$_Non_trivial_copy_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Non_trivial_copy_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0?$_Non_trivial_move@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Non_trivial_move@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0?$_Non_trivial_copy@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Non_trivial_copy@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 0
  %5 = call noundef ptr @"??0_Nontrivial_dummy_type@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  %6 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 1
  store i8 0, ptr %6, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Nontrivial_dummy_type@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @strlen(ptr noundef %3) #11
  ret i64 %4
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Equal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NQEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %6) #11
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %10 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds nuw %"class.std::_String_val", ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds nuw %"class.std::basic_string", ptr %5, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %13, i32 0, i32 0
  %15 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  %16 = call noundef zeroext i1 @"??$_Traits_equal@U?$char_traits@D@std@@@std@@YA_NQEBD_K01@Z"(ptr noundef %15, i64 noundef %12, ptr noundef %8, i64 noundef %7) #11
  ret i1 %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0V?$basic_string_view@DU?$char_traits@D@std@@@std@@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV?$basic_string_view@DU?$char_traits@D@std@@@1@AEBV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
define internal void @"??$transform@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@V12@V<lambda_0>@?0??to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@V?$basic_string_view@DU?$char_traits@D@std@@@2@@Z@@std@@YA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@V10@0V10@V<lambda_0>@?0??to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@V?$basic_string_view@DU?$char_traits@D@std@@@0@@Z@@Z"(ptr dead_on_unwind noalias writable sret(%"class.std::_String_iterator") align 8 %0, i64 %1, i64 %2, i64 %3, i8 %4) #1 {
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::_String_iterator", align 8
  %8 = alloca %"class.std::_String_iterator", align 8
  %9 = alloca %"class.std::_String_iterator", align 8
  %10 = alloca %class.anon, align 1
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
  %23 = getelementptr inbounds nuw %class.anon, ptr %10, i32 0, i32 0
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
  %35 = call noundef i8 @"??R<lambda_0>@?0??to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@4@@Z@QEBA?A?<auto>@@E@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, i8 noundef %34)
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
  br label %28, !llvm.loop !16

42:                                               ; preds = %28
  call void @"??$_Seek_wrapped@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@AEAPEAD@std@@YAXAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@AEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %9, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_String_iterator") align 8 %1) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr dead_on_unwind noalias writable sret(%"class.std::_String_iterator") align 8 %1) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??$?0AEBV?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@AEBV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local void @"??$_Construct@$00PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXQEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
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
  call void @"?_Xlen_string@std@@YAXXZ"() #13
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
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
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
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"??$_Adl_verify_range@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@V12@@std@@YAXAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped@AEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@@std@@YA?A_TAEBV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"?_Unwrapped@?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Get_unwrapped_n@AEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@_J@std@@YA?A_TAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #0 comdat {
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
define linkonce_odr dso_local noundef i64 @"??$_Idl_distance@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@PEAD@std@@YA?A_PAEBQEAD0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define internal noundef i8 @"??R<lambda_0>@?0??to_lower@?A0xD8295218@sdep@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@V?$basic_string_view@DU?$char_traits@D@std@@@4@@Z@QEBA?A?<auto>@@E@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef %1) #0 align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %3, align 1
  %7 = zext i8 %6 to i32
  %8 = call i32 @tolower(i32 noundef %7) #16
  %9 = trunc i32 %8 to i8
  ret i8 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Seek_wrapped@V?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@AEAPEAD@std@@YAXAEAV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@0@AEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @"?_Unwrapped@?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::_String_const_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef ptr @"??$_Unfancy_maybe_null@$$CBD@std@@YAPEBDPEBD@Z"(ptr noundef %5) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy_maybe_null@$$CBD@std@@YAPEBDPEBD@Z"(ptr noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Verify_offset@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAX_J@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare dso_local i32 @tolower(i32 noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Seek_to@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAXPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??$_Refancy_maybe_null@PEBD$0A@@std@@YAPEBDPEBD@Z"(ptr noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z"(ptr noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
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
define internal noundef ptr @"??0?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0?$basic_string_view@DU?$char_traits@D@std@@@std@@QEAA@QEBD_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Switch_to_buf@_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@@std@@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef %1) #0 comdat personality ptr @__CxxFrameHandler3 {
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
  call void @__std_terminate() #12 [ "funclet"(token %13) ]
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
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
  call void @_invoke_watson(ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i64 noundef 0) #13
  unreachable

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8
  %30 = inttoptr i64 %29 to ptr
  %31 = load ptr, ptr %4, align 8
  store ptr %30, ptr %31, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Non_trivial_move_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1?$_Non_trivial_copy_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Non_trivial_copy_assign@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1?$_Non_trivial_move@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Non_trivial_move@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1?$_Non_trivial_copy@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Non_trivial_copy@U?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Optional_destruct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@$0A@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 0
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @"?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAH_K0V12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #1 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::basic_string_view", align 8
  %10 = alloca %"class.std::basic_string_view", align 8
  store ptr %3, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = load i64, ptr %6, align 8
  %13 = load i64, ptr %7, align 8
  call void @"?substr@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBA?AV12@_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr dead_on_unwind writable sret(%"class.std::basic_string_view") align 8 %9, i64 noundef %13, i64 noundef %12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %3, i64 16, i1 false)
  %14 = call noundef i32 @"?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAHV12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %10) #11
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?compare@?$basic_string_view@DU?$char_traits@D@std@@@std@@QEBAHV12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #0 comdat align 2 {
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
  %14 = call noundef i32 @"??$_Traits_compare@U?$char_traits@D@std@@@std@@YAHQEBD_K01@Z"(ptr noundef %13, i64 noundef %11, ptr noundef %9, i64 noundef %7) #11
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"??$_Traits_compare@U?$char_traits@D@std@@@std@@YAHQEBD_K01@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat {
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
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #0 comdat align 2 {
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

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @"??0ProtocolError@sdep@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 align 2 {
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
define linkonce_odr dso_local noundef ptr @"??_GInvalidRouteError@sdep@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1InvalidRouteError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  %8 = call noundef ptr @"??0exception@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %7) #11
  store ptr @"??_7runtime_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_GProtocolError@sdep@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1ProtocolError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
define linkonce_odr dso_local noundef ptr @"??_Gruntime_error@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %6, i64 noundef 24) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

declare dso_local void @__std_exception_copy(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1ProtocolError@sdep@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Check_offset@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) #1 comdat align 2 {
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
  call void @"?_Xran@?$basic_string_view@DU?$char_traits@D@std@@@std@@CAXXZ"() #13
  unreachable

11:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Clamp_suffix_size@?$basic_string_view@DU?$char_traits@D@std@@@std@@AEBA_K_K0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Xran@?$basic_string_view@DU?$char_traits@D@std@@@std@@CAXXZ"() #6 comdat align 2 {
  call void @"?_Xout_of_range@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BN@OFDOGPDL@invalid?5string_view?5position?$AA@") #13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @"?_Xout_of_range@std@@YAXPEBD@Z"(ptr noundef) #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$_Assign@PEBD@?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAX$$QEAPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 8
  %8 = trunc i8 %7 to i1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 0
  %13 = call noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %11)
  br label %17

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8
  %16 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Construct@PEBD@?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@$$QEAPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %15)
  br label %17

17:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Construct@PEBD@?$_Optional_construct_base@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@std@@QEAAAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@$$QEAPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 0
  call void @"??$_Construct_in_place@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@PEBD@std@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %8 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 1
  store i8 1, ptr %8, align 8
  %9 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base", ptr %5, i32 0, i32 0
  ret ptr %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %6) #11
  %8 = call noundef i64 @"??$_Convert_size@_K_K@std@@YA_K_K@Z"(i64 noundef %7) #11
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %9, i64 noundef %8)
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca %class.anon.22, align 1
  store i64 %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i64, ptr %5, align 8
  %13 = getelementptr inbounds nuw %"class.std::basic_string", ptr %11, i32 0, i32 0
  %14 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds nuw %"class.std::_String_val", ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp ule i64 %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw %"class.std::basic_string", ptr %11, i32 0, i32 0
  %20 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %19, i32 0, i32 0
  %21 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %20) #11
  store ptr %21, ptr %8, align 8
  %22 = load i64, ptr %5, align 8
  %23 = getelementptr inbounds nuw %"class.std::basic_string", ptr %11, i32 0, i32 0
  %24 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds nuw %"class.std::_String_val", ptr %24, i32 0, i32 1
  store i64 %22, ptr %25, align 8
  %26 = load i64, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %8, align 8
  %29 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %28, ptr noundef %27, i64 noundef %26) #11
  store i8 0, ptr %9, align 1
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %5, align 8
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 %31
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %9) #11
  store ptr %11, ptr %4, align 8
  br label %39

33:                                               ; preds = %3
  %34 = load ptr, ptr %6, align 8
  %35 = load i64, ptr %5, align 8
  %36 = getelementptr inbounds nuw %class.anon.22, ptr %10, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  %38 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %35, i8 %37, ptr noundef %34)
  store ptr %38, ptr %4, align 8
  br label %39

39:                                               ; preds = %33, %18
  %40 = load ptr, ptr %4, align 8
  ret ptr %40
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3) #1 comdat align 2 {
  %5 = alloca %class.anon.22, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = getelementptr inbounds nuw %class.anon.22, ptr %5, i32 0, i32 0
  store i8 %2, ptr %13, align 1
  store ptr %3, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %7, align 8
  %16 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #13
  unreachable

19:                                               ; preds = %4
  %20 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %21 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds nuw %"class.std::_String_val", ptr %21, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %7, align 8
  %25 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %24) #11
  store i64 %25, ptr %10, align 8
  %26 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = call noundef ptr @"??$_Allocate_for_capacity@$0A@@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAPEADAEAV?$allocator@D@1@AEA_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(8) %10)
  store ptr %28, ptr %12, align 8
  %29 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %30 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %29, i32 0, i32 0
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %30) #11
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %33 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %32, i32 0, i32 0
  %34 = getelementptr inbounds nuw %"class.std::_String_val", ptr %33, i32 0, i32 1
  store i64 %31, ptr %34, align 8
  %35 = load i64, ptr %10, align 8
  %36 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %37 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %36, i32 0, i32 0
  %38 = getelementptr inbounds nuw %"class.std::_String_val", ptr %37, i32 0, i32 2
  store i64 %35, ptr %38, align 8
  %39 = load ptr, ptr %6, align 8
  %40 = load i64, ptr %7, align 8
  %41 = load ptr, ptr %12, align 8
  %42 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %41) #11
  call void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %42, i64 noundef %40, ptr noundef %39)
  %43 = load i64, ptr %9, align 8
  %44 = icmp ugt i64 %43, 15
  br i1 %44, label %45, label %56

45:                                               ; preds = %19
  %46 = load i64, ptr %9, align 8
  %47 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %48 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %47, i32 0, i32 0
  %49 = getelementptr inbounds nuw %"class.std::_String_val", ptr %48, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %11, align 8
  call void @"?_Deallocate_for_capacity@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CAXAEAV?$allocator@D@2@QEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %51, ptr noundef %50, i64 noundef %46) #11
  %52 = load ptr, ptr %12, align 8
  %53 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %54 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %53, i32 0, i32 0
  %55 = getelementptr inbounds nuw %"class.std::_String_val", ptr %54, i32 0, i32 0
  store ptr %52, ptr %55, align 8
  br label %60

56:                                               ; preds = %19
  %57 = getelementptr inbounds nuw %"class.std::basic_string", ptr %14, i32 0, i32 0
  %58 = getelementptr inbounds nuw %"class.std::_Compressed_pair", ptr %57, i32 0, i32 0
  %59 = getelementptr inbounds nuw %"class.std::_String_val", ptr %58, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  br label %60

60:                                               ; preds = %56, %45
  ret ptr %14
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
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
define linkonce_odr dso_local void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@SA?A?<auto>@@QEAD10@Z"(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %10, ptr noundef %9, i64 noundef %8) #11
  store i8 0, ptr %7, align 1
  %12 = load ptr, ptr %6, align 8
  %13 = load i64, ptr %5, align 8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 %13
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %7) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@PEBD@std@@YAXAEAV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@$$QEAPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0AEBUUuid@sdep@@$0A@@?$optional@UUuid@sdep@@@std@@QEAA@AEBUUuid@sdep@@@Z"(ptr noundef nonnull returned align 1 dereferenceable(17) %0, ptr noundef nonnull align 1 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::in_place_t", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %5, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = call noundef ptr @"??0?$_Optional_construct_base@UUuid@sdep@@@std@@QEAA@Uin_place_t@1@AEBUUuid@sdep@@@Z"(ptr noundef nonnull align 1 dereferenceable(17) %6, i8 %9, ptr noundef nonnull align 1 dereferenceable(16) %7) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$optional@UUuid@sdep@@@std@@QEAA@Unullopt_t@1@@Z"(ptr noundef nonnull returned align 1 dereferenceable(17) %0, i8 %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::nullopt_t", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds nuw %"struct.std::nullopt_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"??0?$_Optional_construct_base@UUuid@sdep@@@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(17) %6) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @"??0?$_Optional_construct_base@UUuid@sdep@@@std@@QEAA@Uin_place_t@1@AEBUUuid@sdep@@@Z"(ptr noundef nonnull returned align 1 dereferenceable(17) %0, i8 %1, ptr noundef nonnull align 1 dereferenceable(16) %2) unnamed_addr #0 align 2 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = call noundef ptr @"??$?0AEBUUuid@sdep@@@?$_Optional_destruct_base@UUuid@sdep@@$00@std@@QEAA@Uin_place_t@1@AEBUUuid@sdep@@@Z"(ptr noundef nonnull align 1 dereferenceable(17) %8, i8 %11, ptr noundef nonnull align 1 dereferenceable(16) %9) #11
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0AEBUUuid@sdep@@@?$_Optional_destruct_base@UUuid@sdep@@$00@std@@QEAA@Uin_place_t@1@AEBUUuid@sdep@@@Z"(ptr noundef nonnull returned align 1 dereferenceable(17) %0, i8 %1, ptr noundef nonnull align 1 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"struct.std::in_place_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw %"struct.std::in_place_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base.20", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 16, i1 false)
  %11 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base.20", ptr %8, i32 0, i32 1
  store i8 1, ptr %11, align 1
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Optional_construct_base@UUuid@sdep@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(17) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0?$_Optional_destruct_base@UUuid@sdep@@$00@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(17) %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Optional_destruct_base@UUuid@sdep@@$00@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(17) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base.20", ptr %3, i32 0, i32 0
  %5 = call noundef ptr @"??0_Nontrivial_dummy_type@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %4) #11
  %6 = getelementptr inbounds nuw %"struct.std::_Optional_destruct_base.20", ptr %3, i32 0, i32 1
  store i8 0, ptr %6, align 1
  ret ptr %3
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline noreturn optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
