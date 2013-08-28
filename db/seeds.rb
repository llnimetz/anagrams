# File.open(File.expand_path('../dictionary.txt', 'r')).each do |word|
#   sorted_word = word.chomp.downcase.split('').sort.join
#   new_word = Word.new({:name => word.chomp, :sorted => sorted_word})
#   new_word.save!
# end

IO.readlines('dictionary.txt').map do |word|
  sorted_word = word.chomp.downcase.split("").sort.join
  new_word = Word.new({:name => word.chomp.downcase, :sorted => sorted_word})
  new_word.save!
end

