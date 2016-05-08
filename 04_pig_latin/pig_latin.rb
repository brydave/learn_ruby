def translate(allWords)
  sentence = allWords.split(/\s/)
  sentence.map!{ |x| translateOne(x) }
  translated = sentence.join(" ")
  return translated
end

def translateOne(word)
  vowels = ['a', 'e', 'i', 'o', 'u', 'y']

  if vowels.include?(word[0])
    pigSpeak = word + "ay"
  elsif (!vowels.include?(word[0])) && ((word[0] == "q") && (word[1] == "u"))
    pigSpeak = word[2..-1] + word[0..1] + "ay"
  elsif (!vowels.include?(word[0])) && ((word[1] == "q") && (word[2] == "u"))
    pigSpeak = word[3..-1] + word[0..2] + "ay"
  elsif (!vowels.include?(word[0])) && (!vowels.include?(word[1])) && (!vowels.include?(word[2]))
    pigSpeak = word[3..-1] + word[0..2] + "ay"
  elsif (!vowels.include?(word[0])) && (!vowels.include?(word[1]))
    pigSpeak = word[2..-1] + word[0..1] + "ay"
  else
    pigSpeak = word[1..-1] + word[0] + "ay"
  end

  return pigSpeak
end

translate("three")
