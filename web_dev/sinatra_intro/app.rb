# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/search_input/student' do
  "Please enter a name to search for"
  search_input = gets.chomp
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])[search_input]
  student.to_s
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

get '/contact' do
  contact = "1033 W Van Buren St, Chicago, IL 60607"
  "#{contact}"
end

get '/great_job/:person' do
  person = params[:name]
  if great_job
    "Good job!, #{person}!"
  else
    "Good job!"
end

get '/num_1/num_2'
  num_1 = 5
  num_2 = 10
  result = num_1 + num_2
  "The result of #{num_1} and #{num_2} is #{result.to_s}"
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end