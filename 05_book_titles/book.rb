class Book 
  attr_accessor :title

  def title=(str)
    str = str.capitalize
    words = str.split(" ")

    small_words = ["and", "or", "the", "if", "a", "in", "of", "an"]
    
    words.each do |word|
      small_words.include?(word) ? next :
      word[0] = word[0].upcase
    end

    @title = words.join(" ")
  end
end

     
    


