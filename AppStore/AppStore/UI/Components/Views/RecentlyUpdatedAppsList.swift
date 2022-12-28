//
//  RecentlyUpdatedAppsList.swift
//  AppStore
//
//  Created by Eduard Caziuc on 20.12.2022.
//

import SwiftUI

struct RecentlyUpdatedAppsList: View {
	let title: String
	let date: String
	let description: String = "Release notes"
	let range: Range<Int>
	
	
	var body: some View {
		ForEach(range, id: \.self) {_ in
			VStack {
				AppSmallCard1()
				Spacer()
				HStack {
					Text(description)
						.font(.subheadline)
					
					Spacer()
					
					Button("more"){}
						.accentColor(.blue)
						.font(.subheadline)
				}
			}
			.padding(.vertical, 10)
		}
	}
}


struct RecentlyUpdatedAppsList_Previews: PreviewProvider {
	static var previews: some View {
		RecentlyUpdatedAppsList(title: "Title", date: "Today", range: Range(0...0))
	}
}
