//
//  AppsView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI

struct AppsView: View {
	@State var isAccountViewPresented = false

	var body: some View {
		NavigationView {
			ScrollView {
				AppCarouselLargeBlock()
				AppCarouselSmall1Block(title: "Get Ready for Sports")
				AppCarouselMedium2Block(title: "Apps With Free Trials", cellsNumber: 5)
				TopAppsCategoriesBlock()
				QuickLinksBlock()
				TermsAndConditionsBlock()
			}
			.navigationBarTitle("Apps")
			.navigationBarItems(trailing: AccountButton(isAccountViewPresented: $isAccountViewPresented))
		}
	}
}


struct AppsView_Previews: PreviewProvider {
	static var previews: some View {
		AppsView()
	}
}

