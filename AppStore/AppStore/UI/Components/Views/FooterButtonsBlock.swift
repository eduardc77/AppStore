//
//  FooterButtonsBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 02.01.2023.
//

import SwiftUI

struct FooterButtonsBlock: View {
	var body: some View {
		VStack {
			SecondaryButton(title: "Redeem")
			SecondaryButton(title: "Send Gift")
			SecondaryButton(title: "Add Funds to Apple ID")
		}
	}
}


struct FooterButtonsBlock_Previews: PreviewProvider {
	static var previews: some View {
		FooterButtonsBlock()
	}
}
