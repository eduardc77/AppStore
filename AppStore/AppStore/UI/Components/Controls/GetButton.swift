//
//  GetButton.swift
//  AppStore
//
//  Created by Eduard Caziuc on 21.12.2022.
//


import SwiftUI

struct GetButton: View {
	var title: String = "GET"
	
	var body: some View {
		Button(title) {}
			.font(Font.system(.caption).bold())
			.padding(.horizontal, 24)
			.padding(.vertical, 6)
			.background(Color(UIColor.systemGray6))
			.clipShape(Capsule())
	}
}


struct GetButton_Previews: PreviewProvider {
	static var previews: some View {
		GetButton()
	}
}
