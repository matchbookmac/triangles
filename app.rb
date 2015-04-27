require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangles') do
  side_1 = params.fetch('side_1').to_i
  side_2 = params.fetch('side_2').to_i
  side_3 = params.fetch('side_3').to_i
  @result = ""
  triangle = Triangle.new(side_1, side_2, side_3)
  if triangle.isosceles?()
    @result = "isosceles"
  elsif triangle.equilateral?()
    @result = "equilateral"
  elsif triangle.scalene?()
    @result = "scalene"
  else
    @result = "Sorry, those numbers don't make a triangle"
  end
  erb(:triangles)
end
