//
//  ArcadeView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 18.12.2022.
//

import SwiftUI

struct ArcadeView: View {
	@State var isAccountViewPresented = false

	var body: some View {
		GeometryReader { geoReader in
			ScrollView {
				VStack(spacing: 0) {
					ArcadeHeader()
					AppCarouselSmall1Block(title: "Popular Arcade Games")
					AppCarouselMedium1Block(title: "Arcade Games With Gorgeous Graphics", cellsNumber: 5)
					AppCarouselSmall2Block(size: geoReader.size)
					TermsAndConditionsBlock()
				}
			}
			.edgesIgnoringSafeArea(.top)
			.background(Color(.systemGroupedBackground))
		}
	}
}


struct ArcadeView_Previews: PreviewProvider {
	static var previews: some View {
		ArcadeView()
	}
}
