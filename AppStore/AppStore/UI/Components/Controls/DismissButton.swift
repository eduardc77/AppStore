//
//  DismissButton.swift
//  AppStore
//
//  Created by Eduard Caziuc on 19.12.2022.
//

import SwiftUI

struct DismissButton: View {
	var title: String
	@Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
	
	var body: some View {
		Button(title) {
			self.presentationMode.wrappedValue.dismiss()
		}
	}
}


struct DismissButton_Previews: PreviewProvider {
	static var previews: some View {
		DismissButton(title: "Done")
	}
}
