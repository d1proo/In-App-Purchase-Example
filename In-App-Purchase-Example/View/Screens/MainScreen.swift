//
//  MainScreen.swift
//  In-App-Purchase-Example
//
//  Created by Дмитрий Прохоренко on 10.12.2025.
//

import SwiftUI

struct MainScreen: View {
	
	@EnvironmentObject var subscriptionController: SubscriptionController
	
	var body: some View {
		
		VStack (spacing: 20){
			Text("Добро пожаловать!")
			
			if let selectedPlan = subscriptionController.selectedPlan {
						Text("У вас приобретена подписка на \(selectedPlan.title)")
					} else {
						Text("Подписка не выбрана")
					}
		}
	}
}

#Preview {
	MainScreen()
		.environmentObject(SubscriptionController())
}
