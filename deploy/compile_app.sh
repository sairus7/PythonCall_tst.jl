julia -e 'using Pkg; Pkg.add("PackageCompiler")'

julia --project=@. --startup-file=no -e 'using Pkg; Pkg.instantiate()'

julia --project=@. --startup-file=no -e '
ENV["JP_ADAPTOR_PY_EXE"] = "C:\\_KTAuto\\backend\\conda\\3\\python.exe";
using PackageCompiler;
PackageCompiler.create_app(pwd(), "PythonCallCompiled";
    cpu_target="generic;sandybridge,-xsaveopt,clone_all;haswell,-rdrnd,base(1)",
    include_transitive_dependencies=false,
    filter_stdlibs=true,
    precompile_execution_file=["test/runtests.jl"])
'
