//
//  ContentView.swift
//  In-App-Purchase-Example
//
//  Created by Дмитрий Прохоренко on 10.12.2025.
//

import SwiftUI

struct ContentView: View {

	@StateObject var subscriptionController = SubscriptionController()
	
    var body: some View {
		NavigationStack {
			if subscriptionController.selectedPlan != nil {
				MainScreen()
			} else {
				OnbordingScreen()
			}
		}
		.environmentObject(subscriptionController)
    }
}

#Preview {
    ContentView()
}
