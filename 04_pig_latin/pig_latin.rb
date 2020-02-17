#write your code here
def translate(phrase)
    res = []
    phrase = phrase.split
    phrase.each do |word|
        firstLetter = word.slice(0)
        if is_vowel?(firstLetter)
            word << "ay"
        else
            i = 0
            word = word.split(//)
            stop = true
            
            word.each do |x|
                flag = is_vowel?(x)
                if flag && stop
                    stop = false
                elsif stop
                    i = i + 1
                end
            end

            if word[i] == "u" && word[i-1] == "q"
                i = i + 1
            end

            word = word.join()
            letters = word.slice!(0,i)
            word << "#{letters}ay"
        end
        res.push(word) 
    end
    return res.join(" ")
end

def is_vowel?(vowel)
    if vowel == "a" || vowel == "e" || vowel == "i" || vowel == "o" || vowel == "u"
        return true
    else
        return false
    end
end