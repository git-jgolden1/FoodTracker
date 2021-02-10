//
//  ContentView.swift
//  FoodTracker
//
//  Created by Jonathan Gurr on 2/10/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
	
	init(appState a: AppState) {
		self.a = a
	}
	
	@Environment(\.managedObjectContext) private var viewContext
	
	@State var userFood = ""
	var a: AppState
	
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

private let itemFormatter: DateFormatter = {
	let formatter = DateFormatter()
	formatter.dateStyle = .short
	formatter.timeStyle = .medium
	return formatter
}()

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(appState: AppState()).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
	}
}
