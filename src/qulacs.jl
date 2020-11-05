module Qulacs
using CxxWrap
  @wrapmodule(joinpath("/Users/sdual/git/quantum/qulacs/bin", "libcppsimjl"), :define_julia_module)

  function __init__()
    @initcxx
  end
end

# Call greet and show the result
state =  Qulacs.QuantumState(2)
