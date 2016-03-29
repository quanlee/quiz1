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

module Blog

  class Article
    include HelperMethods
    def title=(new_title)
      @title = titleize new_title
    end

    def title
      @title
    end

    def body=(new_body)
      @body = new_body
    end

    def body
      @body
    end

  end

  class Snippet < Article
    def body=(new_body)
      if new_body.length > 100
        @body = new_body.slice(0,100) + "..."
      else
        super
      end
    end
  end

end

myarticle = Blog::Article.new
myarticle.title = "hello world what is and the if"
myarticle.body = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
puts ""
puts "myarticle title is #{myarticle.title}"
puts "myarticle body is #{myarticle.body}"
puts ""

mysnippet = Blog::Snippet.new
mysnippet.title = "hello world is if and the what"
mysnippet.body = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
puts ""
puts "mysnippet title is #{mysnippet.title}"
puts "mysnippet body is #{mysnippet.body}"
