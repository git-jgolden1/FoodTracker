//
//  FoodTrackerApp.swift
//  FoodTracker
//
//  Created by Jonathan Gurr on 2/10/21.
//

import SwiftUI

@main
struct FoodTrackerApp: App {
	let persistenceController = PersistenceController.shared
	
	var app: AppState
	
	init() {
		app = AppState()
	}
	
	var body: some Scene {
		WindowGroup {
			ContentView(appState: app)
				.environment(\.managedObjectContext, persistenceController.container.viewContext)
		}
		
	}
}
