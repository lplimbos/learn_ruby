class Book
# write your code here
attr_reader :title

def title=string
    small_words = %w[a an and if or in the of]
    words = string.split(" ")

    words.each do |word|
        word.capitalize! unless small_words.include? word
    end

    words[0].capitalize!
    @title = words.join(" ")
end

end