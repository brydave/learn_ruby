def add(n1,n2)
  sum = n1 + n2
end

def subtract(n1,n2)
  dif = n1 - n2
end

def sum(num)
  if num.length == 0
    num = 0
  else
    num.inject { |sum, n| sum + n }
  end
end

def multiply(num)
  if num.length == 0
    num = 0
  else
    num.inject { |product, n| product * n }
  end
end

def power(num1,num2)
  iHaveThePower = num1 ** num2
end

def factorial(num)
  factorialArray = []

  if num == 0
    num == 1
  else
    while num > 0
      factorialArray.push(num)
      num -= 1
    end
  end  
  
  factotal = factorialArray.reduce(1, :*) 
end

puts factorial(0)
