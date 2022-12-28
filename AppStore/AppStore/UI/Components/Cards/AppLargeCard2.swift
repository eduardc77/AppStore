//
//  AppLargeCard2.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI


struct AppLargeCard2: View {
	var body: some View {
		VStack(alignment: .leading) {
			Spacer()
			
			Text("Headline")
				.font(.system(size: 40))
				.fontWeight(.bold)
				.foregroundColor(.white)
				.padding(.horizontal)
			
			AppSmallCard1(titleColor: .white, subtitleColor: .white, buttonDescriptionColor: .white)
				.padding(20)
				.background(Color.secondary)
		}
		.frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width * 1.1)
		.background(Color(UIColor.systemGray2))
		.clipShape(RoundedRectangle(cornerRadius: 20))
		.padding(.vertical, 8)
	}
}


struct AppLargeCard2_Previews: PreviewProvider {
	static var previews: some View {
		AppLargeCard2()
	}
}
