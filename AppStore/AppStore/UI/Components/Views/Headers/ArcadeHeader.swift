//
//  ArcadeHeader.swift
//  AppStore
//
//  Created by Eduard Caziuc on 23.12.2022.
//

import SwiftUI

struct ArcadeHeader: View {
	@Environment (\.colorScheme) var colorScheme: ColorScheme
	@State var isAccountViewPresented = false

	var body: some View {
		VStack(spacing: 12) {
			AccountButton(isAccountViewPresented: $isAccountViewPresented)
				.padding(.top, 80)
				.frame(maxWidth: .infinity, alignment: .trailing)

			Spacer()

			Group {
				Text("Arcade")
					.foregroundColor(colorScheme == .light ? Color(.systemGray5) : .secondary)
					.font(.title2.weight(.medium))
				Text(
				"""
				Play 200+ games.
				No in-app purchases.
				No ads.
				"""
				)
				.font(.title2.weight(.medium))
				.multilineTextAlignment(.center)
				.foregroundColor(.white)

				PrimaryButton(title: "Try It Free")

				Text("1 month free, then $6.66/month.")
					.font(.footnote)
					.foregroundColor(colorScheme == .light ? Color(.systemGray5) : .secondary)
					.padding(.bottom, 32)
			}
			.padding(.horizontal, 24)
		}
		.padding(.horizontal, 24)
		.frame(height: UIScreen.main.bounds.height * 0.75)
		
		.background {
			ParallaxHeaderView()
		}
		.padding(.bottom, 16)
	}
}


struct ArcadeHeader_Previews: PreviewProvider {
	static var previews: some View {
		ArcadeHeader()
	}
}
