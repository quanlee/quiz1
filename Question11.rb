
def titleize(input)
  ret_array = []
  words = input.split(" ")
  words.each do |word|
    if word == "if" || word == "the" || word == "of" || word == "and" || word == "or" || word == "from"
      ret_array.push word
    else
      ret_array.push word.capitalize
    end
  end
  return ret_array.join(" ")
end


puts titleize "hello world if the of and or from what"
