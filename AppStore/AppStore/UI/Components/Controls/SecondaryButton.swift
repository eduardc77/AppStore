//
//  SecondaryButton.swift
//  AppStore
//
//  Created by Eduard Caziuc on 18.12.2022.
//

import SwiftUI

struct SecondaryButton: View {
	@State var isPresented = false
	let title: String
	
	var body: some View {
		Button {
			isPresented = true
		} label: {
			Text(title)
				.font(.headline)
				.frame(maxWidth: .infinity)
		}
		.buttonStyle(.bordered)
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
