//
//  OnbordingScreen.swift
//  In-App-Purchase-Example
//
//  Created by Дмитрий Прохоренко on 10.12.2025.
//

import SwiftUI

struct OnbordingScreen: View {
	
	@EnvironmentObject var subscriptionController: SubscriptionController
	
	var body: some View {
		VStack (spacing: 20){
			Text("Добро пожаловать в наше приложение!")
			Text("Приобретите подписку!")
			NavigationLink {
				SubscriptionScreen()
			} label: {
				Text("Продолжить")
			}
			.padding(10)
			.border(Color.black)
		}
	}
}

#Preview {
	OnbordingScreen()
}
