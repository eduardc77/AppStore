//
//  SingleLineButton.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct SingleLineButton: View {
	@State var isPresented = false
	let title: String
	
	var body: some View {
		Button {
			isPresented = true
		} label: {
			Text(title)
		}
		.sheet(isPresented: $isPresented) {
			DetailView(title: title)
		}
	}
}


struct SingleLineButton_Previews: PreviewProvider {
	static var previews: some View {
		SingleLineButton(isPresented: false, title: "GET")
			.previewLayout(.sizeThatFits)
	}
}
