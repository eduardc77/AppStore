//
//  SingleLineIconAndButtonView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 20.12.2022.
//

import SwiftUI

struct SingleLineIconAndButtonView: View {
	@State var isPresented = false
	let emojiImage: String
	let buttonTitle: String
	
	var body: some View {
		Button {
			isPresented = true
		} label: {
			HStack {
				Text(emojiImage)
				Text(buttonTitle)
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.sheet(isPresented: self.$isPresented) {
			DetailView(title: buttonTitle)
		}
		
	}
}


struct SingleLineIconAndButtonView_Previews: PreviewProvider {
	static var previews: some View {
		SingleLineIconAndButtonView(emojiImage: "🚀", buttonTitle: "Title")
	}
}
