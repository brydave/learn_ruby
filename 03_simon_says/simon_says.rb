def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, numTimes=2)
  array = []

  numTimes.times do |x|
    array.push (word)
  end

  return array.join(" ")
end

def start_of_word(word, letter=0)
  array = word.split("")
  theStart = 0
  theLetters = []
  until theStart > (letter - 1)
    theLetters.push(array[theStart])
    theStart +=1;
  end 

  return theLetters.join("")
end

def first_word(myString)
  myArray = myString.split(' ')
  return myArray[0]
end

smallWords = {"The" => 1}

def titleize(myString)
  smallWords = ['the', 'over', 'an', 'and']
  myString.downcase!

  myArray = myString.split(' ')
  myArray.each_with_index do |words, index|
    if smallWords.include?(words)
      myArray.map!{|x|x == myArray[index] ? x.downcase : x}
    else
      myArray.map!{|x|x == myArray[index] ? x.capitalize : x}
    end
  end

  myArray.map!{|x|x == myArray[0] ? x.capitalize : x}
  return myArray.join(" ")
end

titleize("The Bridge over the River Kwai")





