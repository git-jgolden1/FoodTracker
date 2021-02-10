//
//  playground.swift
//  FoodTracker
//
//  Created by Jonathan Gurr on 2/9/21.
//

import Foundation

class Food {
	
	var foodName: String = ""
	
	var calories = 0.0
	var protein = 0.0
	var sugar = 0.0
	var fats = 0.0
	
	func getInfo() -> String {
		return "\(foodName == "" ? "custom combined food" : foodName) contains approximately \(calories) calories, \(protein) grams of protein, \(sugar) grams of sugar, and \(fats) grams of fat."
	}
	
	
	init(foodName: String, calories: Double, protein: Double, sugar: Double, fats: Double) {
		self.foodName = foodName
		self.calories = calories
		self.protein = protein
		self.sugar = sugar
		self.fats = fats
	}
	
	init() {
	}
	
}

func combineFoods(_ ingredients: [Food]) -> Food {
	let newFood = Food()
	for i in 0 ..< ingredients.count {
		newFood.calories += ingredients[i].calories
		newFood.protein += ingredients[i].protein
		newFood.sugar += ingredients[i].sugar
		newFood.fats += ingredients[i].fats
	}
	return newFood
}
