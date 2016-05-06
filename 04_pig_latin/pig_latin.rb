def translate(words)
  vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
  schoolRule = ['s', 'c', 'h']
  myWord = []
  translated = []

  # split the sentence into words
  mySentence = words.split(" ")

  # split each word into letters
  mySentence.each do |w|
    myWord.push(w.split(//)) 

    # check the first three letters
    if (w[0,1] == 's') && (w[1,1] == 'c')  && (w[2,1] == 'h')
      myWord.push(w)
    end
  end
  
  myWord.each do |l|
    if vowels.include?(l[0])
      pigsay = l.join + "ay"
    elsif consonants.include?(l[0]) && consonants.include?(l[1])
      firstTwo = l[0..1]
      l.push(firstTwo)
      l.shift(2)
      pigsay = l.join + "ay"
    else
      firstConsonant = l[0]
      l.push(firstConsonant)
      l.shift
      pigsay = l.join + "ay"
    end

    puts pigsay
    # translated.push(pigsay)
  end

  puts translated.join(' ')
  
end

translate("school")