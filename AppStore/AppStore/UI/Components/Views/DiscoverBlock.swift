//
//  DiscoverBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct DiscoverBlock: View {
	@Binding var text: String
	var discoverSearches = DiscoverSearch.allCases

	var body: some View {
		VStack(alignment: .leading) {
			Text("Discover")
				.font(.title2.weight(.bold))

			ForEach(discoverSearches, id: \.self) { search in
				Divider()

				Button {
					text = search.title
				} label: {
					Text(search.title)
						.font(.title3)
						.frame(maxWidth: .infinity, alignment: .leading)
				}
			}
		}
		.padding()
	}
}

enum DiscoverSearch: String, CaseIterable {
	case tetris
	case youtube
	case metamask
	case videoEditor

	var title: String {
		switch self {
		case .videoEditor:
			return " video editor"
		default:
			return self.rawValue
		}
	}
}


struct DiscoverBlock_Previews: PreviewProvider {
	static var previews: some View {
		DiscoverBlock(text: .constant("text"))
	}
}



