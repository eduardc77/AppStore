//
//  ArcadeHeader.swift
//  AppStore
//
//  Created by Eduard Caziuc on 23.12.2022.
//

import SwiftUI

struct ArcadeHeader: View {
	@State var isAccountViewPresented = false

	var body: some View {
		VStack(spacing: 20) {
			AccountButton(isAccountViewPresented: $isAccountViewPresented)
				.padding(.top, 64)
				.frame(maxWidth: .infinity, alignment: .trailing)

			Spacer()

			Text(" Arcade")

			Text("""
              Unlimited access to
              100+ ad-free games.
              No in-app purchases.
              """)
			.font(.title)
			.fontWeight(.bold)

			DefaultButton(title: "Try It Free")

			Text("One month free, then $4.99/month")
				.font(.caption)
				.foregroundColor(.secondary)
				.padding(.bottom, 32)
		}
		.padding(.horizontal, 32)
		.background(Color(.systemGray2))
		.frame(height: UIScreen.main.bounds.height * 0.75)

	}
}


struct ArcadeHeader_Previews: PreviewProvider {
	static var previews: some View {
		ArcadeHeader()
	}
}
