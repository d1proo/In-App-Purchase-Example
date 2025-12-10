//
//  Untitled.swift
//  In-App-Purchase-Example
//
//  Created by Дмитрий Прохоренко on 10.12.2025.
//

import SwiftUI

struct SubscriptionComponent: View {
	let title: String
	let price: String
	var width: CGFloat
	
	var body: some View {
		VStack {
			Text(title)
			Text(price)
		}
		.padding(10)
		.overlay(
			RoundedRectangle(cornerRadius: 10)
				.stroke(Color.gray, lineWidth: width)
		)
	}
}
