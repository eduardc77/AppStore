//
//  AccountButton.swift
//  AppStore
//
//  Created by Eduard Caziuc on 18.12.2022.
//

import SwiftUI

struct AccountButton: View {
	@Binding var isAccountViewPresented: Bool
	
	var body: some View {
		Button(action: {
			isAccountViewPresented = true
		}) {
			Image(systemName: "person.crop.circle.fill")
				.font(.title)
				.imageScale(.medium)
				.foregroundColor(.secondary)
		}
		.sheet(isPresented: self.$isAccountViewPresented) {
			AccountView()
		}
	}
}


struct AccountButton_Previews: PreviewProvider {
	static var previews: some View {
		AccountButton(isAccountViewPresented: .constant(false))
			.previewLayout(.sizeThatFits)
	}
}
