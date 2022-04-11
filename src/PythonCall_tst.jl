module PythonCall_tst
using PythonCall


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
