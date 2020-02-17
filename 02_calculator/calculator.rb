#write your code here
def add(num1, num2)
    res = num1 + num2
    return res
end

def subtract(num1, num2)
    res = num1 - num2
    return res
end

def sum(array)
    res = 0
    array.each{ |n|
        res = res + n
    }
    return res
end

def multiply(array)
    res = 1
    array.each { |n|
        res = res * n
    }
    return res
end

def power(num1, num2)
    res = num1 ** num2
    return res
end

def factorial(num)
    fact = 1
    i = 1

    until i > num
        fact = i * fact
        i = i + 1
    end

    return fact
end