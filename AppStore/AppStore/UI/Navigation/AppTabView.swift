//
//  AppTabView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 18.12.2022.
//

import SwiftUI

struct AppTabView: View {

	var body: some View {
		TabView {
			TodayView()
				.tabItem {
					Image(systemName: "doc.text.image")
					Text("Today")
				}

			GamesView()
				.tabItem {
					Image(systemName: "paperplane.fill")
					Text("Games")
				}

			AppsView()
				.tabItem {
					Image(systemName: "square.stack.3d.up.fill")
					Text("Apps")
				}

			ArcadeView()
				.tabItem {
					Image(systemName: "gamecontroller.fill")
					Text("Arcade")
				}

			SearchView()
				.tabItem {
					Image(systemName: "magnifyingglass")
					Text("Search")
				}
		}
	}
}


struct AppTabView_Previews: PreviewProvider {
	static var previews: some View {
		AppTabView()
	}
}
