//
//  SectionHeaderExtendedBlock.swift
//  AppStore
//
//  Created by Eduard Caziuc on 23.12.2022.
//

import SwiftUI

struct SectionHeaderExtendedBlock: View {
	var title: String = "Title"
	
	var body: some View {
		VStack {
			Divider()
			
			HStack {
				Text(title)
					.font(.title3.weight(.bold))
				
				Spacer()
				
				Button("See All") {}
			}
		}
	}
}

struct SectionHeaderExtendedBlock_Previews: PreviewProvider {
	static var previews: some View {
		SectionHeaderExtendedBlock()
	}
}
