classroom = {
		desk1: {
		  pretty_name: 'Sally',
		  desk1_supplies: {
			    pencils: 2,
			    pens: 1,
		  },
		  lunch: [
			  	"Apple",
			  	"Peanut Butter",
			  	"Pretzels"
			]
		},
		desk2: {
		  pretty_name: 'Troy',
		  desk2_supplies: {
		  	pencils: 1,
			  pens: 1,
		},
		lunch: [
				"Ham Sandwich",
				"Carrot Sticks"
		]
		},
		desk3: {
		  pretty_name: 'Billy',
		  desk3_supplies: {
			    pencils: 3,
			    pens: 0,
		},
		lunch: [
				"Cookies"
		]
		}
}

classroom[:desk1][:lunch]
classroom[:desk2][:lunch][1]
classroom[:desk3][:desk3_supplies][:pens] = 1
classroom[:desk3][:lunch].push("Milk")