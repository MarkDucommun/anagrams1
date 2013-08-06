file = File.open("/Users/apprentice/Desktop/anagrams/db/words.txt")
while (word = file.gets.chomp)
  Word.create(length: word.length, term: word)
end 
