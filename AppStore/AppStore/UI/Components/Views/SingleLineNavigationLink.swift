//
//  SingleLineNavigationLink.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct SingleLineNavigationLink: View {
	let text: String
	
	var body: some View {
		NavigationLink(
			destination: Text(text)
				.navigationTitle(text),
			label: {
				Text(text)
			}
		)
	}
}


struct SingleLineNavigationLink_Previews: PreviewProvider {
	static var previews: some View {
		SingleLineNavigationLink(text: "Description")
			.previewLayout(.sizeThatFits)
	}
}
