//
//  InAppPurchasesLabel.swift
//  AppStore
//
//  Created by Eduard Caziuc on 24.12.2022.
//

import SwiftUI

struct InAppPurchasesLabel: View {
	var title: String = "In-App Purchases"
	var titleColor: Color = .primary

	var body: some View {
		Text(title)
			.font(.system(size: 8))
			.foregroundColor(titleColor)
	}
}


struct InAppPurchasesLabel_Previews: PreviewProvider {
	static var previews: some View {
		InAppPurchasesLabel()
	}
}
