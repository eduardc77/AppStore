//
//  Date+Extension.swift
//  AppStore
//
//  Created by Eduard Caziuc on 22.12.2022.
//

import Foundation

extension Date {
	func toFullDateFormat() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "EEEE, MMMM dd"
		return dateFormatter.string(from: self)
	}

	func toWeekDayFormat() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateStyle = .medium
		dateFormatter.doesRelativeDateFormatting = true
		return dateFormatter.string(from: self)
	}

}
