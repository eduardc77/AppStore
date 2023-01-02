//
//  QuickLinksBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 20.12.2022.
//

import SwiftUI

struct QuickLinksBlock: View {
	var quickLinks = QuickLinks.allCases

	var body: some View {
		VStack(alignment: .leading) {
			SectionHeaderBlock(title: "Quick Links")
				.padding(.bottom, 2)
			
			ForEach(quickLinks, id: \.self) { linkRow in
				SingleLineButton(title: linkRow.title)
					.font(.title3)
				Divider()
			}
			
			FooterButtonsBlock()
				.padding(.top)
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding()
	}
}


struct QuickLinksBlock_Previews: PreviewProvider {
	static var previews: some View {
		QuickLinksBlock()
	}
}

enum QuickLinks: CaseIterable {
	case aboutAppStore
	case reportAProblem
	case aboutApps
	case aboutInAppPurchases
	case changePaymentMethod
	case requestARefund
	case aboutPersonalization
	case exploreAppleArcade

	var title: String {
		switch self {
		case .aboutAppStore:
			return "About the App Store"
		case .reportAProblem:
			return "Report a Problem"
		case .aboutApps:
			return "About Apps & Games for Your Kids"
		case .aboutInAppPurchases:
			return "About In-App Purchases"
		case .changePaymentMethod:
			return "Change Your Payment Method"
		case .requestARefund:
			return "Request a Refund"
		case .aboutPersonalization:
			return "About Personalization"
		case .exploreAppleArcade:
			return "Explore Apple Arcade"
		}
	}
}
