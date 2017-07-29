highway = {
	north_bound: => {
		pretty_name: => "North Bound",
		blue_car: => {
			total_people: 4,
			destination: "Madison, WI"
		}
		white_truck: => {
			total_people: 1,
			destination: "Chicago, IL"
		}
		
		grey_suv: => {
			total_people: 5,
			destination: "Wilmette, IL"
		}
		traffic_type: => [
			"Slow"
		]
	}
	south_bound: => {
		pretty_name: => "South Bound"
		yellow_sports_car: => {
			total_people: 1,
			destination: "Joliet"
		}
		green_jeep: => {
			total_people: 3,
			destination: Bloomington, IL
		}
		black_semi: => {
			total_people: 1,
			destination: "St, Louis, MO"
		}
		traffic_type: => 
			"Moderate"
		]
	}
}

puts highway[north_bound:][blue_car:]