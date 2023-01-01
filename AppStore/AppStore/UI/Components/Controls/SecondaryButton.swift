//
//  SecondaryButton.swift
//  AppStore
//
//  Created by Eduard Caziuc on 18.12.2022.
//

import SwiftUI

struct SecondaryButton: View {
	@Environment (\.colorScheme) var colorScheme: ColorScheme
	@State var isPresented = false
	let title: String
	var backgroundColor: Color = Color(.tertiarySystemGroupedBackground)
	
	var body: some View {
		Button {
			isPresented = true
		} label: {
			Text(title)
				.fontWeight(.semibold)
				.frame(maxWidth: .infinity)
				.frame(height: 36)
				.foregroundColor(colorScheme == .light ? .blue : .white)
				.background(backgroundColor)
				.cornerRadius(12)

		}
		.sheet(isPresented: $isPresented) {
			DetailView(title: title)
		}
	}
}


struct SecondaryButton_Previews: PreviewProvider {
	static var previews: some View {
		SecondaryButton(title: "Title")
	}
}
