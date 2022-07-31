//
//  DatePlannerApp.swift
//  myapp
//
//  Created by 조준영 on 2022/07/31.
//

import SwiftUI

@main
struct DatePlannerApp: App {
    @StateObject private var eventData = EventData()

    var body: some Scene {
        WindowGroup {
            NavigationView {
//                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)
            }
            .environmentObject(eventData)

        }
    }
}
