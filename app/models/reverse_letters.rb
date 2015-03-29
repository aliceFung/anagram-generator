def reverse_letters(letters)
  length = letters.length
  reversed_letters = Array.new(length)

  letters.each_with_index do |letter, index|
      reversed_letters[length - index - 1] = letter #ex: 2-1=index of array -current index 0= 1: each index =+1 through loop
  end
  reversed_letters
end


#letters = ["a","b","c"]
#puts reverse_letters(letters)

