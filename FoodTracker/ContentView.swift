//
//  ContentView.swift
//  FoodTracker
//
//  Created by Jonathan Gurr on 2/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
			Text("If I was to eat an orange, here would be the facts: \(orange.getInfo())")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
