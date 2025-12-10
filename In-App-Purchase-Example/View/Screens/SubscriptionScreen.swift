//
//  OnbordingScreen.swift
//  In-App-Purchase-Example
//
//  Created by Дмитрий Прохоренко on 10.12.2025.
//

import SwiftUI

struct SubscriptionScreen: View {
	
	@EnvironmentObject var subscriptionController: SubscriptionController
	
	@State private var selectedWidth: CGFloat = 1
	
	var body: some View {
		HStack(spacing: 20) {
			SubscriptionComponent(
				title: subscriptionController.monthPlan.title,
				price: subscriptionController.monthPlan.price,
				width: subscriptionController.selectedPlan == subscriptionController.monthPlan ? 2 : 1
			)
			.onTapGesture {
				withAnimation {
					subscriptionController.selectPlan(subscriptionController.monthPlan)
				}
			}

			SubscriptionComponent(
				title: subscriptionController.yearPlan.title,
				price: subscriptionController.yearPlan.price,
				width: subscriptionController.selectedPlan == subscriptionController.yearPlan ? 2 : 1
			)
			.onTapGesture {
				withAnimation {
					subscriptionController.selectPlan(subscriptionController.yearPlan)
				}
			}
		}
		
		NavigationLink{
			MainScreen()
		} label: {
			Text("Продолжить")
		}
		.padding(10)
		.border(Color.black)
		.disabled(subscriptionController.selectedPlan == nil)
	}
}

#Preview {
	SubscriptionScreen()
		.environmentObject(SubscriptionController())
}
