//
//  ContentView.swift
//  FoodTracker
//
//  Created by Jonathan Gurr on 2/9/21.
//

import SwiftUI

struct ContentView: View {
	@State var userFood = ""
	
	let orange = Food(foodName: "orange", calories: 60, protein: 1, sugar: 12, fats: 0)
	let flourTortilla = Food(foodName: "tortilla", calories: 138, protein: 4, sugar: 1.5, fats: 4)
	lazy var burrito = combineFoods([orange, flourTortilla], "burrito")
	
    var body: some View {
			
			TextField("enter a food here...", text: $userFood)
				.multilineTextAlignment(.center)
			Button("Add Food") {
				addFood(userFood.lowercased())
			}
//			Text("")
    }
	
	func addFood(_ food: String) {
		if Food.foodList.contains(food) {
			print("that food does exist")
		} else {
			print("that food does not exist")
		}
	}
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
