//
//  ItemTitleLabel.swift
//  AppStore
//
//  Created by Eduard Caziuc on 23.12.2022.
//

import SwiftUI

struct ItemTitleLabel: View {
	let text: String
	
	var body: some View {
		Text(text)
			.bold()
	}
}

struct ItemTitleLabel_Previews: PreviewProvider {
	static var previews: some View {
		ItemTitleLabel(text: "App name")
	}
}
