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
		ScrollView {
			ArcadeHeader()
			AppCarouselSmall1Block(title: "Popular Arcade Games")
			AppCarouselMedium1Block(title: "Arcade Games With Gorgeous Graphics", cellsNumber: 5)
			AppCarouselSmall2Block()
			TermsAndConditionsBlock()
		}
		.edgesIgnoringSafeArea(.top)
	}
}


struct ArcadeView_Previews: PreviewProvider {
	static var previews: some View {
		ArcadeView()
	}
}
