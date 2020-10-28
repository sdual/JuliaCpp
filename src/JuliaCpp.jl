module CppHello
  using CxxWrap
  @wrapmodule(joinpath("/Users/sdual/git/julia/libcxxwrap-julia-install/lib", "libhello"))

  function __init__()
    @initcxx
  end
end

# Call greet and show the result
@show CppHello.greet()
