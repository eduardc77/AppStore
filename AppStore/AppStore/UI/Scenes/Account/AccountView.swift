//
//  AccountView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct AccountView: View {
	@Environment(\.presentationMode) var presentationMode

	var body: some View {
		NavigationView {
			List {
				Section {
					ProfileNavigationLink(username: "John Appleseed", email: "john.appleseed@icloud.com")
				}

				Section {
					SingleLineNavigationLink(text: "Purchased")
					SingleLineNavigationLink(text: "Subscriptions")
					SingleLineNavigationLink(text: "Notifications")
				}

				Section {
					SingleLineButton(title: "Redeem Gift Card or Code")
					SingleLineButton(title: "Send Gift Card by Email")
					SingleLineButton(title: "Add Funds to Apple ID")
				}

				Section {
					SingleLineNavigationLink(text: "Personalized Recommendations")
				}

				Section(header: Text("UPDATED RECENTLY")) {
					RecentlyUpdatedAppsList(title: "App title", date: "Today", range: 0..<6)
				}

				Section {
					SingleLineButton(title: "Sign Out")
				}
			}
			.listStyle(.insetGrouped)
			.navigationBarTitle("Account", displayMode: .inline)
			.navigationBarItems(trailing: DismissButton(title: "Done", presentationMode: _presentationMode))
			.refreshable {}

		}
	}
}


struct AccountView_Previews: PreviewProvider {
	static var previews: some View {
		AccountView()
			.preferredColorScheme(.dark)
	}
}
