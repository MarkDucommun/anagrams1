get '/' do
  erb :index
end

get '/:query' do
  @query = Word.anagrams?(params[:query])
  erb :index
end

post '/query' do
  @query = params["query"]
  redirect "/#{@query}"
end

#changed
