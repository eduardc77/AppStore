//
//  AppLargeCard3.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI


struct AppLargeCard3: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("CATEGORY")
				.font(.headline)
				.foregroundColor(.white)
			
			
			Text("Headline")
				.font(.title)
				.fontWeight(.bold)
				.foregroundColor(.white)
				.frame(height: 75)
			
			Spacer()
			
			VStack {
				AppSmallCard2()
				Divider()
				AppSmallCard2()
				Divider()
				AppSmallCard2()
				Divider()
				AppSmallCard2()
			}
		}
		.padding()
		.frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width * 1.1)
		.background(Color(UIColor.systemGray2))
		.clipShape(RoundedRectangle(cornerRadius: 20))
	}
}


struct AppLargeCard3_Previews: PreviewProvider {
	static var previews: some View {
		AppLargeCard3()
	}
}
