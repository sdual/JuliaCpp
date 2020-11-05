module CppHello
using CxxWrap
  @wrapmodule(joinpath("/Users/sdual/git/quantum/qulacs/bin", "libcppsimjl"))

  function __init__()
    @initcxx
  end
end

# Call greet and show the result
@show CppHello.greet()
