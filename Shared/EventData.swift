//
//  EventData.swift
//  myapp
//
//  Created by 조준영 on 2022/07/31.
//

import SwiftUI

class EventData: ObservableObject {

    @Published var events: [Event] = [
        Event(symbol: "gift.fill",
              color: .red,
              title: "Maya's Birthday",
              tasks: [
                EventTask(text: "Guava kombucha"),
                EventTask(text: "Paper cups and plates"),
                EventTask(text: "Cheese plate"),
                EventTask(text: "Party poppers"),
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 365)),
        Event(symbol: "theatermasks.fill",
              color: .yellow,
              title: "Pagliacci",
              tasks: [EventTask(text: "Buy new tux"),
                      EventTask(text: "Get tickets"),
                      EventTask(text: "Pick up Carmen at the airport and bring her to the show"),
                     ],
              date: Date()),
    ]
}



extension Date {
    static func from(month: Int, day: Int, year: Int) -> Date {
        var dateComponents = DateComponents()
        print(dateComponents)
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let calendar = Calendar(identifier: .gregorian)
        
        if let date = calendar.date(from: dateComponents) {
            return date
        }else {
            return Date()
        }
        
    }
    static func roundedHoursFromNow(hours: Double) -> Date {
        _ = Date(timeIntervalSinceNow: hours)
        
        
    }
}
