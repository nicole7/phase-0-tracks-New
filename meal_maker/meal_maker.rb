require 'sqlite3'

db = SQLite3::Database.new("meals.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS meal(
    id INTEGER PRIMARY KEY,
    meat VARCHAR(255),
    vegetable VARCHAR(255),
    sauce VARCHAR(255),
    spice VARCHAR(255),
  )
SQL

db.execute(create_table_cmd)


def add_items(db, meat_array, vegetable_array, sauce_array, spice_array)
	meal_array= []
	randnum = Random.new
	meal_array << meat_array[randnum.rand(meat_array.length)]
	meal_array << vegetable_array[randnum.rand(vegetable_array.length)]
	meal_array << sauce_array[randnum.rand(sauce_array.length)]
	meal_array << spice_array[randnum.rand(spice_array.length)]	

	db.execute("INSERT INTO meal (meat, vegetable, sauce, spice) VALUES (meal_array[0], meal_array[1], meal_array[2], meal_array[3])")
end

def create_item_list(name)
item_array = []
puts "Enter in #{name} you would like to have as part of your recipes. Enter 'done' to exit"
input = ''
index = 0
	while input != 'done'
	input = gets.chomp
		if input == 'done'
			break
		else
			item_array << input
		end
   	    index += 1
	end
	item_array
end

meat_array = create_item_list("meats")
vegetable_array = create_item_list("vegetables")
sauce_array = create_item_list("sauces")
spice_array = create_item_list("spices")

add_items(db, meat_array, vegetable_array, sauce_array, spice_array)








