//
//  GamesView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct GamesView: View {
	@State var isAccountViewPresented = false

	var body: some View {
		NavigationView {
			ScrollView {
				AppCarouselLargeBlock()
				AppCarouselSmall1Block(title: "What to Play This Week")
				AppCarouselSmall1Block(title: "New Games We Love")
				AppCarouselMedium1Block(title: "Coming Soon", cellsNumber: 5)
				TopGamesCategoriesBlock()
				QuickLinksBlock()
				TermsAndConditionsBlock()
			}
			.navigationBarTitle("Games")
			.navigationBarItems(trailing: AccountButton(isAccountViewPresented: $isAccountViewPresented))
		}
		.navigationViewStyle(StackNavigationViewStyle())
	}
}


struct GamesView_Previews: PreviewProvider {
	static var previews: some View {
		GamesView()
	}
}
