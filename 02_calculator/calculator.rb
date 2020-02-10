#write your code here
def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum array
  total = 0
  for i in array
    total += i
  end
  if total == [] || total == 0
    return 0
  end
  total
end

def multiply num1, num2
  num1 * num2
end

def power num1, num2
  num1 ** num2
end