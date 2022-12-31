//
//  ItemDetailsLabel.swift
//  AppStore
//
//  Created by Eduard Caziuc on 23.12.2022.
//

import SwiftUI

struct ItemDetailsLabel: View {
	let text: String
	
	var body: some View {
		Text(text)
			.font(.footnote)
			.foregroundColor(.secondary)
	}
}


struct ItemDetailsLabel_Previews: PreviewProvider {
	static var previews: some View {
		ItemDetailsLabel(text: "Details")
	}
}



