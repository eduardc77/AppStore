//
//  DetailView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//

import SwiftUI

struct DetailView: View {
	@Environment(\.presentationMode) var presentationMode
	let title: String
	
	var body: some View {
		NavigationView {
			Text(title)
				.navigationBarTitle(title, displayMode: .inline)
				.navigationBarItems(leading: DismissButton(title: "Cancel", presentationMode: _presentationMode))
		}
	}
}


struct DetailView_Previews: PreviewProvider {
	static var previews: some View {
		DetailView(title: "Detail View")
	}
}
