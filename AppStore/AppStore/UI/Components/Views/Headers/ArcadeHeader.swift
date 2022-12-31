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
		VStack(spacing: 12) {
			AccountButton(isAccountViewPresented: $isAccountViewPresented)
				.padding(.top, 80)
				.frame(maxWidth: .infinity, alignment: .trailing)

			Spacer()

			Group {
				Text(" Arcade")
					.foregroundColor(Color(.lightGray))
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
					.foregroundColor(Color(.lightGray))
					.padding(.bottom, 32)
			}
			.padding(.horizontal, 46)
		}
		.padding(.horizontal, 24)
		.frame(height: UIScreen.main.bounds.height * 0.75)
		
		.background {
			ParallaxHeaderView()
		}
	}
}


struct ArcadeHeader_Previews: PreviewProvider {
	static var previews: some View {
		ArcadeHeader()
	}
}
