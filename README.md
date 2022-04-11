# PythonCall_tst

An error occurs when i'm trying to run created app which uses PythonCall.

To create an app run file **deploy/compile_app.sh** .
Tests and building proccess run correctly but when i'm runing `PythonCall_tst.exe` in cmd, i have an error:
`fatal: error thrown and no exception handler available.
InitError(mod=:C, error=ErrorException("no environment in the LOAD_PATH depends on CondaPkg"))
error at .\error.jl:33
_resolve_top_env at C:\Users\yzh\.julia\packages\CondaPkg\Olo5Y\src\resolve.jl:16
#resolve#37 at C:\Users\yzh\.julia\packages\CondaPkg\Olo5Y\src\resolve.jl:307
resolve at C:\Users\yzh\.julia\packages\CondaPkg\Olo5Y\src\resolve.jl:288
envdir at C:\Users\yzh\.julia\packages\CondaPkg\Olo5Y\src\env.jl:70
init_context at C:\Users\yzh\.julia\packages\PythonCall\XgP8G\src\cpython\context.jl:56
__init__ at C:\Users\yzh\.julia\packages\PythonCall\XgP8G\src\cpython\CPython.jl:21
jfptr___init___36506.clone_1 at C:\Users\yzh\.julia\dev\PythonCall_tst\PythonCallCompiled\lib\julia\sys.dll (unknown line)
jl_apply at /cygdrive/c/buildbot/worker/package_win64/build/src\julia.h:1788 [inlined]
jl_module_run_initializer at /cygdrive/c/buildbot/worker/package_win64/build/src\toplevel.c:73
_finish_julia_init at /cygdrive/c/buildbot/worker/package_win64/build/src\init.c:796
jl_init_with_image at /cygdrive/c/buildbot/worker/package_win64/build/src\jlapi.c:74 [inlined]
jl_init_with_image at /cygdrive/c/buildbot/worker/package_win64/build/src\jlapi.c:63 [inlined]
jl_init at /cygdrive/c/buildbot/worker/package_win64/build/src\jlapi.c:90
.text at C:\Users\yzh\.julia\dev\PythonCall_tst\PythonCallCompiled\bin\PythonCall_tst.exe (unknown line)
__tmainCRTStartup at C:\Users\yzh\.julia\dev\PythonCall_tst\PythonCallCompiled\bin\PythonCall_tst.exe (unknown line)
.l_start at C:\Users\yzh\.julia\dev\PythonCall_tst\PythonCallCompiled\bin\PythonCall_tst.exe (unknown line)
BaseThreadInitThunk at C:\windows\System32\KERNEL32.DLL (unknown line)
RtlUserThreadStart at C:\windows\SYSTEM32\ntdll.dll (unknown line)`

OS: Windows 10
