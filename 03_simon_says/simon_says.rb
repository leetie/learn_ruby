#write your code here
def echo str
  str
end

def shout str
  str.upcase
end

def repeat str, num = 2
  if num == 3
    return str + " " + str + " " + str
  end
  str + " " + str

end

def start_of_word word, num = 1
  #substr
  word[0, num]
end

def first_word str 
  str = str.split
  return str[0]
end

def titleize str
 str = str.gsub(/\w+/) { |word| word.capitalize }
 strArray = str.split

#  for i in strArray.size
#   i = 1
#   if strArray[i] == "And" || strArray[i] == "The" 
#     return strArray[i].downcase
#   end
#   i += 1

  i = 1
  #ignores first word in str.array
  until i == strArray.length do
    if strArray[i] == "And" || strArray[i] == "The" || strArray[i] == "Over"
      strArray[i] = strArray[i].downcase
    end
    i += 1
  end



 #puts str
 return strArray.join(" ")
end

puts titleize "the game is the best"
