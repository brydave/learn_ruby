class Book
  attr_accessor :title

  def title
    prepositions = ['and', 'or', 'in', 'of', 'the', 'a', 'an']
    words = @title.split(" ")

    words.each do |word|
      if (!prepositions.include?(word))
        word.capitalize!
      end
    end

    words[0].capitalize!
    
    @title = words.join(' ')
  end

end

@book = Book.new
@book.title = "inferno blocks"
puts @book.title