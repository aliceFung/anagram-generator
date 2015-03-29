require_relative 'reverse_letters'

#def anagram(letters)
    
#end

def find_anagram(string)
    anagram=[]
    string = string.chomp
    letters=[]
    string.each_char { |c| letters << c }
    letters.each do |c|
        leftover = letters.select {|letter| letter!=c}
        anagram << c + leftover.join
        anagram << c + reverse_letters(leftover).join
    end
    return anagram
end

puts find_anagram("dog")