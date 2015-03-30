class Word
    
    def self.find_anagrams(string)
        anagrams=[]
        string = string.chomp
        letters=[]
        string.each_char { |c| letters << c }
        letters.each do |c|
            leftover = letters.select {|letter| letter!=c}
            anagrams << c + leftover.join
            anagrams << c + reverse_letters(leftover).join
        end
        return anagrams
    end 
    
    def self.reverse_letters(letters)
        length = letters.length
        reversed_letters = Array.new(length)

        letters.each_with_index do |letter, index|
            reversed_letters[length - index - 1] = letter #ex: 2-1=index of array -current index 0= 1: each index =+1 through loop
        end
        reversed_letters
    end

end