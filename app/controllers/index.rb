get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @word = Word.where(name: (params[:input_word])).first
  if @word
    @anagram_list = @word.anagrams
  end
  erb :index, :layout => true
end

get '/:input_word' do
  @word = Word.where(name: (params[:input_word])).first
  if @word
    @anagram_list = @word.anagrams
    # @anagram_list -= @word
  end
  erb :index
end
