# Autogenerated wrapper script for Qemu_jll for x86_64-apple-darwin14
export qemu_system_x86_64

using Pixman_jll
using Glib_jll
using PCRE_jll
using Gettext_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `qemu_system_x86_64`
const qemu_system_x86_64_splitpath = ["bin", "qemu-system-x86_64"]

# This will be filled out by __init__() for all products, as it must be done at runtime
qemu_system_x86_64_path = ""

# qemu_system_x86_64-specific global declaration
function qemu_system_x86_64(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(ENV["PATH"], ':', PATH)
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(ENV[LIBPATH_env], ':', LIBPATH)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(qemu_system_x86_64_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Pixman_jll.PATH_list, Glib_jll.PATH_list, PCRE_jll.PATH_list, Gettext_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Pixman_jll.LIBPATH_list, Glib_jll.LIBPATH_list, PCRE_jll.LIBPATH_list, Gettext_jll.LIBPATH_list,))

    global qemu_system_x86_64_path = abspath(joinpath(artifact"Qemu", qemu_system_x86_64_splitpath...))

    push!(PATH_list, dirname(qemu_system_x86_64_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

