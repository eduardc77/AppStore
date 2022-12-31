//
//  AppMediumCard1.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI


struct AppMediumCard1: View {
	var body: some View {
		VStack(alignment: .center) {
			RoundedRectangle(cornerRadius: 32, style: .continuous)
				.foregroundColor(Color.gray)
				.aspectRatio(CGSize(width: 1, height: 1), contentMode: .fit)
			
			ItemTitleLabel(text: "App title")
				.lineLimit(1)
				.frame(width: 160)
			
			ItemDetailsLabel(text: "Description")
				.lineLimit(1)
				.frame(width: 160)
		}
	}
}

struct AppMediumCard1_Previews: PreviewProvider {
	static var previews: some View {
		AppMediumCard1()
	}
}


