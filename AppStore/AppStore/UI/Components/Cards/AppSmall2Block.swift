//
//  AppSmallCard2.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct AppSmallCard2: View {
	var body: some View {
		HStack {
			RoundedRectangle(cornerRadius: 12, style: .continuous)
				.foregroundColor(Color.gray)
				.frame(width: 50, height: 50)
			
			VStack(alignment: .leading) {
				Text("App name")
					.bold()
				
				Text("Description")
					.font(.subheadline)
			}
			.foregroundColor(.white)
			
			Spacer()
			
			TryButton()
		}
	}
}


struct AppSmallCard2_Previews: PreviewProvider {
	static var previews: some View {
		AppSmallCard2()
			.preferredColorScheme(.dark)
			.previewLayout(.sizeThatFits)
	}
}
