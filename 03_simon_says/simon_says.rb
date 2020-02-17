#write your code here
def echo(something)
    return something
end

def shout(something)
    return something.upcase
end

def repeat(something, i=2)
    res = ""
    i.times do
        res = "#{something} " + res  
    end
    if res[-1] == " "
        res.slice!(-1)
    end
    return res
end

def start_of_word(word, index)
    return word.slice(0,index)
end

def first_word(phrase)
    return phrase.split(" ")[0]
end

def titleize(word)
    word = word.split
    res = []
    word.each do |x|
        if ((x == "the" || x == "and" || x == "over") && res.length>0)
            res.push(x.downcase)
        else
            res.push(x.capitalize)
        end
    end
    return res.join(" ")
end