module PythonCall_tst
using PythonCall


const WFDB = PythonCall.pynew() # initially NULL
function __init__()
    PythonCall.pycopy!(WFDB, pyimport("wfdb"))
end
export WFDB

function read_ann(file::String)
    record, ext = splitext(file)
    ann = WFDB.rdann(record, ext[2:end])
    pos = PythonCall.pyconvert(Vector{Int}, ann.sample)
    anntype = PythonCall.pyconvert(Vector{Symbol}, ann.symbol)
    fs = PythonCall.pyconvert(Float64, ann.fs)

    return ann, pos, anntype, fs
end


# some orfinary func from library docs
function py_test(;file::String = "this/is/demonstration/function")
    re = pyimport("re")
    words = re.findall("[a-zA-Z]+",file)
    sentence = Py(" ").join(words)
    return pyconvert(String, sentence)
end

export py_test


function julia_main()::Cint
    try
        py_test()
    catch
        Base.invokelatest(Base.display_error, Base.catch_stack())
        return 1
    end
    return 0
end

end
