//
//  SearchView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import SwiftUI

struct SearchView: View {
	@State var isAccountViewPresented = false
	@State var text: String = ""

	var body: some View {
		NavigationView {
			ScrollView {
				DiscoverBlock()
				Spacer()
				SuggestedAppsBlock()
			}
			.navigationBarTitle("Search")
			.searchable(text: $text)
			.navigationBarItems(trailing: AccountButton(isAccountViewPresented: $isAccountViewPresented))
		}
		.navigationViewStyle(StackNavigationViewStyle())
	}
}


struct SearchView_Previews: PreviewProvider {
	static var previews: some View {
		SearchView()
	}
}
