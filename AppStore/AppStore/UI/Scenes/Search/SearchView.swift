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
		NavigationStack {
			ScrollView {
				DiscoverBlock(text: $text)
				SuggestedAppsBlock()
			}
			.navigationBarTitle("Search")
			.navigationBarItems(trailing: AccountButton(isAccountViewPresented: $isAccountViewPresented))
			.searchable(text: $text,
							placement:.navigationBarDrawer(displayMode:.always),
							prompt: "Games, Apps, Stories and More")
		}
	}
}


struct SearchView_Previews: PreviewProvider {
	static var previews: some View {
		SearchView()
	}
}
