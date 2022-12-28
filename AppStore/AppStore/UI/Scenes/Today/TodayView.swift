//
//  TodayView.swift
//  AppStore
//
//  Created by Eduard Caziuc on 18.12.2022.
//

import SwiftUI

struct TodayView: View {
	@State var isAccountViewPresented = false

	var body: some View {
		ScrollView {
			ForEach(Range(0...4), id: \.self) { index in
				index == 0 ? sectionHeader(at: index, hasAccountView: true) : sectionHeader(at: index)
				AppCarouselExtraLargeBlock()
			}
		}
	}

}

// MARK: - Subviews

private extension TodayView {
   @ViewBuilder
	func sectionHeader(at index: Int, hasAccountView: Bool = false) -> some View {
		VStack {
			Text(Calendar.current.date(byAdding: .day, value: index, to: Date())?.toFullDateFormat() ?? "")
				.font(.subheadline)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading)
				.foregroundColor(.secondary)

			HStack(spacing: 0) {
				Text(Calendar.current.date(byAdding: .day, value: index, to: Date())?.toWeekDayFormat() ?? "")
					.font(.title)
					.bold()
					.padding(.leading)

				if hasAccountView {
					Spacer()

					AccountButton(isAccountViewPresented: $isAccountViewPresented)
						.padding(.trailing)
				}
			}
			.frame(maxWidth: .infinity, alignment: .leading)
		}
		.padding(.top, 32)
	}
}


struct TodayView_Previews: PreviewProvider {
	static var previews: some View {
		TodayView()
	}
}
