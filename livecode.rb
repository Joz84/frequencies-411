

# Initialiser un hash vide "frequencies"
# convertisse l'article en string
# convertisse en un tableau de mots
# itérer sur le tableau
# pour chaque mot
#   Si ce mot est utilisé comme clé
#     On ingrémente la valeur de 1 (on fait grandir)
#   Sinon
#     On ajoute le couple clé valeur avec pour clé le mot et pour valeur 1

#

frequencies = {}
words = File.open("article.txt").read.downcase.split(" ")

words.each do |word|
  if frequencies.key?(word)
    frequencies[word] += 1
  else
    frequencies[word] = 1
  end
end

sorted_frenquencies = frequencies.sort_by { |word, value| value }.reverse
# sorted_frenquencies = [["the", 17], ["of", 14], ["and", 13], ["computer", 5], ["study", 4]

sorted_frenquencies.each do |frequency|
  puts "- #{frequency[0]} : #{frequency[1]}"
end
