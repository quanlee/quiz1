module HelperMethods

  def titleize(input)
    ret_string = ""
    words = input.split(" ")
    words.each do |word|
      if word == "if" || word == "the" || word == "of" || word == "and" || word == "or" || word == "from"
        ret_string = ret_string + word + " "
      else
        ret_string = ret_string + word.capitalize + " "
      end
    end
    return ret_string.chomp(" ")
  end

end
