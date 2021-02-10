//
//  NutritionTracker.swift
//  FoodTracker
//
//  Created by Jonathan Gurr on 2/9/21.
//

import Foundation

struct NutritionTracker {
	
	var calories = 0.0
	var protein = 0.0
	var sugar = 0.0
	var fats = 0.0
	
	func report() -> String {
		return "So far today, I have consumed approximately \(calories) calories, \(protein) grams of protein, \(sugar) grams of sugar, and \(fats) grams of fat."
	}
	
	mutating func eat(_ food: Food) {
		
		self.calories += food.calories
		self.protein += food.protein
		self.sugar += food.sugar
		self.fats += food.fats
		
	}
	
	mutating func eat(_ food: Food, _ quantity: Double) {
		
		self.calories += food.calories * quantity
		self.protein += food.protein * quantity
		self.sugar += food.sugar * quantity
		self.fats += food.fats * quantity
		
	}
	
	mutating func reset() {
		calories = 0
		protein = 0
		sugar = 0
		fats = 0
	}
	
}
