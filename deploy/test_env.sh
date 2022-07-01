julia --project=@. --startup-file=no -e '
ENV["JP_ADAPTOR_PY_EXE"] = "C:\\_KTAuto\\backend\\conda\\3\\python.exe";
using PythonCall_tst
@show py_test()
'