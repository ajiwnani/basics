def assert_equal(expected, actual)
  unless expected == actual
    abort "Expected #{expected} to match #{actual} on line #{caller.first.split(":")[1]}"
  end
end

def ___(*arguments)
  abort  "You have to fill in the blank on line #{caller.first.split(":")[1]}".center(100, "*")
end

categories=["a", "b", "c"]
assert_equal categories [a,b]

Array.new
categories=["a","b", "c"]
assert_equal categories, [a,b]