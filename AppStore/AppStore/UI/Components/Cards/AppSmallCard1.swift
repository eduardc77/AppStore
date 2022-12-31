//
//  AppSmallCard1.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct AppSmallCard1: View {
	var title: String = "App Title"
	var subtitle: String = "App Description"
	var titleColor: Color = .primary
	var subtitleColor: Color = .secondary
	var buttonDescriptionColor: Color = .primary

	var body: some View {
		HStack {
			RoundedRectangle(cornerRadius: 12, style: .continuous)
				.foregroundColor(Color.gray)
				.frame(width: 50, height: 50)
			
			VStack(alignment: .leading) {
				Text(title)
					.bold()
					.foregroundColor(titleColor)
				
				Text(subtitle)
					.font(.subheadline)
					.foregroundColor(subtitleColor)
			}
			
			Spacer()
			
			VStack {
				GetButton()
					.padding(.bottom, 8)
				
				InAppPurchasesLabel(titleColor: buttonDescriptionColor)
			}
		}
	}
}


struct AppSmallCard1_Previews: PreviewProvider {
	static var previews: some View {
		AppSmallCard1()
	}
}
