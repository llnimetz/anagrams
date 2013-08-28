class Word < ActiveRecord::Base
  # Remember to create a migration!
  def anagrams
    sorted_input = self.name.downcase.split('').sort.join
    # p sorted_input
    @ana_array = Word.where(sorted: sorted_input)
    # p ana_array
  end
end
