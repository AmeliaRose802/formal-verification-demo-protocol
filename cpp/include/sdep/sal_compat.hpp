// SPDX-License-Identifier: MIT
// SDEP — SAL annotation compatibility shim.
//
// The protocol library is primarily modern C++ (spans, views, vectors),
// but its raw-pointer boundary functions are annotated with SAL so static
// analyzers (MSVC /analyze, clang-tidy with SAL plug-ins) can reason about
// buffer sizes and ownership. On non-MSVC toolchains the macros expand to
// nothing.
#pragma once

#if defined(_MSC_VER)
    #include <sal.h>
#else
    #ifndef _In_
        #define _In_
        #define _In_opt_
        #define _In_z_
        #define _In_reads_(s)
        #define _In_reads_bytes_(s)
        #define _In_reads_z_(s)
        #define _Out_
        #define _Out_opt_
        #define _Out_writes_(s)
        #define _Out_writes_all_(s)
        #define _Out_writes_bytes_(s)
        #define _Out_writes_bytes_all_(s)
        #define _Inout_
        #define _Inout_opt_
        #define _Inout_updates_(s)
        #define _Ret_maybenull_
        #define _Ret_notnull_
        #define _Success_(expr)
        #define _Check_return_
        #define _Must_inspect_result_
    #endif
#endif
