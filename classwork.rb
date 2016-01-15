# @return [true]
def expect
a = "abc def"
expect(a).to start_with("a").and end_with("f")
  puts ('True')
end

