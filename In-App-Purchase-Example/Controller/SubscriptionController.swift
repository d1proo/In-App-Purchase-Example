//
//  SubscriptionController.swift
//  In-App-Purchase-Example
//
//  Created by Дмитрий Прохоренко on 10.12.2025.
//

import SwiftUI
import Combine

class SubscriptionController: ObservableObject {
	
	@Published var selectedPlan: Subscription? {
		didSet {
			selectedPlanTitle = selectedPlan?.title
		}
	}
	
	let monthPlan = Subscription(title: "Месяц", price: "1 000")
	let yearPlan = Subscription(title: "Год", price: "10 000")
	
	func selectPlan(_ plan: Subscription) {
		selectedPlan = plan
	}
	
	@AppStorage("selectedPlanTitle") private var selectedPlanTitle: String?
	
	init() {
		if let savedTitle = selectedPlanTitle {
			selectedPlan = [monthPlan, yearPlan].first { $0.title == savedTitle }
		} else {
			selectedPlan = nil
		}
	}
}
