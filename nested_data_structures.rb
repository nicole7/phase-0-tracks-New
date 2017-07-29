highway = {
	north_bound: {
		pretty_name: 'North Bound',
		blue_car: {
			total_people: 4,
			destination: 'Madison, WI'
		},
		white_truck: {
			total_people: 1,
			destination: 'Chicago, IL'
		},
		
		grey_suv: {
			total_people: 5,
			destination: 'Wilmette, IL'
		},
		traffic_and_weather: [
			'Slow', 'Rainy'
		]
	},#Close for north_bound

	#Don't forget the commas in between to separate everything out!
	#Don't need => when you have :

	south_bound: {
		pretty_name: 'South Bound',
		yellow_sports_car: {
			total_people: 1,
			destination: 'Joliet'
		},
		green_jeep: {
			total_people: 3,
			destination: 'Bloomington, IL'
		},
		black_semi: {
			total_people: 1,
			destination: 'St, Louis, MO'
		},
		traffic_and_weather: [
			'Moderate', 'Rainy'
		]
	}#Close for south_bound
}#Close for highway hash

#Prints the hash for the blue car that includes how many ppl in it and destination
p highway[:north_bound][:blue_car]

#Changes Slow at index 0 to Moderate
highway[:north_bound][:traffic_and_weather][0] = "Moderate"
p highway[:north_bound][:traffic_and_weather]

#Picked up a hitchhiker
highway[:south_bound][:green_jeep] = 4
puts highway[:south_bound][:green_jeep]
