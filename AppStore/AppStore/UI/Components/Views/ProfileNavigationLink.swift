//
//  ProfileNavigationLink.swift
//  AppStore
//
//  Created by Eduard Caziuc on 20.12.2022.
//

import SwiftUI

struct ProfileNavigationLink: View {
	let username: String
	let email: String
	var image: Image = Image(systemName: "person.crop.circle.fill")
	
	var body: some View {
		NavigationLink(
			destination: EmptyView(),
			label: {
				HStack {
					image
						.font(.system(size: 50))
						.padding(.horizontal, 5)
						.foregroundColor(.secondary)
					
					VStack (alignment: .leading, spacing: 5) {
						Text(username)
						Text(email)
							.font(.caption)
					}
				}
			}
		)
	}
}

struct ProfileNavigationLink_Previews: PreviewProvider {
	static var previews: some View {
		ProfileNavigationLink(username: "John Appleseed", email: "john.appleseed@icloud.com")
			.previewLayout(.sizeThatFits)
	}
}
