require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/pizza.rb')

#INDEX
get '/pizzas' do
  @pizzas=Pizza.all
  erb(:index)
end

#NEW
get '/pizzas/:new' do
@pizza=Pizza.all
erb(:new)
end

# #CREATE
# post 'pizzas'
#   @pizza=Pizza.all
#   erb(:index)


post '/pizzas' do
  pizza = Pizza.new(params) 
  new_pizza = pizza.save

end

#SHOW
get '/pizzas/:id' do
  @pizza=Pizza.find(params[:id])
  erb(:show)
end


#EDIT

#UPDATE

#DESTROY
# post 'pizzas/:id'
#   @pizza=Pizza.all
#   erb(:index)


