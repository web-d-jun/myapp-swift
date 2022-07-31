//
//  EventTask.swift
//  myapp
//
//  Created by 조준영 on 2022/07/31.
//

import Foundation

struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
