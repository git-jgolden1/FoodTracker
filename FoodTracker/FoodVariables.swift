//
//  FoodVariables.swift
//  FoodTracker
//
//  Created by Jonathan Gurr on 2/10/21.
//

import Foundation

class AppState {
	
	var orange: Food
	var flourTortilla: Food
	var burrito: Food
	
	
	init() {
		orange = Food(foodName: "orange", calories: 60, protein: 1, sugar: 12, fats: 0)
		flourTortilla = Food(foodName: "tortilla", calories: 138, protein: 4, sugar: 1.5, fats: 4)
		burrito = combineFoods([orange, flourTortilla], "burrito")
	}
}

