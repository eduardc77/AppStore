//
//  SuggestedAppsBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 20.12.2022.
//

import SwiftUI

struct SuggestedAppsBlock: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("Suggested")
				.font(.title3)
				.bold()
			
			ForEach(Range(0...5), id: \.self) {_ in
				Divider()
				AppSmallCard1()
					.padding(.vertical, 10)
					.frame(height: 60)
			}
		}
		.padding(20)
	}
}


struct SuggestedAppsBlock_Previews: PreviewProvider {
	static var previews: some View {
		SuggestedAppsBlock()
	}
}
