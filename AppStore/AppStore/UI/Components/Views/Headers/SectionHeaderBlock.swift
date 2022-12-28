//
//  SectionHeaderBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 23.12.2022.
//

import SwiftUI

struct SectionHeaderBlock: View {
	var title: String = "Title"
	
	var body: some View {
		VStack(alignment: .leading) {
			Divider()
			HStack {
				Text(title)
					.font(.title3)
					.bold()
			}
		}
	}
}


struct SectionHeaderBlock_Previews: PreviewProvider {
	static var previews: some View {
		SectionHeaderBlock()
	}
}
