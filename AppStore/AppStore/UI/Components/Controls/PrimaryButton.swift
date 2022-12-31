//
//  PrimaryButton.swift
//  AppStore
//
//  Created by Eduard Caziuc on 31.12.2022.
//

import SwiftUI

struct PrimaryButton: View {
	@State var isPresented = false
	let title: String

	var body: some View {
		Button {
			isPresented = true
		} label: {
			Text(title)
				.font(.headline)
				.frame(maxWidth: .infinity, maxHeight: 32)
		}
		.buttonStyle(.borderedProminent)
		.sheet(isPresented: self.$isPresented) {
			DetailView(title: title)
		}
	}
}


struct PrimaryButton_Previews: PreviewProvider {
	static var previews: some View {
		PrimaryButton(title: "Title")
	}
}
