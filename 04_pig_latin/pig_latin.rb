#write your code here

#def translate word
  # vowelArray = ["a", "e", "i", "o", "u", "y"]
  # wordArray = word.split("")
  # output = ""
  # vowelArray.each do |vowel| 
  #   if wordArray[0] == vowel
  #     output = word + "ay"
  #     return output
  #   end
  #   break
  # end

#   firstLetter = wordArray.slice!(0, 1)
#   puts firstLetter
#   wordArray.push(firstLetter)
#   puts wordArray
#   wordArray.join() + "ay"
# end
#square
def translate_word(word)
  first_letter = word[0].downcase
  
  if word[0..1] == "qu"
    return word[2..-1] + word[0..1] + "ay"
  end
  if word[0] == "s" && word[1..2] == "qu"
    
    return word[3..-1] + word[0] + word[1..2] + "ay"
  end

  if ["a", "e", "i", "o", "u"].include?(first_letter)
    #translate word that starts with vowel
    "#{word}ay"
  else
    #translate word that starts with consonant(s)
    consonants = []
    consonants << word[0]

      if["a", "e", "i", "o", "u"].include?(word[1]) == false
        consonants << word[1]

          if["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]

          end

      end
        "#{word[consonants.length..-1] + consonants.join + "ay"}"
  end
end

def translate(string)
  a = string.split(" ")
  b = a.map {|word| translate_word(word)}
  b.join(" ")
end
  
puts translate_word("square")
  
  
  

  
