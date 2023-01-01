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
			destination:
				Text("Account")
				.navigationTitle("Account"),
			label: {
				HStack {
					image
						.font(.system(size: 48))
						.foregroundColor(.secondary)
					
					VStack (alignment: .leading, spacing: 4) {
						Text(username)
						Text(email)
							.foregroundColor(.secondary)
							.font(.footnote)
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
