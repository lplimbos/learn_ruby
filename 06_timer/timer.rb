class Timer
  #write your code here
  attr_reader :seconds, :minutes, :hours
  @@seconds = 0
  @@minutes = 0
  @@hours = 0

  def seconds
    return @@seconds
  end

  def minutes
    return @@minutes
  end

  def hours
    return @@hours
  end

  def seconds=integer
    @@seconds = integer
  end

  def minutes=integer
    @@minutes = integer
  end

  def hours=integer
    @@hours = integer
  end

  def time_string
    res = []

    checkTime()
    
    res.push(add_zero(@@hours))
    res.push(add_zero(@@minutes))
    res.push(add_zero(@@seconds))
    return res.join(":")
  end

  def add_zero(number)
    if(number < 10)
      number = "0" + number.to_s    
    end
    return number
  end

  def checkTime()
    if check60(@@seconds)
      @@minutes = @@minutes + (@@seconds / 60)
      @@seconds = @@seconds % 60
    end

    if check60(@@minutes)
      @@hours = @@hours + (@@minutes / 60)
      @@minutes = (@@minutes % 60) - 1
    end
  end

  def check60(number)
    if number > 60
      return true
    else
      return false
    end
  end
end
