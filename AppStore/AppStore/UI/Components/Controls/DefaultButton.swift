//
//  DefaultButton.swift
//  AppStore
//
//  Created by Eduard Caziuc on 18.12.2022.
//

import SwiftUI

struct DefaultButton: View {
	@Environment (\.colorScheme) var colorScheme:ColorScheme
	@State var isPresented = false
	let title: String
	
	var body: some View {
		Button(action: {
			isPresented = true
		}) {
			Text(title)
				.fontWeight(.semibold)
				.frame(maxWidth: .infinity)
				.frame(height: 44)
				.foregroundColor(colorScheme == .light ? .blue : .white)
				.background(Color(.tertiarySystemGroupedBackground))
				.cornerRadius(10)
		}
		.sheet(isPresented: self.$isPresented) {
			DetailView(title: title)
		}
	}
}


struct DefaultButtonView_Previews: PreviewProvider {
	static var previews: some View {
		DefaultButton(title: "Title")
	}
}
