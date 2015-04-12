require_relative 'reverse_letters'

#def anagram(letters)
    
#end

def find_anagram(string)
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

puts find_anagram("dog")