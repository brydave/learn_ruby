# Remember that one degree fahrenheit is 5/9 of one degree celsius, and that the freezing point of water is 0 degrees celsius but 32 degrees fahrenheit.
#
# In integer math, there **are no fractions**. So if you are using integer literals, you will be using integer math, which means, for example...
#
#    1 / 2 => 0
#
# In floating point math, there **are** fractions. So...
#
#    1.0 / 2.0 => 0.5
#


def ftoc(tempInF)
  tempInC = (tempInF - 32) / 1.8
  return tempInC.round
end

def ctof(tempInC)
  tempInF = tempInC * 1.8 + 32
  return tempInF.to_f
end

temp = ftoc(98.6)

print temp